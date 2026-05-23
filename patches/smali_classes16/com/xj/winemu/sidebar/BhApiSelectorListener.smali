.class public final Lcom/xj/winemu/sidebar/BhApiSelectorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# Handles selection in the 3-way API selector AlertDialog.
# Calls GameHubPrefs.setApiSource(which), updates the switch btn visual, dismisses dialog.

.implements Landroid/content/DialogInterface$OnClickListener;

.field public final switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;

# direct methods
.method public constructor <init>(Lcom/xj/common/view/CommFocusSwitchBtn;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/sidebar/BhApiSelectorListener;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # p1 = DialogInterface (the AlertDialog), p2 = which (0/1/2)

    # 1. Persist the new source + clear caches + show toast
    invoke-static {p2}, Lapp/revanced/extension/gamehub/prefs/GameHubPrefs;->setApiSource(I)V

    # 2. Dismiss the dialog
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    # 3. Update switch visual to reflect isExternalAPI()
    iget-object v0, p0, Lcom/xj/winemu/sidebar/BhApiSelectorListener;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    invoke-static {}, Lapp/revanced/extension/gamehub/prefs/GameHubPrefs;->isExternalAPI()Z
    move-result v1
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2}, Lcom/xj/common/view/CommFocusSwitchBtn;->b(ZZ)V

    return-void
.end method
