package app.revanced.extension.gamehub;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Container Library — list-and-download screen for additional Wine/Proton
 * compatibility layers. Launched from the side menu (id=14 / 0xe).
 *
 * UI is fully programmatic to match the existing Gog/Amazon/Epic extension
 * activities (no XML layouts, no RecyclerView; the catalog is ~10 rows).
 *
 * Flow:
 *   - {@link ContainerLibrary#listAll(Context)} returns merged
 *     BUNDLED + INSTALLED + NOT_INSTALLED entries.
 *   - Each NOT_INSTALLED row shows a Download button. Tap → online check
 *     (raw ConnectivityManager — bypasses the patched NetworkUtils gates) →
 *     {@link ContainerDownloader#download} on a background Thread, with
 *     progress posted back to the UI thread via runOnUiThread.
 *   - On success: row flips to INSTALLED, server immediately serves the
 *     new entry via getContainerList (LocalAssetServer is files-first).
 *   - On error: toast, row reverts.
 */
public class ContainerLibraryActivity extends Activity {

    private static final String TAG = "BH-ContainerLib-UI";

    private static final int COLOR_BG          = 0xFF0D0D0D;
    private static final int COLOR_CARD        = 0xFF161616;
    private static final int COLOR_ACCENT      = 0xFF4A90E2;
    private static final int COLOR_TEXT        = 0xFFEEEEEE;
    private static final int COLOR_TEXT_DIM    = 0xFFAAAAAA;
    private static final int COLOR_BADGE_BG    = 0xFF2A2A2A;
    private static final int COLOR_INSTALLED   = 0xFF4CAF50;
    private static final int COLOR_BUNDLED     = 0xFF888888;

    /** Per-id row state holder so the listener callbacks can find the views
     *  to update for a given download in progress. */
    private static final class RowViews {
        Button       actionBtn;
        ProgressBar  progress;
        TextView     statusText;
    }

    private final Map<Integer, RowViews> rows = new HashMap<>();
    private LinearLayout listColumn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ScrollView scroll = new ScrollView(this);
        scroll.setBackgroundColor(COLOR_BG);

        listColumn = new LinearLayout(this);
        listColumn.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(16);
        listColumn.setPadding(pad, pad, pad, pad);

        scroll.addView(listColumn,
                new ScrollView.LayoutParams(-1, -2));
        setContentView(scroll);

        listColumn.addView(buildHeader());
        rebuildRows();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // Refresh state on return (in case user navigated away and back) —
        // only when no downloads are in flight.
        if (!hasActiveDownload()) rebuildRows();
    }

    private boolean hasActiveDownload() {
        for (RowViews rv : rows.values()) {
            if (rv.progress != null && rv.progress.getVisibility() == View.VISIBLE) {
                return true;
            }
        }
        return false;
    }

    private View buildHeader() {
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(0, 0, 0, dp(20));

        TextView title = new TextView(this);
        title.setText("Compatibility Layers");
        title.setTextColor(COLOR_TEXT);
        title.setTextSize(22f);
        title.setTypeface(null, Typeface.BOLD);
        header.addView(title);

        TextView sub = new TextView(this);
        sub.setText("Download additional Wine/Proton containers to the local server. "
                + "Requires internet for the initial download — game launches stay offline.");
        sub.setTextColor(COLOR_TEXT_DIM);
        sub.setTextSize(13f);
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(-1, -2);
        subLp.topMargin = dp(6);
        header.addView(sub, subLp);

        return header;
    }

    private void rebuildRows() {
        // Drop everything below the header
        int childCount = listColumn.getChildCount();
        if (childCount > 1) {
            listColumn.removeViews(1, childCount - 1);
        }
        rows.clear();

        List<ContainerInfo> all = ContainerLibrary.listAll(this);
        if (all.isEmpty()) {
            TextView empty = new TextView(this);
            empty.setText("(no containers)");
            empty.setTextColor(COLOR_TEXT_DIM);
            listColumn.addView(empty);
            return;
        }

        for (ContainerInfo c : all) {
            listColumn.addView(buildRow(c));
        }
    }

    private View buildRow(final ContainerInfo c) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setBackgroundColor(COLOR_CARD);
        row.setGravity(Gravity.CENTER_VERTICAL);
        int pad = dp(14);
        row.setPadding(pad, pad, pad, pad);

        LinearLayout.LayoutParams rowLp = new LinearLayout.LayoutParams(-1, -2);
        rowLp.bottomMargin = dp(10);

        // Left: stacked name + size/badge
        LinearLayout textCol = new LinearLayout(this);
        textCol.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams textLp = new LinearLayout.LayoutParams(0, -2, 1f);

        TextView nameTv = new TextView(this);
        nameTv.setText(c.displayName);
        nameTv.setTextColor(COLOR_TEXT);
        nameTv.setTextSize(15f);
        nameTv.setTypeface(null, Typeface.BOLD);
        textCol.addView(nameTv);

        TextView metaTv = new TextView(this);
        metaTv.setText(c.sizeLabel() + "   ·   " + c.badge());
        metaTv.setTextColor(COLOR_TEXT_DIM);
        metaTv.setTextSize(12f);
        LinearLayout.LayoutParams metaLp = new LinearLayout.LayoutParams(-2, -2);
        metaLp.topMargin = dp(4);
        textCol.addView(metaTv, metaLp);

        TextView statusTv = new TextView(this);
        statusTv.setTextColor(COLOR_ACCENT);
        statusTv.setTextSize(11f);
        statusTv.setVisibility(View.GONE);
        LinearLayout.LayoutParams statusLp = new LinearLayout.LayoutParams(-2, -2);
        statusLp.topMargin = dp(4);
        textCol.addView(statusTv, statusLp);

        row.addView(textCol, textLp);

        // Right: action button (or label) + progress bar
        LinearLayout actionCol = new LinearLayout(this);
        actionCol.setOrientation(LinearLayout.VERTICAL);
        actionCol.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);

        Button actionBtn = new Button(this);
        actionBtn.setMinWidth(dp(110));
        actionBtn.setTextColor(0xFFFFFFFF);
        actionBtn.setTextSize(12f);
        actionBtn.setPadding(dp(12), dp(6), dp(12), dp(6));

        ProgressBar progress = new ProgressBar(this, null,
                android.R.attr.progressBarStyleHorizontal);
        progress.setMax(100);
        LinearLayout.LayoutParams progLp = new LinearLayout.LayoutParams(dp(110), dp(6));
        progLp.topMargin = dp(6);
        progress.setVisibility(View.GONE);

        switch (c.state) {
            case BUNDLED:
                actionBtn.setText("BUNDLED");
                actionBtn.setBackgroundColor(COLOR_BUNDLED);
                actionBtn.setEnabled(false);
                break;
            case INSTALLED:
                actionBtn.setText("INSTALLED");
                actionBtn.setBackgroundColor(COLOR_INSTALLED);
                actionBtn.setEnabled(false);
                break;
            case NOT_INSTALLED:
            default:
                actionBtn.setText("DOWNLOAD");
                actionBtn.setBackgroundColor(COLOR_ACCENT);
                actionBtn.setOnClickListener(v -> startDownload(c));
                break;
        }

        actionCol.addView(actionBtn);
        actionCol.addView(progress, progLp);

        row.addView(actionCol, new LinearLayout.LayoutParams(-2, -2));

        listColumn.addView(row, rowLp);

        // Track this row so download callbacks can find the views by id
        RowViews rv = new RowViews();
        rv.actionBtn  = actionBtn;
        rv.progress   = progress;
        rv.statusText = statusTv;
        rows.put(c.id, rv);

        return row;
    }

    private void startDownload(ContainerInfo c) {
        if (!isOnline()) {
            Toast.makeText(this,
                    "Turn off airplane mode to download containers",
                    Toast.LENGTH_LONG).show();
            return;
        }

        RowViews rv = rows.get(c.id);
        if (rv == null) return;

        rv.actionBtn.setText("CANCEL");
        rv.actionBtn.setBackgroundColor(0xFF8B0000);
        rv.progress.setVisibility(View.VISIBLE);
        rv.progress.setIndeterminate(true);
        rv.statusText.setVisibility(View.VISIBLE);
        rv.statusText.setText("Preparing…");

        final ContainerDownloader dl = new ContainerDownloader(this);
        rv.actionBtn.setOnClickListener(v -> dl.cancel());

        new Thread(() -> {
            dl.download(c, new ProgressListener() {
                @Override
                public void onPhase(String phase) {
                    runOnUiThread(() -> {
                        rv.statusText.setText(phase);
                        rv.progress.setIndeterminate(true);
                    });
                }

                @Override
                public void onProgress(long done, long total, String filename) {
                    runOnUiThread(() -> {
                        if (total > 0) {
                            int pct = (int) (done * 100L / total);
                            rv.progress.setIndeterminate(false);
                            rv.progress.setProgress(pct);
                            rv.statusText.setText(
                                    humanBytes(done) + " / " + humanBytes(total));
                        } else {
                            rv.statusText.setText(humanBytes(done) + " downloaded");
                        }
                    });
                }

                @Override
                public void onComplete(ContainerInfo container) {
                    Log.i(TAG, "download complete: id=" + container.id);
                    runOnUiThread(() -> {
                        Toast.makeText(ContainerLibraryActivity.this,
                                container.displayName + " installed",
                                Toast.LENGTH_SHORT).show();
                        rebuildRows();
                    });
                }

                @Override
                public void onError(String reason) {
                    Log.w(TAG, "download error: " + reason);
                    runOnUiThread(() -> {
                        Toast.makeText(ContainerLibraryActivity.this,
                                "Download failed: " + reason,
                                Toast.LENGTH_LONG).show();
                        rebuildRows();
                    });
                }
            });
        }, "ContainerDL-" + c.id).start();
    }

    private boolean isOnline() {
        ConnectivityManager cm =
                (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        if (cm == null) return false;
        Network active = cm.getActiveNetwork();
        if (active == null) return false;
        NetworkCapabilities caps = cm.getNetworkCapabilities(active);
        return caps != null
                && caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET);
    }

    private int dp(int v) {
        return (int) (v * getResources().getDisplayMetrics().density);
    }

    private static String humanBytes(long bytes) {
        if (bytes >= 1L << 30) return String.format("%.2f GB", bytes / (double) (1L << 30));
        if (bytes >= 1L << 20) return (bytes / (1L << 20)) + " MB";
        if (bytes >= 1L << 10) return (bytes / (1L << 10)) + " KB";
        return bytes + " B";
    }
}
