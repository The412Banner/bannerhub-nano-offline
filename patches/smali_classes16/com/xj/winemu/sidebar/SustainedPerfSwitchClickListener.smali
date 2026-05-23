.class public final synthetic Lcom/xj/winemu/sidebar/SustainedPerfSwitchClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/xj/winemu/view/SidebarSwitchItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/xj/winemu/view/SidebarSwitchItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/winemu/sidebar/SustainedPerfSwitchClickListener;->a:Lcom/xj/winemu/view/SidebarSwitchItemView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    # Get current switch state and toggle it
    iget-object v0, p0, Lcom/xj/winemu/sidebar/SustainedPerfSwitchClickListener;->a:Lcom/xj/winemu/view/SidebarSwitchItemView;

    invoke-virtual {v0}, Lcom/xj/winemu/view/SidebarSwitchItemView;->getSwitchState()Z
    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # Update switch UI
    invoke-virtual {v0, v1}, Lcom/xj/winemu/view/SidebarSwitchItemView;->setSwitch(Z)V

    # Save pref directly from view context — always works, no WineActivity.t1 dependency
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    const-string v3, "bh_prefs"
    const/4 v4, 0x0
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    const-string v3, "sustained_perf"
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Apply system effect (CPU governor via su + setSustainedPerformanceMode)
    invoke-static {v1}, Lcom/xj/winemu/WineActivity;->toggleSustainedPerf(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
