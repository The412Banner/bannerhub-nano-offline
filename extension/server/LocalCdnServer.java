package app.revanced.extension.gamehub.server;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import fi.iki.elonen.NanoHTTPD.Response;
import fi.iki.elonen.NanoHTTPD.Response.Status;

import static fi.iki.elonen.NanoHTTPD.newChunkedResponse;
import static fi.iki.elonen.NanoHTTPD.newFixedLengthResponse;

/**
 * Serves component binary files (.wcp / .tzst) from the user's local storage.
 * Search order:
 *   1. context.getFilesDir()/components/&lt;file&gt;
 *   2. context.getExternalFilesDir(null)/components/&lt;file&gt;
 *   3. /sdcard/BannerHub/components/&lt;file&gt;
 *   4. APK assets/local-mirror/components-cdn/&lt;file&gt; (bundled fallback for
 *      catalog-referenced static assets like the platform-card background)
 *
 * Files arrive here via the in-app Component Manager (.wcp ingestion) for 1-3.
 * The asset fallback is populated by prepare_local_mirror.py --overrides-dir.
 */
final class LocalCdnServer {

    private static final String ASSET_FALLBACK_DIR = "local-mirror/components-cdn";

    private static final String TAG = "BH-NanoServer";

    private final Context ctx;

    LocalCdnServer(Context ctx) {
        this.ctx = ctx;
    }

    Response serve(String filename) {
        if (filename == null || filename.isEmpty()
                || filename.contains("..") || filename.contains("/")) {
            return newFixedLengthResponse(Status.BAD_REQUEST, "text/plain", "");
        }

        File f = locate(filename);
        if (f != null) {
            try {
                InputStream in = new FileInputStream(f);
                Response r = newChunkedResponse(Status.OK,
                        "application/octet-stream", in);
                r.addHeader("Content-Length", Long.toString(f.length()));
                return r;
            } catch (IOException e) {
                Log.e(TAG, "CDN read error " + filename, e);
                return newFixedLengthResponse(Status.INTERNAL_ERROR, "text/plain", "");
            }
        }

        Response assetResp = serveFromAssets(filename);
        if (assetResp != null) return assetResp;

        Log.w(TAG, "CDN 404 " + filename);
        return newFixedLengthResponse(Status.NOT_FOUND, "text/plain", "");
    }

    /** Asset fallback for catalog-referenced static images (logos, backgrounds)
     *  that aren't part of the user-managed .wcp component set. */
    private Response serveFromAssets(String filename) {
        AssetManager am = ctx.getAssets();
        try {
            InputStream in = am.open(ASSET_FALLBACK_DIR + "/" + filename);
            return newChunkedResponse(Status.OK, guessMime(filename), in);
        } catch (IOException e) {
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
