package app.revanced.extension.gamehub;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Backend for the in-app Container Library screen.
 *
 * Responsibilities:
 *  - Read known-containers.json (downloadable list, baked into the APK by
 *    the build workflow) AND the bundled /simulator/v2/getContainerList
 *    asset (the actual catalog the in-app picker reads via NanoHTTPD).
 *  - Merge them into a single user-facing list with per-entry State
 *    (BUNDLED / INSTALLED / NOT_INSTALLED) computed from file presence in
 *    the writable mirror dir.
 *  - Append a new entry to the writable getContainerList JSON after a
 *    successful download — lazy-copies the bundled asset to
 *    files/local-mirror/simulator/v2/getContainerList on first call.
 *
 * Path conventions:
 *  - Writable mirror root: {@code files/local-mirror/} (matches
 *    LocalAssetServer.FILES_MIRROR_DIR; that server reads files-first /
 *    asset-fallback for the same paths).
 *  - Downloaded archives: {@code files/local-mirror/components-cdn/} (matches
 *    LocalCdnServer.locate() slot 1).
 *  - Catalog file path inside the mirror: {@code simulator/v2/getContainerList}
 *    (1:1 with the asset path, so the server's path swap is identity).
 */
public final class ContainerLibrary {

    private static final String TAG = "BH-ContainerLib";

    /** Mirror root inside files/. Matches LocalAssetServer.FILES_MIRROR_DIR. */
    private static final String MIRROR_DIR = "local-mirror";

    /** Path of the catalog JSON the in-app picker actually reads. */
    private static final String CATALOG_PATH = "simulator/v2/getContainerList";

    /** Where downloaded compat-layer archives land (LocalCdnServer.locate slot 1). */
    private static final String CDN_DIR = "local-mirror/components-cdn";

    /** Known-containers asset (downloadable list). */
    private static final String KNOWN_ASSET = "local-mirror/known-containers.json";

    /** Bundled catalog asset path inside the APK. */
    private static final String BUNDLED_CATALOG_ASSET = "local-mirror/" + CATALOG_PATH;

    private ContainerLibrary() {}

    /** Build the user-facing list: bundled + downloadable, deduped by id,
     *  state-stamped. Bundled entries win on id collision (so a hypothetical
     *  future known-containers row with the same id as a bundled one wouldn't
     *  shadow the bundled flag). */
    public static List<ContainerInfo> listAll(Context ctx) {
        Map<Integer, ContainerInfo> out = new LinkedHashMap<>();
        for (ContainerInfo c : readBundled(ctx)) {
            c.state = ContainerInfo.State.BUNDLED;
            out.put(c.id, c);
        }
        for (ContainerInfo c : readKnown(ctx)) {
            if (out.containsKey(c.id)) continue;
            c.state = isInstalled(ctx, c) ? ContainerInfo.State.INSTALLED
                                          : ContainerInfo.State.NOT_INSTALLED;
            out.put(c.id, c);
        }
        return new ArrayList<>(out.values());
    }

    /** True when both archives for this container exist in
     *  files/local-mirror/components-cdn/. */
    public static boolean isInstalled(Context ctx, ContainerInfo c) {
        File wine = cdnFile(ctx, c.fileName);
        File sub  = cdnFile(ctx, c.subFileName);
        return wine.isFile() && sub.isFile();
    }

    /** Append a container entry to the writable getContainerList catalog.
     *  Lazy-copies the bundled asset to files/local-mirror/.../getContainerList
     *  on first call so subsequent edits operate on the writable copy. Atomic:
     *  writes &lt;name&gt;.tmp then renames over the live file. Idempotent — a
     *  duplicate id is detected and the call no-ops. */
    public static synchronized void addToCatalog(Context ctx, ContainerInfo c)
            throws IOException {
        File catalog = ensureWritableCatalog(ctx);

        String raw;
        try (InputStream in = new FileInputStream(catalog)) {
            raw = new String(readAll(in), "UTF-8");
        }

        JSONObject envelope;
        try {
            envelope = new JSONObject(raw);
            JSONObject data = envelope.optJSONObject("data");
            if (data == null) throw new IOException("malformed catalog: missing data");

            Object listField = data.opt("list");
            JSONArray arr;
            if (listField instanceof String) {
                arr = new JSONArray((String) listField);
            } else if (listField instanceof JSONArray) {
                arr = (JSONArray) listField;
            } else {
                arr = new JSONArray();
            }

            for (int i = 0; i < arr.length(); i++) {
                JSONObject e = arr.optJSONObject(i);
                if (e != null && e.optInt("id") == c.id) {
                    Log.i(TAG, "addToCatalog: id=" + c.id + " already present; skip");
                    return;
                }
            }
            arr.put(c.toJson());

            // Preserve the list-as-string encoding when that's how we found it
            // (5.x shape — see BannerHubLocalServer.serveComponentListFiltered).
            if (listField instanceof String) {
                data.put("list", arr.toString());
            } else {
                data.put("list", arr);
            }
            data.put("total", arr.length());
            envelope.put("data", data);
        } catch (Throwable t) {
            throw new IOException("catalog parse/append failed", t);
        }

        File tmp = new File(catalog.getParentFile(), catalog.getName() + ".tmp");
        try (FileOutputStream out = new FileOutputStream(tmp)) {
            out.write(envelope.toString().getBytes("UTF-8"));
            out.getFD().sync();
        }
        if (!tmp.renameTo(catalog)) {
            throw new IOException("rename " + tmp + " -> " + catalog + " failed");
        }
        Log.i(TAG, "addToCatalog: id=" + c.id + " " + c.name + " appended");
    }

    /** Returns the absolute destination File for a downloaded archive. Caller
     *  is responsible for mkdirs() on the parent if needed (the downloader
     *  handles that). */
    public static File cdnFile(Context ctx, String filename) {
        return new File(ctx.getFilesDir(), CDN_DIR + "/" + filename);
    }

    /** Ensure the writable catalog exists, lazy-copying from the asset on
     *  first call. Copy goes through a .tmp + rename so a concurrent
     *  LocalAssetServer read can never see a partial file. Returns the
     *  absolute path of the writable file. */
    private static File ensureWritableCatalog(Context ctx) throws IOException {
        File dst = new File(ctx.getFilesDir(), MIRROR_DIR + "/" + CATALOG_PATH);
        if (dst.isFile()) return dst;
        File parent = dst.getParentFile();
        if (parent != null && !parent.isDirectory() && !parent.mkdirs()) {
            throw new IOException("mkdirs failed: " + parent);
        }
        File tmp = new File(parent, dst.getName() + ".bootstrap.tmp");
        try (InputStream in = ctx.getAssets().open(BUNDLED_CATALOG_ASSET);
             FileOutputStream out = new FileOutputStream(tmp)) {
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
            out.getFD().sync();
        }
        if (!tmp.renameTo(dst)) {
            tmp.delete();
            throw new IOException("rename " + tmp + " -> " + dst + " failed");
        }
        Log.i(TAG, "ensureWritableCatalog: copied asset -> " + dst);
        return dst;
    }

    private static List<ContainerInfo> readKnown(Context ctx) {
        List<ContainerInfo> out = new ArrayList<>();
        AssetManager am = ctx.getAssets();
        try (InputStream in = am.open(KNOWN_ASSET)) {
            String raw = new String(readAll(in), "UTF-8");
            JSONObject root = new JSONObject(raw);
            JSONArray arr = root.optJSONArray("containers");
            if (arr == null) return out;
            for (int i = 0; i < arr.length(); i++) {
                ContainerInfo c = ContainerInfo.fromJson(arr.optJSONObject(i));
                if (c != null) out.add(c);
            }
        } catch (Throwable t) {
            Log.e(TAG, "readKnown failed", t);
        }
        return out;
    }

    /** Read the bundled getContainerList — strictly from the APK asset (NOT
     *  the writable override). The override may contain entries we've appended
     *  via addToCatalog; those should appear as INSTALLED via the known-
     *  containers path with file-presence checks, not be re-classified as
     *  BUNDLED here. data.list is a STRINGIFIED JSON array in the 5.x shape. */
    private static List<ContainerInfo> readBundled(Context ctx) {
        List<ContainerInfo> out = new ArrayList<>();
        try (InputStream in = ctx.getAssets().open(BUNDLED_CATALOG_ASSET)) {
            String raw = new String(readAll(in), "UTF-8");
            JSONObject env = new JSONObject(raw);
            JSONObject data = env.optJSONObject("data");
            if (data == null) return out;
            Object listField = data.opt("list");
            JSONArray arr;
            if (listField instanceof String) {
                arr = new JSONArray((String) listField);
            } else if (listField instanceof JSONArray) {
                arr = (JSONArray) listField;
            } else {
                return out;
            }
            for (int i = 0; i < arr.length(); i++) {
                ContainerInfo c = ContainerInfo.fromJson(arr.optJSONObject(i));
                if (c != null) out.add(c);
            }
        } catch (Throwable t) {
            Log.e(TAG, "readBundled failed", t);
        }
        return out;
    }

    private static byte[] readAll(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
        return out.toByteArray();
    }
}
