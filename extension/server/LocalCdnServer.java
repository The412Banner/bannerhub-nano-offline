package app.revanced.extension.gamehub.server;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.Environment;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import fi.iki.elonen.NanoHTTPD.Response;
import fi.iki.elonen.NanoHTTPD.Response.Status;

import static fi.iki.elonen.NanoHTTPD.newFixedLengthResponse;

/**
 * Serves component binary files (.wcp / .tzst) from the user's local storage.
 * Search order:
 *   1. context.getFilesDir()/components/&lt;file&gt;
 *   2. context.getExternalFilesDir(null)/components/&lt;file&gt;
 *   3. /sdcard/BannerHub/components/&lt;file&gt;
 *   4. APK assets/local-mirror/components-cdn/&lt;file&gt; (bundled fallback)
 *
 * HTTP Range support is required because Aria's HttpDThreadTaskAdapter
 * probes for byte-range support up front. When the server replies with a
 * plain 200 (no Accept-Ranges / no 206), Aria logs `该下载不支持断点`
 * and falls into a no-resume mode that pre-allocates a page-aligned
 * chunk (fileSize rounded down to 4096) — the actual byte count then
 * mismatches and the task is silently failed with `onTaskFail null`.
 */
final class LocalCdnServer {

    private static final String ASSET_FALLBACK_DIR = "local-mirror/components-cdn";

    private static final String TAG = "BH-NanoServer";

    private final Context ctx;

    LocalCdnServer(Context ctx) {
        this.ctx = ctx;
    }

    Response serve(String filename, String rangeHeader) {
        if (filename == null || filename.isEmpty()
                || filename.contains("..") || filename.contains("/")) {
            return newFixedLengthResponse(Status.BAD_REQUEST, "text/plain", "");
        }

        File f = locate(filename);
        if (f != null) {
            try {
                return buildResponse(new FileInputStream(f), f.length(),
                        "application/octet-stream", rangeHeader);
            } catch (IOException e) {
                Log.e(TAG, "CDN read error " + filename, e);
                return newFixedLengthResponse(Status.INTERNAL_ERROR, "text/plain", "");
            }
        }

        Response assetResp = serveFromAssets(filename, rangeHeader);
        if (assetResp != null) return assetResp;

        Log.w(TAG, "CDN 404 " + filename);
        return newFixedLengthResponse(Status.NOT_FOUND, "text/plain", "");
    }

    private Response serveFromAssets(String filename, String rangeHeader) {
        AssetManager am = ctx.getAssets();
        try {
            AssetFileDescriptor afd = am.openFd(ASSET_FALLBACK_DIR + "/" + filename);
            return buildResponse(afd.createInputStream(),
                    afd.getDeclaredLength(), guessMime(filename), rangeHeader);
        } catch (IOException e) {
            return null;
        }
    }

    private static Response buildResponse(InputStream in, long total,
                                          String mime, String rangeHeader)
            throws IOException {
        long[] range = parseRange(rangeHeader, total);
        if (range == null) {
            Response r = newFixedLengthResponse(Status.OK, mime, in, total);
            r.addHeader("Accept-Ranges", "bytes");
            return r;
        }
        long start = range[0], end = range[1];
        if (start < 0 || end >= total || start > end) {
            try { in.close(); } catch (IOException ignored) { }
            Response r = newFixedLengthResponse(
                    Status.RANGE_NOT_SATISFIABLE, "text/plain", "");
            r.addHeader("Content-Range", "bytes */" + total);
            return r;
        }
        long skipped = 0;
        while (skipped < start) {
            long s = in.skip(start - skipped);
            if (s <= 0) break;
            skipped += s;
        }
        long len = end - start + 1;
        Response r = newFixedLengthResponse(
                Status.PARTIAL_CONTENT, mime, in, len);
        r.addHeader("Content-Range", "bytes " + start + "-" + end + "/" + total);
        r.addHeader("Accept-Ranges", "bytes");
        return r;
    }

    private static long[] parseRange(String header, long total) {
        if (header == null || !header.startsWith("bytes=")) return null;
        String spec = header.substring(6).trim();
        int dash = spec.indexOf('-');
        if (dash < 0) return null;
        try {
            String sStr = spec.substring(0, dash).trim();
            String eStr = spec.substring(dash + 1).trim();
            long start, end;
            if (sStr.isEmpty()) {
                long n = Long.parseLong(eStr);
                if (n <= 0) return null;
                start = Math.max(0, total - n);
                end = total - 1;
            } else {
                start = Long.parseLong(sStr);
                end = eStr.isEmpty() ? total - 1 : Long.parseLong(eStr);
            }
            return new long[] { start, end };
        } catch (NumberFormatException ex) {
            return null;
        }
    }

    private static String guessMime(String filename) {
        String lower = filename.toLowerCase();
        if (lower.endsWith(".png")) return "image/png";
        if (lower.endsWith(".jpg") || lower.endsWith(".jpeg")) return "image/jpeg";
        if (lower.endsWith(".gif")) return "image/gif";
        if (lower.endsWith(".webp")) return "image/webp";
        if (lower.endsWith(".svg")) return "image/svg+xml";
        return "application/octet-stream";
    }

    private File locate(String filename) {
        File[] candidates = new File[] {
                new File(ctx.getFilesDir(), "components/" + filename),
                externalFilesDir(filename),
                new File(Environment.getExternalStorageDirectory(),
                        "BannerHub/components/" + filename),
        };
        for (File f : candidates) {
            if (f != null && f.isFile() && f.canRead()) return f;
        }
        return null;
    }

    private File externalFilesDir(String filename) {
        File ext = ctx.getExternalFilesDir(null);
        return ext == null ? null : new File(ext, "components/" + filename);
    }
}
