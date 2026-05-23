.class public final Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;
.super Ljava/lang/Object;
.source "SourceFile"

# OnCheckedChangeListener for the "Extra Detailed" checkbox.
# When checked:   saves hud_extra_detail=true, hud_konkr_style=false,
#                 unchecks the Konkr Style checkbox (bh_hud_konkr_cb) in the UI.
# When unchecked: saves hud_extra_detail=false only.
# Delegates all HUD visibility to BhHudInjector.injectOrUpdate().

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final a:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;->a:Landroid/content/Context;
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    # p1 = CompoundButton (unused), p2 = isChecked

    # v0 = context
    iget-object v0, p0, Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;->a:Landroid/content/Context;

    # v1 = SharedPreferences
    const-string v1, "bh_prefs"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1

    # Guard: do nothing if winlator_hud is off
    const-string v2, "winlator_hud"
    const/4 v3, 0x0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v2
    if-eqz v2, :done

    # v3 = editor
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v3

    # Always save hud_extra_detail = isChecked
    const-string v4, "hud_extra_detail"
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v3

    if-eqz p2, :save_only

    # Checked: also clear hud_konkr_style
    const-string v4, "hud_konkr_style"
    const/4 v5, 0x0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v3

    :save_only
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    # If checked: uncheck Konkr Style checkbox in the view hierarchy
    if-eqz p2, :inject

    check-cast v0, Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v4
    if-eqz v4, :inject
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v4
    if-eqz v4, :inject
    const-string v5, "bh_hud_konkr_cb"
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :inject
    check-cast v5, Landroid/widget/CompoundButton;
    const/4 v6, 0x0
    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :inject
    # Delegate all HUD visibility to BhHudInjector
    iget-object v2, p0, Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;->a:Landroid/content/Context;
    check-cast v2, Landroid/app/Activity;
    invoke-static {v2}, Lcom/xj/winemu/sidebar/BhHudInjector;->injectOrUpdate(Landroid/app/Activity;)V

    :done
    return-void
.end method
