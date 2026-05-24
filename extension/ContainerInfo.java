package app.revanced.extension.gamehub;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Single compatibility-layer entry in the Container Library.
 *
 * Mirrors the entry shape of /simulator/v2/getContainerList. Source data is
 * either known-containers.json (downloadable) or the bundled
 * assets/local-mirror/simulator/v2/getContainerList (BUNDLED with the APK).
 *
 * State is COMPUTED at list-time by ContainerLibrary based on:
 *   - BUNDLED:       present in the bundled getContainerList asset (never changes)
 *   - INSTALLED:     wine archive AND sub_data both present in
 *                    files/local-mirror/components-cdn/
 *   - NOT_INSTALLED: anything else (the default for known-containers entries
 *                    that haven't been downloaded yet)
 */
public class ContainerInfo {

    public enum State { BUNDLED, INSTALLED, NOT_INSTALLED }

    public int    id              = 0;
    public String displayName     = "";
    public String name            = "";
    public String framework       = "";   // "X64" / "arm64X"
    public String frameworkType   = "";   // "proton" / "stable" / "wine"
    public String fileMd5         = "";   // wine archive MD5 (verified on download)
    public String fileName        = "";   // wine archive filename
    public long   fileSize        = 0L;
    public String downloadUrl     = "";
    public String subFileMd5      = "";   // app strict-check value, NOT a binary checksum
    public String subFileName     = "";
    public String subDownloadUrl  = "";
    public String version         = "1.0.0";
    public int    versionCode     = 1;
    public int    isSteam         = 1;
    public String logo            = "";
    public State  state           = State.NOT_INSTALLED;

    public ContainerInfo() {}

    /** Parse one container entry from either known-containers.json or a
     *  getContainerList envelope's data.list element. Returns null on
     *  malformed input. */
    public static ContainerInfo fromJson(JSONObject o) {
        if (o == null) return null;
        try {
            ContainerInfo c = new ContainerInfo();
            c.id            = o.optInt("id");
            c.displayName   = o.optString("display_name", "");
            c.name          = o.optString("name", "");
            c.framework     = o.optString("framework", "");
            c.frameworkType = o.optString("framework_type", "");
            c.fileMd5       = o.optString("file_md5", "");
            c.fileName      = o.optString("file_name", "");
            c.fileSize      = o.optLong("file_size", 0L);
            c.downloadUrl   = o.optString("download_url", "");
            c.version       = o.optString("version", "1.0.0");
            c.versionCode   = o.optInt("version_code", 1);
            c.isSteam       = o.optInt("is_steam", 1);
            c.logo          = o.optString("logo", "");
            JSONObject sub  = o.optJSONObject("sub_data");
            if (sub != null) {
                c.subFileMd5     = sub.optString("sub_file_md5", "");
                c.subFileName    = sub.optString("sub_file_name", "");
                c.subDownloadUrl = sub.optString("sub_download_url", "");
            }
            return c.id > 0 ? c : null;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Serialize back to the exact shape getContainerList's data.list expects. */
    public JSONObject toJson() throws JSONException {
        JSONObject o = new JSONObject();
        o.put("id", id);
        o.put("display_name", displayName);
        o.put("name", name);
        o.put("framework", framework);
        o.put("framework_type", frameworkType);
        o.put("file_md5", fileMd5);
        o.put("file_name", fileName);
        o.put("file_size", fileSize);
        o.put("download_url", downloadUrl);
        o.put("version", version);
        o.put("version_code", versionCode);
        o.put("is_steam", isSteam);
        o.put("logo", logo);
        JSONObject sub = new JSONObject();
        sub.put("sub_file_md5", subFileMd5);
        sub.put("sub_file_name", subFileName);
        sub.put("sub_download_url", subDownloadUrl);
        o.put("sub_data", sub);
        return o;
    }

    /** Human-readable wine-archive size for the row UI. sub_data is ~10 MB,
     *  rounding error vs the 150–250 MB wine archive; not separately summed. */
    public String sizeLabel() {
        long bytes = fileSize;
        if (bytes >= 1L << 30) return String.format("%.2f GB", bytes / (double) (1L << 30));
        if (bytes >= 1L << 20) return (bytes / (1L << 20)) + " MB";
        return bytes + " B";
    }

    /** Short framework + type label for the row badge, e.g. "X64 · proton". */
    public String badge() {
        if (framework.isEmpty()) return frameworkType;
        if (frameworkType.isEmpty()) return framework;
        return framework + " · " + frameworkType;
    }
}
