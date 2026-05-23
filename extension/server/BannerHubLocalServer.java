package app.revanced.extension.gamehub.server;

import android.app.Application;
import android.content.Context;
import android.util.Log;

import java.io.IOException;

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

    /** Idempotent, thread-safe. Called from the patched getEffectiveApiUrl. */
    public static void startIfNotRunning() {
        if (instance != null && instance.isAlive()) return;
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
        try {
            if (path.startsWith("/components-cdn/")) {
                return cdnServer.serve(path.substring("/components-cdn/".length()));
            }
            return assetServer.serve(path);
        } catch (Throwable t) {
            Log.e(TAG, "Handler error for " + path, t);
            return newFixedLengthResponse(Response.Status.INTERNAL_ERROR,
                    "text/plain", "internal error");
        }
    }
}
