package app.revanced.extension.gamehub.server;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import fi.iki.elonen.NanoHTTPD.Response;
import fi.iki.elonen.NanoHTTPD.Response.Status;

import static fi.iki.elonen.NanoHTTPD.newFixedLengthResponse;

/** Serves files from the local-mirror tree.
 *  Lookup order:
 *    1. {@code files/local-mirror/<path>} (writable runtime mirror; populated
 *       lazily by ContainerLibrary.addToCatalog and similar mutators)
 *    2. {@code assets/local-mirror/<path>} (read-only APK assets)
 *  This lets feature code mutate individual catalog files at runtime by
 *  copying them into the writable mirror and editing them there, without
 *  needing a first-launch bulk extract. */
final class LocalAssetServer {

    private static final String TAG = "BH-NanoServer";
    private static final String ASSET_ROOT = "local-mirror";
    static final String FILES_MIRROR_DIR = "local-mirror";

    private final Context ctx;

    LocalAssetServer(Context ctx) {
        this.ctx = ctx;
    }

    Response serve(String path) {
        String clean = normalize(path);
        if (clean == null) {
            return newFixedLengthResponse(Status.BAD_REQUEST, "text/plain", "");
        }

        File override = new File(ctx.getFilesDir(), FILES_MIRROR_DIR + "/" + clean);
        if (override.isFile() && override.canRead()) {
            try (InputStream in = new FileInputStream(override)) {
                byte[] bytes = readAll(in);
                return newFixedLengthResponse(Status.OK,
                        "application/json; charset=utf-8",
                        new String(bytes, "UTF-8"));
            } catch (IOException e) {
                Log.w(TAG, "files-mirror read failed, falling back to asset: " + clean, e);
            }
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

    /** Read a normalized path as a UTF-8 string. Used by routes that need to
     *  transform the payload before responding (e.g. type-filter on
     *  getComponentList). Same files-first / asset-fallback chain as serve().
     *  Returns null on missing/invalid path. */
    String readAsString(String path) {
        String clean = normalize(path);
        if (clean == null) return null;

        File override = new File(ctx.getFilesDir(), FILES_MIRROR_DIR + "/" + clean);
        if (override.isFile() && override.canRead()) {
            try (InputStream in = new FileInputStream(override)) {
                return new String(readAll(in), "UTF-8");
            } catch (IOException e) {
                Log.w(TAG, "files-mirror readAsString failed, falling back to asset: " + clean, e);
            }
        }

        try (InputStream in = ctx.getAssets().open(ASSET_ROOT + "/" + clean)) {
            return new String(readAll(in), "UTF-8");
        } catch (IOException e) {
            Log.d(TAG, "404 (readAsString) " + clean);
            return null;
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
