package app.revanced.extension.gamehub;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Sequential downloader for a single ContainerInfo: wine archive then sub_data.
 *
 * Uses raw HttpURLConnection (NOT the app's patched OkHttp client or Aria) so
 * the offline-mode "lie about connectivity" patches that keep game launches
 * working in airplane mode don't accidentally tunnel this through stale
 * caches or short-circuit on a faked offline state. We need REAL internet
 * here — ContainerLibraryActivity is responsible for refusing to start the
 * download when the device is offline.
 *
 * MD5 verification:
 *  - Wine archive: verified against {@code ContainerInfo.fileMd5} (this IS a
 *    binary checksum of the .tar.zst on the mirror — catches corrupt CDN).
 *  - sub_data: NOT verified. {@code ContainerInfo.subFileMd5} is the app's
 *    install-time strict-check value against the EXTRACTED wineprefix, not a
 *    binary checksum of the .tzst. See known-containers.json header comment
 *    and memory project_bannerhub_api_proton_x64_subdata_fix.
 *
 * Threading: caller owns the thread. {@link #download} runs synchronously on
 * whichever thread invokes it. ContainerLibraryActivity wraps the call in a
 * background Thread and dispatches ProgressListener callbacks back to the
 * UI thread.
 */
public final class ContainerDownloader {

    private static final String TAG = "BH-Downloader";
    private static final int CONNECT_TIMEOUT_MS = 15000;
    private static final int READ_TIMEOUT_MS = 30000;
    private static final int BUFFER_SIZE = 64 * 1024;

    private final Context ctx;
    private volatile boolean cancelled = false;

    public ContainerDownloader(Context ctx) {
        this.ctx = ctx;
    }

    public void cancel() {
        cancelled = true;
    }

    /** Synchronously download both archives, verify MD5 on the wine archive,
     *  atomic-rename into final filenames, and append the catalog entry.
     *  Returns true on success, false on any error (already reported to the
     *  listener; partial files cleaned up). */
    public boolean download(ContainerInfo c, ProgressListener listener) {
        File wineDst = ContainerLibrary.cdnFile(ctx, c.fileName);
        File subDst  = ContainerLibrary.cdnFile(ctx, c.subFileName);

        File parent = wineDst.getParentFile();
        if (parent != null && !parent.isDirectory() && !parent.mkdirs()) {
            listener.onError("create dir failed: " + parent);
            return false;
        }

        File wineTmp = new File(parent, c.fileName + ".tmp");
        File subTmp  = new File(parent, c.subFileName + ".tmp");

        try {
            listener.onPhase("Downloading wine binaries");
            if (!downloadOne(c.downloadUrl, wineTmp, c.fileSize, c.fileName, listener)) {
                cleanup(wineTmp, subTmp);
                return false;
            }
            listener.onPhase("Verifying MD5");
            String actual = md5(wineTmp);
            if (actual == null || !actual.equalsIgnoreCase(c.fileMd5)) {
                listener.onError("MD5 mismatch: expected " + c.fileMd5
                        + ", got " + actual);
                cleanup(wineTmp, subTmp);
                return false;
            }
            listener.onPhase("Downloading wineprefix");
            if (!downloadOne(c.subDownloadUrl, subTmp, -1L, c.subFileName, listener)) {
                cleanup(wineTmp, subTmp);
                return false;
            }
            // Atomic move into final names. On the same filesystem rename is
            // a metadata-only op; failure is vanishingly rare.
            if (!wineTmp.renameTo(wineDst)) {
                listener.onError("rename wine archive failed");
                cleanup(wineTmp, subTmp);
                return false;
            }
            if (!subTmp.renameTo(subDst)) {
                // Roll back the first rename so listAll() doesn't see a
                // half-installed entry.
                if (!wineDst.delete()) {
                    Log.w(TAG, "rollback: failed to delete " + wineDst);
                }
                cleanup(wineTmp, subTmp);
                listener.onError("rename sub_data failed");
                return false;
            }
            listener.onPhase("Updating catalog");
            try {
                ContainerLibrary.addToCatalog(ctx, c);
            } catch (IOException e) {
                // Roll back both files so the next listAll() returns NOT_INSTALLED
                // and the user can retry cleanly.
                if (!wineDst.delete()) Log.w(TAG, "rollback: " + wineDst);
                if (!subDst.delete())  Log.w(TAG, "rollback: " + subDst);
                listener.onError("catalog update failed: " + e.getMessage());
                return false;
            }
            listener.onComplete(c);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "download() unexpected error", t);
            cleanup(wineTmp, subTmp);
            listener.onError("unexpected error: " + t.getMessage());
            return false;
        }
    }

    private boolean downloadOne(String url, File dst, long expectedSize,
                                String label, ProgressListener listener) {
        HttpURLConnection conn = null;
        InputStream in = null;
        OutputStream out = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setConnectTimeout(CONNECT_TIMEOUT_MS);
            conn.setReadTimeout(READ_TIMEOUT_MS);
            conn.setInstanceFollowRedirects(true);
            int code = conn.getResponseCode();
            if (code < 200 || code >= 300) {
                listener.onError("HTTP " + code + " for " + url);
                return false;
            }
            long total = expectedSize > 0 ? expectedSize : conn.getContentLengthLong();
            in = conn.getInputStream();
            out = new FileOutputStream(dst);
            byte[] buf = new byte[BUFFER_SIZE];
            long done = 0L;
            int n;
            while ((n = in.read(buf)) > 0) {
                if (cancelled) {
                    listener.onError("cancelled");
                    return false;
                }
                out.write(buf, 0, n);
                done += n;
                listener.onProgress(done, total, label);
            }
            ((FileOutputStream) out).getFD().sync();
            return true;
        } catch (IOException e) {
            listener.onError("network error: " + e.getMessage());
            return false;
        } finally {
            closeQuietly(in);
            closeQuietly(out);
            if (conn != null) conn.disconnect();
        }
    }

    private static String md5(File f) {
        try (InputStream in = new FileInputStream(f)) {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] buf = new byte[BUFFER_SIZE];
            int n;
            while ((n = in.read(buf)) > 0) md.update(buf, 0, n);
            byte[] digest = md.digest();
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (IOException | NoSuchAlgorithmException e) {
            Log.e(TAG, "md5 failed", e);
            return null;
        }
    }

    private static void cleanup(File... fs) {
        for (File f : fs) {
            if (f != null && f.exists() && !f.delete()) {
                Log.w(TAG, "cleanup: failed to delete " + f);
            }
        }
    }

    private static void closeQuietly(java.io.Closeable c) {
        if (c == null) return;
        try { c.close(); } catch (IOException ignored) { }
    }
}
