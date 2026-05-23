/*
 * EOS-marker detection for the Epic library "EOS" badge.
 *
 * Companion to BhEpicLaunchArgs / BhEpicSidecar — those provide the auth
 * functionality, this provides the visibility UX so users can see at a
 * glance which Epic games will use BannerHub's EOS auth integration.
 *
 * Credits: this file's marker list (EOSSDK-Win64-Shipping.dll,
 * EOSOVH-Win64-Shipping.dll, EOSBootstrapper.exe) follows the same set
 * The GameNative Team uses to identify EOS-integrated games. See PR #1286
 * (https://github.com/utkarshdalal/GameNative/pull/1286).
 */
package app.revanced.extension.gamehub;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import java.io.File;

/**
 * Detects whether an installed Epic game ships Epic Online Services SDK files.
 * Used by the library list and detail page to render an "EOS" badge so users
 * can see at a glance which games will use BannerHub's EOS auth integration.
 *
 * Detection runs at install completion (called from BhDownloadService.runEpic)
 * and lazily on first detail-page open for games installed before this feature
 * existed (so upgraders don't have to reinstall).
 *
 * Storage in {@code bh_epic_prefs}:
 *   {@code epic_uses_eos_<appName>} (boolean) — true if EOS markers found
 *   {@code epic_eos_scanned_<appName>} (boolean) — true once scan has been run
 */
public final class BhEpicEosDetector {

    private static final String TAG = "BH_EPIC_EOS";

    /**
     * Files whose presence definitively indicates the game uses EOS. Any one of
     * these in the install dir tree is enough to mark the game.
     */
    private static final String[] EOS_MARKERS = {
            "EOSSDK-Win64-Shipping.dll",
            "EOSSDK-Win32-Shipping.dll",
            "EOSOVH-Win64-Shipping.dll",
            "EOSBootstrapper.exe",
    };

    /** Limits the recursive walk so a giant install can't stall a scan. */
    private static final int MAX_FILES_SCANNED = 50_000;

    private BhEpicEosDetector() {}

    /**
     * Has this appName been scanned at least once?
     */
    public static boolean hasBeenScanned(Context ctx, String appName) {
        if (appName == null || appName.isEmpty()) return false;
        return ctx.getSharedPreferences("bh_epic_prefs", 0)
                .getBoolean("epic_eos_scanned_" + appName, false);
    }

    /**
     * Read cached EOS flag. Returns false if never scanned, or scanned and no
     * markers found. Callers should use {@link #hasBeenScanned} to distinguish
     * "definitely not EOS" from "haven't checked yet".
     */
    public static boolean isEosCached(Context ctx, String appName) {
        if (appName == null || appName.isEmpty()) return false;
        return ctx.getSharedPreferences("bh_epic_prefs", 0)
                .getBoolean("epic_uses_eos_" + appName, false);
    }

    /**
     * Synchronously walk the install dir, write the result. Runs the scan even
     * if a previous result is cached (use {@link #scanIfNeeded} for the lazy
     * path). Bounded by {@link #MAX_FILES_SCANNED}; falls back to false if hit.
     */
    public static boolean scan(Context ctx, String appName, File installDir) {
        if (ctx == null || appName == null || appName.isEmpty()) return false;
        boolean usesEos = false;
        if (installDir != null && installDir.isDirectory()) {
            int[] count = {0};
            usesEos = walk(installDir, count);
        }
        SharedPreferences sp = ctx.getSharedPreferences("bh_epic_prefs", 0);
        sp.edit()
                .putBoolean("epic_uses_eos_" + appName, usesEos)
                .putBoolean("epic_eos_scanned_" + appName, true)
                .apply();
        Log.i(TAG, "scan(" + appName + ") at " + (installDir == null ? "<null>" : installDir.getAbsolutePath())
                + " → usesEos=" + usesEos);
        return usesEos;
    }

    /**
     * Run the scan asynchronously. Useful from UI threads where an Activity
     * doesn't want to block on filesystem walk.
     */
    public static void scanAsync(Context ctx, String appName, File installDir, Runnable onDone) {
        new Thread(() -> {
            try {
                scan(ctx, appName, installDir);
            } catch (Throwable t) {
                Log.w(TAG, "scanAsync failed for " + appName, t);
            }
            if (onDone != null) {
                try { onDone.run(); } catch (Throwable ignored) {}
            }
        }, "bh-eos-scan-" + appName).start();
    }

    /**
     * Lazy-scan: only runs if no scan has been recorded yet for this appName.
     * Returns immediately on cache hit. Use this from detail-page open to give
     * upgraders' previously-installed games a flag without reinstalling.
     */
    public static void scanIfNeeded(Context ctx, String appName, File installDir, Runnable onDone) {
        if (hasBeenScanned(ctx, appName)) {
            if (onDone != null) onDone.run();
            return;
        }
        scanAsync(ctx, appName, installDir, onDone);
    }

    private static boolean walk(File dir, int[] count) {
        File[] entries = dir.listFiles();
        if (entries == null) return false;
        for (File f : entries) {
            if (count[0]++ > MAX_FILES_SCANNED) return false;
            if (f.isDirectory()) {
                if (walk(f, count)) return true;
            } else {
                String name = f.getName();
                for (String marker : EOS_MARKERS) {
                    if (marker.equalsIgnoreCase(name)) return true;
                }
            }
        }
        return false;
    }
}
