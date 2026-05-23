package app.revanced.extension.gamehub;

import android.util.Log;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/**
 * Ranks a list of CDN base URLs by HEAD-probe latency. Successful (2xx-4xx) probes
 * are preferred; ties are broken by elapsed time. Used to bias chunk downloads toward
 * the lowest-latency CDN reachable from the user's network — particularly useful in
 * regions where one CDN provider is much slower than another (e.g. Cloudflare vs
 * Akamai for Epic, or Fastly vs Highwinds for GOG).
 *
 * Java port of upstream GameNative's CdnRankingUtils.kt (commit e78d402).
 */
public final class CdnRankingUtils {

    private static final String TAG = "BH_CDN_RANK";
    private static final int PROBE_CONNECT_TIMEOUT_MS = 4000;
    private static final int PROBE_READ_TIMEOUT_MS    = 4000;

    private CdnRankingUtils() {}

    /**
     * Rank arbitrary base URLs by HEAD-probe latency. Returns a new list — input is
     * not modified. List of size 0 or 1 is returned as-is.
     */
    public static List<String> rankBaseUrlsByHeadProbe(List<String> baseUrls, String userAgent) {
        if (baseUrls == null || baseUrls.size() <= 1) return baseUrls;

        // Dedupe + trim
        List<String> urls = new ArrayList<>();
        for (String u : baseUrls) {
            if (u == null) continue;
            String trimmed = u.trim();
            if (trimmed.isEmpty()) continue;
            if (!urls.contains(trimmed)) urls.add(trimmed);
        }
        if (urls.size() <= 1) return urls;

        ExecutorService pool = Executors.newFixedThreadPool(Math.min(urls.size(), 8));
        List<Future<Probe>> futures = new ArrayList<>(urls.size());
        for (final String url : urls) {
            futures.add(pool.submit(() -> probe(url, userAgent)));
        }

        List<Probe> results = new ArrayList<>(urls.size());
        for (Future<Probe> f : futures) {
            try {
                // Cap individual wait at probe-read-timeout + small buffer
                results.add(f.get(PROBE_READ_TIMEOUT_MS + 1000, TimeUnit.MILLISECONDS));
            } catch (Exception e) {
                // Treat as failed probe
                results.add(new Probe("", false, Long.MAX_VALUE));
            }
        }
        pool.shutdownNow();

        // Sort: success first, then by elapsed time
        Collections.sort(results, new Comparator<Probe>() {
            @Override public int compare(Probe a, Probe b) {
                if (a.success != b.success) return a.success ? -1 : 1;
                return Long.compare(a.elapsedMs, b.elapsedMs);
            }
        });

        List<String> ranked = new ArrayList<>(results.size());
        for (Probe p : results) {
            if (!p.url.isEmpty()) ranked.add(p.url);
        }

        if (Log.isLoggable(TAG, Log.INFO)) {
            for (Probe p : results) {
                Log.i(TAG, "  " + p.url + " success=" + p.success + " " + p.elapsedMs + "ms");
            }
        }

        return ranked;
    }

    /**
     * Convenience overload for Epic's CdnUrl objects. Reorders the list by ranking the
     * baseUrl of each entry; entries are kept whole. Identity preservation matters
     * because each CdnUrl carries its own cloudDir + authParams that must travel with
     * the baseUrl.
     */
    public static List<EpicDownloadManager.CdnUrl> rankEpicCdnUrls(
            List<EpicDownloadManager.CdnUrl> cdnUrls, String userAgent) {
        if (cdnUrls == null || cdnUrls.size() <= 1) return cdnUrls;

        List<String> baseUrls = new ArrayList<>(cdnUrls.size());
        for (EpicDownloadManager.CdnUrl c : cdnUrls) baseUrls.add(c.baseUrl);

        List<String> ranked = rankBaseUrlsByHeadProbe(baseUrls, userAgent);
        if (ranked == baseUrls) return cdnUrls; // no change

        // Reorder cdnUrls to match the ranked baseUrl order. Original order preserved
        // for any URLs that fall through (shouldn't happen, but defensive).
        List<EpicDownloadManager.CdnUrl> reordered = new ArrayList<>(cdnUrls.size());
        for (String base : ranked) {
            for (EpicDownloadManager.CdnUrl c : cdnUrls) {
                if (c.baseUrl.equals(base) && !reordered.contains(c)) {
                    reordered.add(c);
                    break;
                }
            }
        }
        for (EpicDownloadManager.CdnUrl c : cdnUrls) {
            if (!reordered.contains(c)) reordered.add(c);
        }
        return reordered;
    }

    private static Probe probe(String url, String userAgent) {
        long start = System.nanoTime();
        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setRequestMethod("HEAD");
            conn.setConnectTimeout(PROBE_CONNECT_TIMEOUT_MS);
            conn.setReadTimeout(PROBE_READ_TIMEOUT_MS);
            conn.setInstanceFollowRedirects(true);
            if (userAgent != null && !userAgent.isEmpty()) {
                conn.setRequestProperty("User-Agent", userAgent);
            }
            int code = conn.getResponseCode();
            long elapsed = (System.nanoTime() - start) / 1_000_000L;
            boolean success = code >= 200 && code < 500;
            return new Probe(url, success, elapsed);
        } catch (Exception e) {
            return new Probe(url, false, Long.MAX_VALUE);
        } finally {
            if (conn != null) try { conn.disconnect(); } catch (Exception ignored) {}
        }
    }

    private static final class Probe {
        final String url;
        final boolean success;
        final long elapsedMs;
        Probe(String url, boolean success, long elapsedMs) {
            this.url = url;
            this.success = success;
            this.elapsedMs = elapsedMs;
        }
    }
}
