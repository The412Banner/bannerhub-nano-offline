package app.revanced.extension.gamehub.server;

import android.content.Context;
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
 *
 * Files arrive here via the in-app Component Manager (.wcp ingestion).
 */
final class LocalCdnServer {

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
        if (f == null) {
            Log.w(TAG, "CDN 404 " + filename);
            return newFixedLengthResponse(Status.NOT_FOUND, "text/plain", "");
        }

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
