package app.revanced.extension.gamehub.server;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import fi.iki.elonen.NanoHTTPD.Response;
import fi.iki.elonen.NanoHTTPD.Response.Status;

import static fi.iki.elonen.NanoHTTPD.newFixedLengthResponse;

/** Serves files from APK assets/local-mirror/&lt;path&gt;. */
final class LocalAssetServer {

    private static final String TAG = "BH-NanoServer";
    private static final String ASSET_ROOT = "local-mirror";

    private final Context ctx;

    LocalAssetServer(Context ctx) {
        this.ctx = ctx;
    }

    Response serve(String path) {
        String clean = normalize(path);
        if (clean == null) {
            return newFixedLengthResponse(Status.BAD_REQUEST, "text/plain", "");
        }

        AssetManager am = ctx.getAssets();
        try (InputStream in = am.open(ASSET_ROOT + "/" + clean)) {
            byte[] bytes = readAll(in);
            return newFixedLengthResponse(Status.OK,
                    "application/json; charset=utf-8",
                    new String(bytes, "UTF-8"));
        } catch (IOException e) {
            Log.d(TAG, "404 " + clean);
            return newFixedLengthResponse(Status.NOT_FOUND, "text/plain", "");
        }
    }

    /** Strip leading slash, drop query string, reject traversal. */
    private static String normalize(String path) {
        if (path == null) return null;
        int q = path.indexOf('?');
        if (q >= 0) path = path.substring(0, q);
        if (path.startsWith("/")) path = path.substring(1);
        if (path.isEmpty()) return null;
        if (path.contains("..")) return null;
        return path;
    }

    private static byte[] readAll(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[4096];
        int n;
        while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
        return out.toByteArray();
    }
}
