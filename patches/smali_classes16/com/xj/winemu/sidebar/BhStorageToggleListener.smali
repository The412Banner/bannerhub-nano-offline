.class public final Lcom/xj/winemu/sidebar/BhStorageToggleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# Confirm or cancel listener for the SD card storage toggle dialog.
# confirm=true  → apply via BhStorageHelper.applyToggle(ctx, newValue). Writes
#                 BannerHub-only bh_storage_pref keys; never touches GameHub's
#                 steam_storage_pref, so Steam stays on whatever GameHub had
#                 set (v3.5.1+).
# confirm=false → revert switch to old state (XOR newValue)

.implements Landroid/content/DialogInterface$OnClickListener;

.field public final switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
.field public final newValue:Z
.field public final confirm:Z

# direct methods
.method public constructor <init>(Lcom/xj/common/view/CommFocusSwitchBtn;ZZ)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    iput-boolean p2, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->newValue:Z
    iput-boolean p3, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->confirm:Z
    return-void
.end method

# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    iget-boolean v1, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->newValue:Z
    iget-boolean v2, p0, Lcom/xj/winemu/sidebar/BhStorageToggleListener;->confirm:Z

    if-eqz v2, :cond_cancel

    # Confirm: apply via BannerHub-only helper (handles SD card not found via toast)
    invoke-virtual {v0}, Lcom/xj/common/view/CommFocusSwitchBtn;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-static {v3, v1}, Lapp/revanced/extension/gamehub/BhStorageHelper;->applyToggle(Landroid/content/Context;Z)Z
    move-result v1

    # Update switch to actual result with animation
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2}, Lcom/xj/common/view/CommFocusSwitchBtn;->b(ZZ)V

    return-void

    :cond_cancel
    # Cancel: revert switch to old state (opposite of newValue), no animation
    xor-int/lit8 v1, v1, 0x1
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lcom/xj/common/view/CommFocusSwitchBtn;->b(ZZ)V

    return-void
.end method
