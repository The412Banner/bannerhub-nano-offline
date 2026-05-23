/*
 * Epic Online Services launch-argument injection for BannerHub.
 *
 * Credits: Java port of the EOS launch-args work by The GameNative Team
 * (https://github.com/utkarshdalal/GameNative). Based on PR #1286 / commit
 * cbea7f7 ("Feat/eos overlay utkarsh"), which introduced -EpicPortal,
 * -epicusername, -epicuserid, -epicsandboxid, -epiclocale, -epicdeploymentid
 * plus the -AUTH_LOGIN / -AUTH_PASSWORD / -AUTH_TYPE exchange-code triple.
 * Massive thanks to utkarshdalal and the GameNative contributors.
 *
 * This file ships Phase 1 (online auth handshake). Phase 2 (in-game EOS
 * overlay UI for friends / notifications / achievements) is still pending.
 *
 * Reference: https://github.com/utkarshdalal/GameNative/commit/cbea7f70be46e6f4a99a7e92db13c9b96add9c1c
 */
package app.revanced.extension.gamehub;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;

import java.util.List;
import java.util.Map;

/**
 * Inserts Epic Online Services launch parameters into the Wine command line for
 * games installed via BannerHub's Epic store integration. Called from a smali
 * patch in {@code WineHelper$Companion.b(...)} — the single chokepoint for all
 * Wine launches in GameHub.
 *
 * Phase 1 of EOS support: enables online auth so EOS-integrated games can
 * connect to Epic's services (multiplayer, friends, achievements). The in-game
 * EOS overlay (notifications popup) is Phase 2 and not implemented here.
 *
 * Lookup chain:
 *   1. Walk {@code bh_epic_prefs} for any {@code epic_dir_<appName>} whose
 *      stored install dir is a prefix of the launch exePath. That tells us the
 *      launch is for an Epic game and gives us the appName.
 *   2. Read {@code epic_meta_namespace_<appName>}, {@code epic_meta_catalog_<appName>},
 *      {@code epic_meta_title_<appName>} (written at install kickoff in v3.6.0+).
 *   3. Read displayName + accountId from {@link EpicCredentialStore}.
 *   4. Read cached deploymentId via {@link BhEpicSidecar#getCachedDeploymentId}.
 *   5. If the deploymentId cache is empty/stale, fire an async refresh — next launch will have it.
 *   6. Append the Epic launch args to the in-progress args list.
 *
 * If any lookup fails, the method silently no-ops — non-Epic launches and pre-v3.6.0
 * Epic installs (no metadata persisted) keep their existing behavior.
 */
public final class BhEpicLaunchArgs {

    private static final String TAG = "BH_EPIC_LAUNCH";

    private BhEpicLaunchArgs() {}

    public static void maybeInject(List<String> args, String exePath) {
        Log.i(TAG, "maybeInject called: exePath=" + (exePath == null ? "<null>" : exePath));
        if (args == null || exePath == null || exePath.isEmpty()) {
            Log.w(TAG, "maybeInject early-out: null/empty args or exePath");
            return;
        }

        try {
            Application app = currentApplication();
            if (app == null) {
                Log.w(TAG, "current Application unavailable; skipping Epic-args injection");
                return;
            }

            SharedPreferences epicPrefs = app.getSharedPreferences("bh_epic_prefs", 0);

            // Step 1: find the appName whose install dir owns this exePath.
            //
            // Tricky: by the time we run, WineHelper has already converted exePath
            // from Unix-form ("/data/data/.../game.exe") to DOS-form ("Z:\data\data\...\game.exe").
            // We normalize both back to a comparable Unix-form before prefix-matching.
            String normalizedExe = normalize(exePath);
            String matchedAppName = null;
            for (Map.Entry<String, ?> e : epicPrefs.getAll().entrySet()) {
                String key = e.getKey();
                if (!key.startsWith("epic_dir_")) continue;
                Object v = e.getValue();
                if (!(v instanceof String)) continue;
                String dir = (String) v;
                if (dir.isEmpty()) continue;
                String normalizedDir = normalize(dir);
                if (normalizedExe.equals(normalizedDir)
                        || normalizedExe.startsWith(normalizedDir + "/")) {
                    matchedAppName = key.substring("epic_dir_".length());
                    break;
                }
            }
            if (matchedAppName == null) return; // not an Epic install — silent no-op

            // Step 2: read launch metadata
            String namespace = epicPrefs.getString("epic_meta_namespace_" + matchedAppName, "");
            String catalogId = epicPrefs.getString("epic_meta_catalog_" + matchedAppName, "");
            String title     = epicPrefs.getString("epic_meta_title_" + matchedAppName, "");

            if (namespace.isEmpty()) {
                // Pre-v3.6.0 install — metadata was never persisted.
                Log.w(TAG, "no namespace for " + matchedAppName + " (pre-v3.6.0 install?); "
                        + "skipping Epic launch args");
                return;
            }

            // Step 3: identity from EpicCredentialStore (already used everywhere else)
            EpicCredentialStore.Credentials creds = EpicCredentialStore.load(app);
            String displayName = (creds != null && creds.displayName != null && !creds.displayName.isEmpty())
                    ? creds.displayName : "EpicUser";
            String accountId   = (creds != null && creds.accountId != null && !creds.accountId.isEmpty())
                    ? creds.accountId : "0";

            // Step 4: deploymentId from cache
            String deploymentId = BhEpicSidecar.getCachedDeploymentId(app, matchedAppName);

            // Step 5: lazy refresh if cache miss / stale — affects NEXT launch
            if (deploymentId.isEmpty()) {
                BhEpicSidecar.refreshAsync(app, namespace, catalogId, matchedAppName);
            }

            // Step 6: append the Epic launch args. Mirrors upstream's EpicGameLauncher.kt.
            args.add("-EpicPortal");
            args.add("-epicusername=" + sanitize(displayName));
            args.add("-epicuserid=" + sanitize(accountId));
            args.add("-epicsandboxid=" + sanitize(namespace));
            args.add("-epiclocale=en");
            if (!deploymentId.isEmpty()) {
                args.add("-epicdeploymentid=" + sanitize(deploymentId));
            }

            // Step 7: fetch a FRESH Epic exchange code and append the AUTH triple.
            // Without this, modern EOS-integrated games show "No exchange code was
            // found, please launch from the Epic Games Launcher". Synchronous fetch
            // — codes expire in ~5min and must be fresh per launch.
            String exchangeCode = BhEpicSidecar.fetchExchangeCodeSync(app);
            if (exchangeCode != null && !exchangeCode.isEmpty()) {
                args.add("-AUTH_LOGIN=unused");
                args.add("-AUTH_PASSWORD=" + sanitize(exchangeCode));
                args.add("-AUTH_TYPE=exchangecode");
            }

            Log.i(TAG, "injected Epic launch args for " + matchedAppName
                    + " (title=" + title
                    + ", deploymentId=" + (deploymentId.isEmpty() ? "<none>" : deploymentId)
                    + ", exchangeCode=" + (exchangeCode == null || exchangeCode.isEmpty() ? "<missing>" : "<present>")
                    + ")");
        } catch (Throwable t) {
            // Defensive: never let a bug here break game launches.
            Log.w(TAG, "maybeInject failed", t);
        }
    }

    /**
     * Strip whitespace + characters that would break the Wine command line. Epic
     * IDs are always plain ASCII; display names can contain spaces — but spaces
     * are list-separators in our args list (each list element is a separate argv),
     * so a space inside displayName is fine — it stays inside one argv. We just
     * defend against newlines / null bytes that could corrupt the command line.
     */
    private static String sanitize(String s) {
        if (s == null) return "";
        return s.replace("\n", "").replace("\r", "").replace("\0", "");
    }

    /**
     * Reflectively obtain the current Application context. Used at the Wine-launch
     * chokepoint where no Activity/Service context is available. Falls back to
     * BlankJ's {@code Utils.a()} (bundled in the host APK), then to Android's
     * {@code ActivityThread.currentApplication()}.
     */
    private static Application currentApplication() {
        try {
            Class<?> utils = Class.forName("com.blankj.utilcode.util.Utils");
            Object app = utils.getMethod("a").invoke(null);
            if (app instanceof Application) return (Application) app;
        } catch (Throwable ignored) {}
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            Object app = at.getMethod("currentApplication").invoke(null);
            if (app instanceof Application) return (Application) app;
        } catch (Throwable ignored) {}
        return null;
    }

    /**
     * Normalize a path for prefix comparison: lowercase drive letter is stripped
     * (e.g. {@code Z:\foo} → {@code /foo}), backslashes become forward slashes,
     * trailing slashes are stripped. Idempotent for already-Unix paths.
     */
    private static String normalize(String path) {
        if (path == null) return "";
        String p = path.replace('\\', '/');
        // Strip drive letter prefix like "Z:" or "C:" if followed by /
        if (p.length() >= 3 && p.charAt(1) == ':' && p.charAt(2) == '/') {
            p = p.substring(2);
        } else if (p.length() == 2 && p.charAt(1) == ':') {
            p = "/";
        }
        // Strip trailing slash
        while (p.length() > 1 && p.endsWith("/")) p = p.substring(0, p.length() - 1);
        return p;
    }
}
