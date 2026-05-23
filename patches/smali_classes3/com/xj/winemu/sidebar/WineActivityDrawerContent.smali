.class public final Lcom/xj/winemu/sidebar/WineActivityDrawerContent;
.super Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;
.source "r8-map-id-712846b76e3224c0169ce621759774aea144e14d75c3fb3c733f7f2b03c1bb19"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xj/winemu/sidebar/WineActivityDrawerContent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/xj/winemu/sidebar/WineActivityDrawerContent$Companion;


# instance fields
.field public j:Lcom/xj/winemu/api/bean/WineActivityData;

.field public final k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

.field public final l:Landroidx/fragment/app/FragmentManager;

.field public final m:Ljava/util/Map;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->q:Lcom/xj/winemu/sidebar/WineActivityDrawerContent$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 6
    sget p3, Lcom/xj/winemu/R$layout;->winemu_activitiy_settings_layout:I

    const/4 v0, 0x1

    .line 7
    invoke-static {p2, p3, p0, v0}, Landroidx/databinding/DataBindingUtil;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    iput-object p2, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 8
    move-object p3, p1

    check-cast p3, Lcom/xj/winemu/WineActivity;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->l:Landroidx/fragment/app/FragmentManager;

    .line 9
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->m:Ljava/util/Map;

    .line 10
    invoke-virtual {p0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->R()V

    .line 11
    iget-object p3, p2, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarOpt:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 12
    invoke-virtual {p3}, Lcom/xj/winemu/view/SidebarTitleItemView;->getFocusStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xj/winemu/sidebar/j1;

    invoke-direct {v1, p0, p3}, Lcom/xj/winemu/sidebar/j1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;)V

    new-instance v2, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/Observer;)V

    .line 13
    new-instance v0, Lcom/xj/winemu/sidebar/k1;

    invoke-direct {v0, p0}, Lcom/xj/winemu/sidebar/k1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    invoke-virtual {p3, v0}, Lcom/xj/winemu/view/SidebarTitleItemView;->setClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 14
    iget-object p3, p2, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarPerformance:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 15
    invoke-virtual {p3}, Lcom/xj/winemu/view/SidebarTitleItemView;->getFocusStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xj/winemu/sidebar/l1;

    invoke-direct {v1, p0, p3}, Lcom/xj/winemu/sidebar/l1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;)V

    new-instance v2, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/Observer;)V

    .line 16
    new-instance v0, Lcom/xj/winemu/sidebar/m1;

    invoke-direct {v0, p0}, Lcom/xj/winemu/sidebar/m1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    invoke-virtual {p3, v0}, Lcom/xj/winemu/view/SidebarTitleItemView;->setClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 17
    iget-object p3, p2, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarSetting:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 18
    invoke-virtual {p3}, Lcom/xj/winemu/view/SidebarTitleItemView;->getFocusStatus()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xj/winemu/sidebar/n1;

    invoke-direct {v1, p0, p3}, Lcom/xj/winemu/sidebar/n1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;)V

    new-instance v2, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/Observer;)V

    .line 19
    new-instance v0, Lcom/xj/winemu/sidebar/o1;

    invoke-direct {v0, p0}, Lcom/xj/winemu/sidebar/o1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    invoke-virtual {p3, v0}, Lcom/xj/winemu/view/SidebarTitleItemView;->setClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 20
    iget-object p2, p2, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarKeyboard:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 21
    invoke-virtual {p2}, Lcom/xj/winemu/view/SidebarTitleItemView;->getFocusStatus()Landroidx/lifecycle/LiveData;

    move-result-object p3

    new-instance v0, Lcom/xj/winemu/sidebar/p1;

    invoke-direct {v0, p0}, Lcom/xj/winemu/sidebar/p1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    new-instance v1, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/Observer;)V

    .line 22
    new-instance p3, Lcom/xj/winemu/sidebar/q1;

    invoke-direct {p3, p2}, Lcom/xj/winemu/sidebar/q1;-><init>(Lcom/xj/winemu/view/SidebarTitleItemView;)V

    invoke-virtual {p2, p3}, Lcom/xj/winemu/view/SidebarTitleItemView;->setClickListener(Lkotlin/jvm/functions/Function0;)V

    # Task Manager tab
    const v0, 0x7f0a0f10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/xj/winemu/view/SidebarTitleItemView;
    new-instance v1, Lcom/xj/winemu/sidebar/BhTaskClickListener;
    invoke-direct {v1, p0}, Lcom/xj/winemu/sidebar/BhTaskClickListener;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V
    invoke-virtual {v0, v1}, Lcom/xj/winemu/view/SidebarTitleItemView;->setClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 23
    sget-object p2, Lcom/xj/common/data/preferences/AppPreferences;->INSTANCE:Lcom/xj/common/data/preferences/AppPreferences;

    invoke-virtual {p2}, Lcom/xj/common/data/preferences/AppPreferences;->getWineScreenBrightnessSwitch()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    sget-object p2, Lcom/xj/winemu/utils/ScreenBrightnessUtils;->a:Lcom/xj/winemu/utils/ScreenBrightnessUtils;

    .line 25
    invoke-static {p1}, Lcom/xj/common/utils/ContextExtensionsKt;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lcom/xj/winemu/utils/ScreenBrightnessUtils;->b()F

    move-result p3

    .line 27
    invoke-virtual {p2, p1, p3}, Lcom/xj/winemu/utils/ScreenBrightnessUtils;->c(Landroid/app/Activity;F)V

    :cond_0
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static F(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "SidebarControlsFragment"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->U(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static G(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "SidebarPerformanceFragment"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->U(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static H(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->Q(ZI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static I(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "SidebarSettingsFragmentKey"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->U(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static J(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->Q(ZI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static K(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->Q(ZI)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic L(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->T(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static M(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;Lcom/xj/winemu/view/SidebarTitleItemView;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->Q(ZI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static N()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xj/winemu/ShowKeyBoard;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xj/winemu/ShowKeyBoard;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v1, v2, v1}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static O(Lcom/xj/winemu/view/SidebarTitleItemView;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance v0, Lcom/xj/winemu/sidebar/r1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xj/winemu/sidebar/r1;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x32

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private final Q(ZI)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->n:I

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->o:I

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->o:I

    .line 17
    .line 18
    sub-int/2addr v1, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    iput v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->o:I

    .line 25
    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget p2, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->n:I

    .line 32
    .line 33
    :goto_1
    iget p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->p:I

    .line 34
    .line 35
    if-eq p1, p2, :cond_7

    .line 36
    .line 37
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarOpt:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->K()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarPerformance:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->K()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarSetting:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->K()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarKeyboard:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->K()V

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    if-eq p2, v0, :cond_5

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    if-eq p2, p1, :cond_4

    .line 71
    .line 72
    const/4 p1, 0x3

    .line 73
    if-eq p2, p1, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarKeyboard:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->N()V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarSetting:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->N()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarPerformance:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->N()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarOpt:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/xj/winemu/view/SidebarTitleItemView;->N()V

    .line 105
    .line 106
    .line 107
    :goto_2
    iput p2, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->p:I

    .line 108
    .line 109
    :cond_7
    return-void
.end method

.method public static final T(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;->sidebarOpt:Lcom/xj/winemu/view/SidebarTitleItemView;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;->y()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final P()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->l:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/xj/base/ext/ShowHideExtKt;->b(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final R()V
    .locals 0

    .line 1
    return-void
.end method

.method public final S()V
    .locals 3

    .line 1
    const-string v0, "SidebarControlsFragment"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->U(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/xj/winemu/sidebar/s1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/xj/winemu/sidebar/s1;-><init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, 0x12c

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->m:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_9

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const v1, -0x93f1310

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq v0, v1, :cond_6

    .line 23
    .line 24
    const v1, 0x13246682

    .line 25
    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const v1, 0x2763a9c4

    .line 30
    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    # BhTaskManagerFragment hash = "BhTaskManagerFragment".hashCode() = -935548270 = -0x37c3556e
    const v1, -0x37c3556e
    if-eq v0, v1, :cond_tm

    .line 33
    .line 34
    goto :goto_0

    :cond_tm
    const-string v0, "BhTaskManagerFragment"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :goto_0
    new-instance v2, Lcom/xj/winemu/sidebar/BhTaskManagerFragment;
    invoke-direct {v2}, Lcom/xj/winemu/sidebar/BhTaskManagerFragment;-><init>()V
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "SidebarPerformanceFragment"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/xj/winemu/sidebar/SidebarPerformanceFragment;->D:Lcom/xj/winemu/sidebar/SidebarPerformanceFragment$Companion;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->j:Lcom/xj/winemu/api/bean/WineActivityData;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/WineActivityData;->e()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_2
    invoke-virtual {v0, v2}, Lcom/xj/winemu/sidebar/SidebarPerformanceFragment$Companion;->a(Ljava/lang/String;)Lcom/xj/winemu/sidebar/SidebarPerformanceFragment;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v0, "SidebarControlsFragment"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    sget-object v0, Lcom/xj/winemu/sidebar/SidebarControlsFragment;->C:Lcom/xj/winemu/sidebar/SidebarControlsFragment$Companion;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->j:Lcom/xj/winemu/api/bean/WineActivityData;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/WineActivityData;->e()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_5
    invoke-virtual {v0, v2}, Lcom/xj/winemu/sidebar/SidebarControlsFragment$Companion;->a(Ljava/lang/String;)Lcom/xj/winemu/sidebar/SidebarControlsFragment;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_0

    .line 83
    :cond_6
    const-string v0, "SidebarSettingsFragmentKey"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    sget-object v0, Lcom/xj/winemu/sidebar/SidebarSettingsFragment;->r:Lcom/xj/winemu/sidebar/SidebarSettingsFragment$Companion;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->j:Lcom/xj/winemu/api/bean/WineActivityData;

    .line 95
    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/WineActivityData;->e()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_8
    invoke-virtual {v0, v2}, Lcom/xj/winemu/sidebar/SidebarSettingsFragment$Companion;->a(Ljava/lang/String;)Lcom/xj/winemu/sidebar/SidebarSettingsFragment;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_0
    if-eqz v2, :cond_a

    .line 107
    .line 108
    iget-object v0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->m:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget p1, Lcom/xj/winemu/R$id;->layout_container:I

    .line 114
    .line 115
    iget-object p0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->l:Landroidx/fragment/app/FragmentManager;

    .line 116
    .line 117
    invoke-static {p1, p0, v2}, Lcom/xj/base/ext/ShowHideExtKt;->a(ILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->m:Ljava/util/Map;

    .line 122
    .line 123
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 128
    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    iget-object p0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->l:Landroidx/fragment/app/FragmentManager;

    .line 132
    .line 133
    invoke-static {p0, p1}, Lcom/xj/base/ext/ShowHideExtKt;->j(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-void
.end method

.method public final getMBinding()Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->k:Lcom/xj/winemu/databinding/WinemuActivitiySettingsLayoutBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWineData(Lcom/xj/winemu/api/bean/WineActivityData;)V
    .locals 0
    .param p1    # Lcom/xj/winemu/api/bean/WineActivityData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->j:Lcom/xj/winemu/api/bean/WineActivityData;

    .line 2
    .line 3
    return-void
.end method
