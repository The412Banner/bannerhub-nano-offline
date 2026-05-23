package app.revanced.extension.gamehub.server;

import android.app.Application;
import android.content.Context;
import android.util.Log;

import java.io.IOException;
import java.util.HashMap;

import org.json.JSONObject;

import fi.iki.elonen.NanoHTTPD;

/**
 * Embedded HTTP server that mirrors the static-route output of bannerhub-api locally.
 * The patched GameHubPrefs.getEffectiveApiUrl invokes startIfNotRunning() and returns
 * the localhost base URL, so every OkHttp/Retrofit client built downstream hits this
 * server instead of the network.
 *
 * Routes:
 *   GET /components-cdn/<filename>  -> LocalCdnServer (component .wcp/.tzst from disk)
 *   GET /<path>                     -> LocalAssetServer (assets/local-mirror/<path>)
 */
public final class BannerHubLocalServer extends NanoHTTPD {

    private static final String TAG = "BH-NanoServer";

    // Port chosen from the IANA dynamic/private range (49152-65535) — no
    // registered services here, and dev tools typically pick lower (8000s,
    // 9000s) so collisions are vanishingly rare. Specifically 51823 to avoid
    // round numbers (50000) and known utilities (49152 ephemeral start, 51234
    // debug ports). If something does happen to occupy 51823 on a device,
    // NanoHTTPD.start() throws IOException and we log "Failed to bind".
    static final int PORT = 51823;

    private static volatile BannerHubLocalServer instance;
    private static final Object LOCK = new Object();

    public static String getBaseUrl() {
        return "http://127.0.0.1:" + PORT + "/";
    }

    /** Idempotent, thread-safe. Called eagerly from App.onCreate (via reflection)
     *  AND defensively from EggGameHttpConfig.&lt;clinit&gt; (direct invoke). */
    public static void startIfNotRunning() {
        Log.i(TAG, "startIfNotRunning() invoked");
        if (instance != null && instance.isAlive()) {
            Log.i(TAG, "Already running on " + getBaseUrl());
            return;
        }
        synchronized (LOCK) {
            if (instance != null && instance.isAlive()) return;
            Context ctx = resolveAppContext();
            if (ctx == null) {
                Log.e(TAG, "Cannot resolve Application context; server not started");
                return;
            }
            try {
                BannerHubLocalServer srv = new BannerHubLocalServer(ctx, PORT);
                srv.start(NanoHTTPD.SOCKET_READ_TIMEOUT, true);
                instance = srv;
                Log.i(TAG, "Local API server started on " + getBaseUrl());
            } catch (IOException e) {
                Log.e(TAG, "Failed to bind " + getBaseUrl(), e);
            }
        }
    }

    /**
     * ActivityThread.currentApplication() — works without an explicit Context parameter.
     * Method type is fully qualified because NanoHTTPD has an inner enum
     * `NanoHTTPD.Method` (HTTP verbs) that shadows java.lang.reflect.Method
     * inside this subclass.
     */
    private static Context resolveAppContext() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            java.lang.reflect.Method m = at.getMethod("currentApplication");
            Object app = m.invoke(null);
            if (app instanceof Application) {
                return ((Application) app).getApplicationContext();
            }
        } catch (Throwable t) {
            Log.w(TAG, "ActivityThread.currentApplication() reflection failed", t);
        }
        return null;
    }

    private final LocalAssetServer assetServer;
    private final LocalCdnServer cdnServer;

    private BannerHubLocalServer(Context ctx, int port) {
        super("127.0.0.1", port);
        this.assetServer = new LocalAssetServer(ctx);
        this.cdnServer = new LocalCdnServer(ctx);
    }

    @Override
    public Response serve(IHTTPSession session) {
        String path = session.getUri();
        // Drain request body for non-GET/HEAD methods. NanoHTTPD requires
        // parseBody() to be called on POST/PUT/DELETE etc., otherwise the
        // socket stalls and the client times out — even though every endpoint
        // we mirror serves static content keyed only on the URL path. Drake.Net
        // posts most BannerHub calls (EnvLayerRepository.fetchEnvTabs, etc.),
        // so without this drain the env-setting screen hangs indefinitely and
        // game launch never gets the data it needs.
        //
        // For application/json bodies, NanoHTTPD 2.3.1 puts the raw body in the
        // map under key "postData" — used below by the executeScript dispatch.
        HashMap<String, String> bodyFiles = new HashMap<>();
        Method m = session.getMethod();
        if (m != null && m != Method.GET && m != Method.HEAD) {
            try {
                session.parseBody(bodyFiles);
            } catch (Throwable ignored) {
                // best-effort drain; bodyFiles may end up empty
            }
        }
        // /simulator/executeScript dispatch: the live bannerhub-api Worker
        // routes this single endpoint to one of four static variants based
        // on the POST body's gpu_vendor + game_type. Without dispatch on our
        // side, the bare path returns 404 and EnvLayerRepository.getGameConfig
        // ByScript throws ConvertException → tap-Launch silent-fails.
        if (m == Method.POST && "/simulator/executeScript".equals(path)) {
            path = "/simulator/executeScript/" + executeScriptSuffix(bodyFiles.get("postData"));
        }
        try {
            if (path.startsWith("/components-cdn/")) {
                String rangeHeader = session.getHeaders() != null
                        ? session.getHeaders().get("range") : null;
                return cdnServer.serve(
                        path.substring("/components-cdn/".length()), rangeHeader);
            }
            return assetServer.serve(path);
        } catch (Throwable t) {
            Log.e(TAG, "Handler error for " + path, t);
            return newFixedLengthResponse(Response.Status.INTERNAL_ERROR,
                    "text/plain", "internal error");
        }
    }

    /** Mirrors bannerhub-worker.js: gpu_vendor contains "qualcomm" picks the
     *  qualcomm variant, otherwise generic; game_type === 0 appends _steam. */
    static String executeScriptSuffix(String jsonBody) {
        String gpu = "generic";
        boolean steam = false;
        if (jsonBody != null && !jsonBody.isEmpty()) {
            try {
                JSONObject o = new JSONObject(jsonBody);
                String vendor = o.optString("gpu_vendor", "").toLowerCase();
                if (vendor.contains("qualcomm")) gpu = "qualcomm";
                if (o.has("game_type") && o.optInt("game_type", -1) == 0) steam = true;
            } catch (Throwable ignored) {
                // malformed body — fall through to generic default
            }
        }
        return steam ? gpu + "_steam" : gpu;
    }
}
