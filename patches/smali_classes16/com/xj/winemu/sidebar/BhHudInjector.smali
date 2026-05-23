.class public Lcom/xj/winemu/sidebar/BhHudInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# Called from WineActivity.onResume() to inject the correct HUD into DecorView.
# Priority:
#   winlator_hud=false                              → all HUDs hidden
#   winlator_hud=true + konkr=false + extra=false   → BhFrameRating
#   winlator_hud=true + konkr=false + extra=true    → BhDetailedHud
#   winlator_hud=true + konkr=true                  → BhKonkrHud (extra ignored)

# direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# p0 = Activity (WineActivity)
.method public static injectOrUpdate(Landroid/app/Activity;)V
    .locals 12

    if-eqz p0, :done

    # v0 = DecorView
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :done
    check-cast v0, Landroid/view/ViewGroup;

    # v1 = SharedPreferences
    const-string v2, "bh_prefs"
    const/4 v3, 0x0
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1

    # v2 = winlator_hud
    const-string v3, "winlator_hud"
    const/4 v4, 0x0
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v2

    # v3 = hud_extra_detail
    const-string v4, "hud_extra_detail"
    const/4 v5, 0x0
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v3

    # v4 = hud_konkr_style
    const-string v5, "hud_konkr_style"
    const/4 v6, 0x0
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v4

    # ── BhFrameRating ─────────────────────────────────────────────────────────
    # Show when: hud=true, konkr=false, extra=false

    const-string v5, "bh_frame_rating"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5

    # fr_show = hud && !extra && !konkr
    if-eqz v2, :fr_hide
    if-nez v3, :fr_hide
    if-nez v4, :fr_hide
    const/4 v6, 0x1
    goto :fr_vis_done
    :fr_hide
    const/4 v6, 0x0
    :fr_vis_done

    if-nez v5, :fr_update

    # Not created — only create if should show
    if-eqz v6, :fr_skip
    new-instance v7, Lcom/xj/winemu/sidebar/BhFrameRating;
    invoke-direct {v7, p0}, Lcom/xj/winemu/sidebar/BhFrameRating;-><init>(Landroid/content/Context;)V
    const-string v8, "bh_frame_rating"
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -0x2
    const/16 v10, 0x35
    invoke-direct {v8, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    const/4 v9, 0x0
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :fr_skip

    :fr_update
    if-eqz v6, :fr_gone
    const/4 v7, 0x0
    goto :fr_set_vis
    :fr_gone
    const/16 v7, 0x8
    :fr_set_vis
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :fr_skip

    # ── BhDetailedHud ─────────────────────────────────────────────────────────
    # Show when: hud=true, extra=true, konkr=false

    const-string v5, "bh_detailed_hud"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5

    # dh_show = hud && extra && !konkr
    if-eqz v2, :dh_hide
    if-eqz v3, :dh_hide
    if-nez v4, :dh_hide
    const/4 v6, 0x1
    goto :dh_vis_done
    :dh_hide
    const/4 v6, 0x0
    :dh_vis_done

    if-nez v5, :dh_update

    if-eqz v6, :dh_skip
    new-instance v7, Lcom/xj/winemu/sidebar/BhDetailedHud;
    invoke-direct {v7, p0}, Lcom/xj/winemu/sidebar/BhDetailedHud;-><init>(Landroid/content/Context;)V
    const-string v8, "bh_detailed_hud"
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -0x2
    const/16 v10, 0x35
    invoke-direct {v8, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    const/4 v9, 0x0
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :dh_skip

    :dh_update
    if-eqz v6, :dh_gone
    const/4 v7, 0x0
    goto :dh_set_vis
    :dh_gone
    const/16 v7, 0x8
    :dh_set_vis
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :dh_skip

    # ── BhKonkrHud ────────────────────────────────────────────────────────────
    # Show when: hud=true, konkr=true

    const-string v5, "bh_konkr_hud"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5

    # kh_show = hud && konkr
    if-eqz v2, :kh_hide
    if-eqz v4, :kh_hide
    const/4 v6, 0x1
    goto :kh_vis_done
    :kh_hide
    const/4 v6, 0x0
    :kh_vis_done

    if-nez v5, :kh_update

    if-eqz v6, :done
    new-instance v7, Lcom/xj/winemu/sidebar/BhKonkrHud;
    invoke-direct {v7, p0}, Lcom/xj/winemu/sidebar/BhKonkrHud;-><init>(Landroid/content/Context;)V
    const-string v8, "bh_konkr_hud"
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v9, -0x2
    const/16 v10, 0x35
    invoke-direct {v8, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    const/4 v9, 0x0
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :done

    :kh_update
    if-eqz v6, :kh_gone
    const/4 v7, 0x0
    goto :kh_set_vis
    :kh_gone
    const/16 v7, 0x8
    :kh_set_vis
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :done
    return-void
.end method
