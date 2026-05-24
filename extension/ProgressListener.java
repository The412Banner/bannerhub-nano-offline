package app.revanced.extension.gamehub;

/**
 * Callbacks from ContainerDownloader.
 *
 * All methods are invoked on whichever thread download() is running on —
 * typically a background Thread spawned by ContainerLibraryActivity.
 * Implementations are responsible for posting UI updates back to the main
 * thread (e.g. via {@code activity.runOnUiThread(...)}).
 */
public interface ProgressListener {

    /** Free-form phase label for in-row status text. E.g. "Downloading wine
     *  binaries", "Verifying MD5", "Downloading wineprefix", "Updating catalog". */
    void onPhase(String phase);

    /** Per-file byte progress. {@code bytesTotal} may be -1 if the server
     *  didn't advertise a Content-Length. */
    void onProgress(long bytesDone, long bytesTotal, String filename);

    /** Successful end of pipeline (both downloads + MD5 verify + catalog write). */
    void onComplete(ContainerInfo container);

    /** Terminal failure. Partial files have already been cleaned up by the
     *  downloader. {@code reason} is human-readable, suitable for a toast. */
    void onError(String reason);
}
