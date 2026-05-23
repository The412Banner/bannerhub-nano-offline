.class public final Lcom/xj/winemu/settings/PcGameSettingOperations;
.super Ljava/lang/Object;
.source "r8-map-id-712846b76e3224c0169ce621759774aea144e14d75c3fb3c733f7f2b03c1bb19"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xj/winemu/settings/PcGameSettingOperations$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "gameId"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "PcGameSettingOperations"

    .line 16
    .line 17
    iput-object v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v19, "pt_BR"

    .line 20
    .line 21
    const-string v20, "pt_PT"

    .line 22
    .line 23
    const-string v2, "en_US"

    .line 24
    .line 25
    const-string v3, "en_GB"

    .line 26
    .line 27
    const-string v4, "en_CA"

    .line 28
    .line 29
    const-string v5, "zh_CN"

    .line 30
    .line 31
    const-string v6, "zh_TW"

    .line 32
    .line 33
    const-string v7, "ja_JP"

    .line 34
    .line 35
    const-string v8, "ko_KR"

    .line 36
    .line 37
    const-string v9, "fr_FR"

    .line 38
    .line 39
    const-string v10, "fr_CA"

    .line 40
    .line 41
    const-string v11, "de_DE"

    .line 42
    .line 43
    const-string v12, "it_IT"

    .line 44
    .line 45
    const-string v13, "es_ES"

    .line 46
    .line 47
    const-string v14, "es_MX"

    .line 48
    .line 49
    const-string v15, "ru_RU"

    .line 50
    .line 51
    const-string v16, "ar_EG"

    .line 52
    .line 53
    const-string v17, "ar_SA"

    .line 54
    .line 55
    const-string v18, "hi_IN"

    .line 56
    .line 57
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations;->c:Ljava/util/List;

    .line 66
    .line 67
    return-void
.end method

.method public static synthetic C(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic C1(Lcom/xj/winemu/settings/PcGameSettingOperations;Lcom/xj/winemu/bean/ITranslatorConfig;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B1(Lcom/xj/winemu/bean/ITranslatorConfig;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic E(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->D(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic G1(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 11

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    move v9, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v9, p7

    .line 11
    .line 12
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    move-object v10, v0

    .line 19
    :goto_1
    move-object v2, p0

    .line 20
    move v3, p1

    .line 21
    move v4, p2

    .line 22
    move-object v5, p3

    .line 23
    move-object v6, p4

    .line 24
    move/from16 v7, p5

    .line 25
    .line 26
    move-object/from16 v8, p6

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move-object/from16 v10, p8

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :goto_2
    invoke-virtual/range {v2 .. v10}, Lcom/xj/winemu/settings/PcGameSettingOperations;->F1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic M0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Q()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->L0(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final N1(Ljava/util/List;)Z
    .locals 1

    .line 1
    const-string v0, "$this$isTrue"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method

.method public static final O1(Lcom/xj/winemu/settings/PcGameSettingOperations;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "gComponent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "pc_d_general_component"

    .line 11
    .line 12
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic T(Lcom/xj/winemu/settings/PcGameSettingOperations;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->L()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->S(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic W(Lcom/xj/winemu/settings/PcGameSettingOperations;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->V(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic Y1(Lcom/xj/winemu/settings/PcGameSettingOperations;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p6, ""

    .line 6
    .line 7
    :cond_0
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    move-object v5, p5

    .line 13
    move-object v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/xj/winemu/settings/PcGameSettingOperations;->X1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->w(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N1(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->v(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->y(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/xj/winemu/settings/PcGameSettingOperations;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->O1(Lcom/xj/winemu/settings/PcGameSettingOperations;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lcom/xj/winemu/settings/PcGameSettingOperations;IZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i0(IZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic o1(Lcom/xj/winemu/settings/PcGameSettingOperations;ILcom/xj/common/data/gameinfo/InstalledGameSource;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    move v3, p3

    .line 7
    and-int/lit8 p3, p6, 0x8

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    :cond_1
    move-object v0, p0

    .line 13
    move v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p4

    .line 16
    move-object v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/xj/winemu/settings/PcGameSettingOperations;->n1(ILcom/xj/common/data/gameinfo/InstalledGameSource;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static synthetic r0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->H()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->q0(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic s1(Lcom/xj/winemu/settings/PcGameSettingOperations;IIZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xj/winemu/settings/PcGameSettingOperations;->p1(IIZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic t(Lcom/xj/winemu/settings/PcGameSettingOperations;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->I()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final v(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "-"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final w(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string p0, ""

    .line 5
    .line 6
    return-object p0
.end method

.method public static final y(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string p0, ""

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic y0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->K()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->x0(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 33

    # BannerHub: CPU core selector — bitmask-based specific core selection.
    # Each entry id IS the affinity bitmask passed directly to sched_setaffinity
    # via WINEMU_CPU_AFFINITY env var (EnvironmentController.d() patched).
    # 0 = No Limit. Presets cover common big.LITTLE layouts (Snapdragon/Dimensity).

    # Get stored bitmask (0 = no limit)
    const/4 v1, 0x0
    const/4 v2, 0x1
    move-object/from16 v3, p0
    invoke-static {v3, v1, v2, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->C(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I
    move-result v0

    # Create result list
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # Initialize constant constructor fields once (reused for all entries)
    const/4 v9, 0x0
    const/4 v12, 0x0
    const/4 v13, 0x0
    const/4 v14, 0x0
    const/4 v15, 0x0
    const/16 v16, 0x0
    const/16 v17, 0x0
    const-wide/16 v18, 0x0
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v22, 0x0
    const/16 v23, 0x0
    const/16 v24, 0x0
    const/16 v25, 0x0
    const/16 v26, 0x0
    const/16 v27, 0x0
    const/16 v28, 0x0
    const/16 v29, 0x0
    const/16 v30, 0x0
    const v31, 0x3ffff2
    const/16 v32, 0x0

    # ---- No Limit (id=0) ----
    const/4 v8, 0x0
    if-nez v0, :cond_bh_nl_ns
    const/4 v10, 0x1
    goto :goto_bh_nl
    :cond_bh_nl_ns
    const/4 v10, 0x0
    :goto_bh_nl
    const-string v11, "No Limit"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Performance cores 4-7 (id=0xF0=240) ----
    const/16 v8, 0xf0
    if-ne v0, v8, :cond_bh_p47_ns
    const/4 v10, 0x1
    goto :goto_bh_p47
    :cond_bh_p47_ns
    const/4 v10, 0x0
    :goto_bh_p47
    const-string v11, "Cores 4-7 (Performance)"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Efficiency cores 0-3 (id=0x0F=15) ----
    const/16 v8, 0xf
    if-ne v0, v8, :cond_bh_e03_ns
    const/4 v10, 0x1
    goto :goto_bh_e03
    :cond_bh_e03_ns
    const/4 v10, 0x0
    :goto_bh_e03
    const-string v11, "Cores 0-3 (Efficiency)"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 0 (id=1) ----
    const/4 v8, 0x1
    if-ne v0, v8, :cond_bh_c0_ns
    const/4 v10, 0x1
    goto :goto_bh_c0
    :cond_bh_c0_ns
    const/4 v10, 0x0
    :goto_bh_c0
    const-string v11, "Core 0"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 1 (id=2) ----
    const/4 v8, 0x2
    if-ne v0, v8, :cond_bh_c1_ns
    const/4 v10, 0x1
    goto :goto_bh_c1
    :cond_bh_c1_ns
    const/4 v10, 0x0
    :goto_bh_c1
    const-string v11, "Core 1"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 2 (id=4) ----
    const/4 v8, 0x4
    if-ne v0, v8, :cond_bh_c2_ns
    const/4 v10, 0x1
    goto :goto_bh_c2
    :cond_bh_c2_ns
    const/4 v10, 0x0
    :goto_bh_c2
    const-string v11, "Core 2"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 3 (id=8) ----
    const/16 v8, 0x8
    if-ne v0, v8, :cond_bh_c3_ns
    const/4 v10, 0x1
    goto :goto_bh_c3
    :cond_bh_c3_ns
    const/4 v10, 0x0
    :goto_bh_c3
    const-string v11, "Core 3"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 4 (id=16) ----
    const/16 v8, 0x10
    if-ne v0, v8, :cond_bh_c4_ns
    const/4 v10, 0x1
    goto :goto_bh_c4
    :cond_bh_c4_ns
    const/4 v10, 0x0
    :goto_bh_c4
    const-string v11, "Core 4"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 5 (id=32) ----
    const/16 v8, 0x20
    if-ne v0, v8, :cond_bh_c5_ns
    const/4 v10, 0x1
    goto :goto_bh_c5
    :cond_bh_c5_ns
    const/4 v10, 0x0
    :goto_bh_c5
    const-string v11, "Core 5"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 6 (id=64) ----
    const/16 v8, 0x40
    if-ne v0, v8, :cond_bh_c6_ns
    const/4 v10, 0x1
    goto :goto_bh_c6
    :cond_bh_c6_ns
    const/4 v10, 0x0
    :goto_bh_c6
    const-string v11, "Core 6"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # ---- Core 7 / Prime (id=128) ----
    const/16 v8, 0x80
    if-ne v0, v8, :cond_bh_c7_ns
    const/4 v10, 0x1
    goto :goto_bh_c7
    :cond_bh_c7_ns
    const/4 v10, 0x0
    :goto_bh_c7
    const-string v11, "Core 7 (Prime)"
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public final A0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_FORWARD()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->d()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N0(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final A1(Lcom/xj/winemu/bean/FEXTranslatorConfig;ZZ)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/xj/winemu/bean/FEXTranslatorConfig;->set_isUserApply(Z)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p3, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 7
    .line 8
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_APPLYING_FEX_TP_CONFIG()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p3, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p3}, Lcom/blankj/utilcode/util/SPUtils;->c(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p3, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p3, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final B(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CORE_LIMIT()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final B0()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_GPU_DRIVER()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final B1(Lcom/xj/winemu/bean/ITranslatorConfig;ZZ)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/xj/winemu/settings/PcGameSettingOperations;->A1(Lcom/xj/winemu/bean/FEXTranslatorConfig;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/xj/winemu/settings/PcGameSettingOperations;->z1(Lcom/xj/winemu/bean/Box64TranslatorConfig;ZZ)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final C0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    iget-object v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_5

    .line 68
    .line 69
    sget-object p1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->l()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 78
    .line 79
    move v3, v2

    .line 80
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    move v4, v3

    .line 85
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move v5, v4

    .line 90
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move v7, v5

    .line 95
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    iput v7, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectGpuOrDefault$1;->label:I

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_3

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_3
    move-object v0, p0

    .line 113
    move-object p0, p1

    .line 114
    move-object p1, v1

    .line 115
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_4
    move-object p0, v0

    .line 125
    :cond_5
    if-nez p0, :cond_6

    .line 126
    .line 127
    new-instance v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 128
    .line 129
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    sget p1, Lcom/xj/language/R$string;->pc_gpu_official_driver:I

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string p0, "getString(...)"

    .line 140
    .line 141
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/16 v11, 0x3fc

    .line 145
    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v1, -0x1

    .line 148
    const/4 v3, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    const/4 v8, 0x0

    .line 154
    const/4 v9, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    invoke-direct/range {v0 .. v12}, Lcom/xj/winemu/bean/PcSettingDataEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xj/common/download/bean/SubData;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_6
    return-object p0
.end method

.method public final D(I)Ljava/lang/String;
    .locals 4

    # BannerHub: display label for stored CPU affinity bitmask value.
    # Reads stored bitmask, returns the matching label string.

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CORE_LIMIT()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    # p0 = stored bitmask (int). Match against known values.
    if-nez p0, :cond_bh_d_nz
    const-string p0, "No Limit"
    return-object p0

    :cond_bh_d_nz
    const/16 v0, 0xf0
    if-ne p0, v0, :cond_bh_d1
    const-string p0, "Cores 4-7 (Performance)"
    return-object p0

    :cond_bh_d1
    const/16 v0, 0xf
    if-ne p0, v0, :cond_bh_d2
    const-string p0, "Cores 0-3 (Efficiency)"
    return-object p0

    :cond_bh_d2
    const/4 v0, 0x1
    if-ne p0, v0, :cond_bh_d3
    const-string p0, "Core 0"
    return-object p0

    :cond_bh_d3
    const/4 v0, 0x2
    if-ne p0, v0, :cond_bh_d4
    const-string p0, "Core 1"
    return-object p0

    :cond_bh_d4
    const/4 v0, 0x4
    if-ne p0, v0, :cond_bh_d5
    const-string p0, "Core 2"
    return-object p0

    :cond_bh_d5
    const/16 v0, 0x8
    if-ne p0, v0, :cond_bh_d6
    const-string p0, "Core 3"
    return-object p0

    :cond_bh_d6
    const/16 v0, 0x10
    if-ne p0, v0, :cond_bh_d7
    const-string p0, "Core 4"
    return-object p0

    :cond_bh_d7
    const/16 v0, 0x20
    if-ne p0, v0, :cond_bh_d8
    const-string p0, "Core 5"
    return-object p0

    :cond_bh_d8
    const/16 v0, 0x40
    if-ne p0, v0, :cond_bh_d9
    const-string p0, "Core 6"
    return-object p0

    :cond_bh_d9
    const/16 v0, 0x80
    if-ne p0, v0, :cond_bh_dfb
    const-string p0, "Core 7 (Prime)"
    return-object p0

    :cond_bh_dfb
    # Custom combination — build "Core X + Core Y" label dynamically
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # Core 0 (mask=1)
    const/4 v1, 0x1
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb0
    const-string v1, "Core 0"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb0

    # Core 1 (mask=2)
    const/4 v1, 0x2
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb1_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb1_np
    const-string v1, "Core 1"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb1

    # Core 2 (mask=4)
    const/4 v1, 0x4
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb2_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb2_np
    const-string v1, "Core 2"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb2

    # Core 3 (mask=8)
    const/16 v1, 0x8
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb3_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb3_np
    const-string v1, "Core 3"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb3

    # Core 4 (mask=16=0x10)
    const/16 v1, 0x10
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb4_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb4_np
    const-string v1, "Core 4"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb4

    # Core 5 (mask=32=0x20)
    const/16 v1, 0x20
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb5_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb5_np
    const-string v1, "Core 5"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb5

    # Core 6 (mask=64=0x40)
    const/16 v1, 0x40
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb6_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb6_np
    const-string v1, "Core 6"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb6

    # Core 7 (mask=128=0x80)
    const/16 v1, 0x80
    and-int/2addr v1, p0
    if-eqz v1, :cond_bh_nb7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-eqz v2, :cond_bh_nb7_np
    const-string v1, " + "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb7_np
    const-string v1, "Core 7 (Prime)"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :cond_bh_nb7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public final D0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_HUB_TYPE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->e()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eq p0, v0, :cond_1

    .line 31
    .line 32
    if-eq p0, v3, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget v0, Lcom/xj/language/R$string;->pc_s_ht_close:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget v0, Lcom/xj/language/R$string;->pc_s_ht_full:I

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    sget v0, Lcom/xj/language/R$string;->pc_s_ht_simplify:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method

.method public final D1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "version"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fileName"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "displayName"

    .line 17
    .line 18
    move-object/from16 v9, p6

    .line 19
    .line 20
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TRANSLATOR_BOX()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move v6, p4

    .line 35
    move-object v7, p5

    .line 36
    invoke-virtual/range {v1 .. v9}, Lcom/xj/winemu/settings/PcGameSettingOperations;->F1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final E0()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_HUB_TYPE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->e()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final E1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_BYPASS_AV_DECODE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final F()Ljava/util/List;
    .locals 33

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    invoke-static {v3, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->y0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget v5, Lcom/xj/language/R$string;->pc_cc_dinput_prefer_native:I

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    const-string v4, "getString(...)"

    .line 26
    .line 27
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    move v9, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v9, v1

    .line 35
    :goto_0
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 36
    .line 37
    const v30, 0x3ffff2

    .line 38
    .line 39
    .line 40
    const/16 v31, 0x0

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    const/4 v15, 0x0

    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const-wide/16 v17, 0x0

    .line 52
    .line 53
    const/16 v19, 0x0

    .line 54
    .line 55
    const/16 v20, 0x0

    .line 56
    .line 57
    const/16 v21, 0x0

    .line 58
    .line 59
    const/16 v22, 0x0

    .line 60
    .line 61
    const/16 v23, 0x0

    .line 62
    .line 63
    const/16 v24, 0x0

    .line 64
    .line 65
    const/16 v25, 0x0

    .line 66
    .line 67
    const/16 v26, 0x0

    .line 68
    .line 69
    const/16 v27, 0x0

    .line 70
    .line 71
    const/16 v28, 0x0

    .line 72
    .line 73
    const/16 v29, 0x0

    .line 74
    .line 75
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    sget v6, Lcom/xj/language/R$string;->pc_cc_dinput_prefer_builtin:I

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    if-ne v0, v2, :cond_1

    .line 95
    .line 96
    move v10, v2

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move v10, v1

    .line 99
    :goto_1
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 100
    .line 101
    const v31, 0x3ffff2

    .line 102
    .line 103
    .line 104
    const/16 v32, 0x0

    .line 105
    .line 106
    const/4 v8, 0x1

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v13, 0x0

    .line 110
    const/4 v14, 0x0

    .line 111
    const/4 v15, 0x0

    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const-wide/16 v18, 0x0

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    const/16 v22, 0x0

    .line 123
    .line 124
    const/16 v23, 0x0

    .line 125
    .line 126
    const/16 v24, 0x0

    .line 127
    .line 128
    const/16 v25, 0x0

    .line 129
    .line 130
    const/16 v26, 0x0

    .line 131
    .line 132
    const/16 v27, 0x0

    .line 133
    .line 134
    const/16 v28, 0x0

    .line 135
    .line 136
    const/16 v29, 0x0

    .line 137
    .line 138
    const/16 v30, 0x0

    .line 139
    .line 140
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    sget v6, Lcom/xj/language/R$string;->pc_cc_dinput_disabled:I

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v4, 0x2

    .line 160
    if-ne v0, v4, :cond_2

    .line 161
    .line 162
    move v10, v2

    .line 163
    goto :goto_2

    .line 164
    :cond_2
    move v10, v1

    .line 165
    :goto_2
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 166
    .line 167
    const v31, 0x3ffff2

    .line 168
    .line 169
    .line 170
    const/16 v32, 0x0

    .line 171
    .line 172
    const/4 v8, 0x2

    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v12, 0x0

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    const-wide/16 v18, 0x0

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    const/16 v21, 0x0

    .line 187
    .line 188
    const/16 v22, 0x0

    .line 189
    .line 190
    const/16 v23, 0x0

    .line 191
    .line 192
    const/16 v24, 0x0

    .line 193
    .line 194
    const/16 v25, 0x0

    .line 195
    .line 196
    const/16 v26, 0x0

    .line 197
    .line 198
    const/16 v27, 0x0

    .line 199
    .line 200
    const/16 v28, 0x0

    .line 201
    .line 202
    const/16 v29, 0x0

    .line 203
    .line 204
    const/16 v30, 0x0

    .line 205
    .line 206
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    return-object v3
.end method

.method public final F0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x200

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x400

    .line 10
    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x800

    .line 14
    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xc00

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x1000

    .line 22
    .line 23
    if-eq p0, v0, :cond_0

    # --- BannerHub: extended VRAM display strings ---
    const/16 v0, 0x1800
    if-eq p0, v0, :cond_bh6

    const/16 v0, 0x2000
    if-eq p0, v0, :cond_bh8

    const/16 v0, 0x3000
    if-eq p0, v0, :cond_bh12

    const/16 v0, 0x4000
    if-eq p0, v0, :cond_bh16
    # --- end BannerHub extended VRAM display strings ---

    .line 24
    .line 25
    sget p0, Lcom/xj/language/R$string;->pc_cc_cpu_core_no_limit:I

    .line 26
    .line 27
    invoke-static {p0}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "4 GB"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "3 GB"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "2 GB"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const-string p0, "1 GB"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    const-string p0, "512 MB"

    .line 45
    .line 46
    return-object p0

    :cond_bh6
    const-string p0, "6 GB"
    return-object p0

    :cond_bh8
    const-string p0, "8 GB"
    return-object p0

    :cond_bh12
    const-string p0, "12 GB"
    return-object p0

    :cond_bh16
    const-string p0, "16 GB"
    return-object p0
.end method

.method public final F1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p8

    .line 8
    .line 9
    const-string v4, "title"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "version"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "fileName"

    .line 20
    .line 21
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "displayName"

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 34
    .line 35
    move-object/from16 v6, p0

    .line 36
    .line 37
    iget-object v6, v6, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 38
    .line 39
    move/from16 v7, p1

    .line 40
    .line 41
    invoke-virtual {v5, v7, v6}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    new-instance v6, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 46
    .line 47
    const/16 v17, 0x3ff

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    const/4 v14, 0x0

    .line 59
    const/4 v15, 0x0

    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    invoke-direct/range {v6 .. v18}, Lcom/xj/winemu/bean/PcSettingDataEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xj/common/download/bean/SubData;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    move-object v7, v6

    .line 66
    move/from16 v6, p2

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setId(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setName(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersion(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move/from16 v0, p5

    .line 78
    .line 79
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersionCode(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v2}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setFileName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move/from16 v0, p7

    .line 86
    .line 87
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setContentType(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v3}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setDisplayName(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    invoke-static {v7}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v4, v5, v0}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-class p1, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 24
    .line 25
    return-object p0
.end method

.method public final G0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_MAX_MEMORY()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->f()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N0(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final H()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final H0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_GAME_RESOLUTION_H()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->g()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N0(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final H1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DISABLE_WINDOW_MANAGER()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final I()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final I0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_GAME_RESOLUTION_W()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->h()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N0(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final I1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENABLE_MANGO_HUD()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final J()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->b0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x4

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final J0()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_CLIENT()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final J1(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 11
    .line 12
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENVIRONMENT_VARIABLE()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final K()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->M0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ne p0, v2, :cond_0

    .line 9
    .line 10
    const-string p0, "BGRA8"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "RGBA8"

    .line 14
    .line 15
    return-object p0
.end method

.method public final K1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "version"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fileName"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "displayName"

    .line 17
    .line 18
    move-object/from16 v9, p6

    .line 19
    .line 20
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TRANSLATOR_FEX()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v8, 0x1

    .line 30
    move-object v1, p0

    .line 31
    move v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move v6, p4

    .line 35
    move-object v7, p5

    .line 36
    invoke-virtual/range {v1 .. v9}, Lcom/xj/winemu/settings/PcGameSettingOperations;->F1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final L()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final L0(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_SURFACE_FORMAT()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final L1(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "pc_game_is_32bit_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->label:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->k()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    move v0, v1

    .line 68
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultDxvkByDownload$1;->label:I

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, p1, :cond_3

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    move-object p1, p0

    .line 98
    move-object p0, v0

    .line 99
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_4
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public final M1(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    .line 1
    move/from16 v11, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v11, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getSubData()Lcom/xj/common/download/bean/SubData;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getContainer()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFramework()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v7}, Lcom/xj/winemu/settings/PcGameSettingOperations;->U1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xj/common/download/bean/SubData;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getTranslations()Lcom/xj/winemu/bean/TranslatorConfigs;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "\u8bbe\u7f6e\u63a8\u8350\u8f6c\u8bd1\u53c2\u6570-\u672a\u8bbe\u7f6e\u5bb9\u5668 "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->h2(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;Z)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 101
    .line 102
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->y()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v4, "getSelectImagefs = "

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->y()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    if-eqz v11, :cond_3

    .line 135
    .line 136
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getImagefs()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getImagefs()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getImagefs()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getImagefs()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getImagefs()Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    move-object v0, p0

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/xj/winemu/settings/PcGameSettingOperations;->W1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getComponent()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/4 v1, 0x2

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 200
    if-eqz v0, :cond_15

    .line 201
    .line 202
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getType()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    sget-object v5, Lcom/xj/winemu/api/bean/ComponentType;->GENERAL:Lcom/xj/winemu/api/bean/ComponentType;

    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/xj/winemu/api/bean/ComponentType;->getType()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-ne v4, v5, :cond_6

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "goldberg"

    .line 225
    .line 226
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->f()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_4

    .line 237
    .line 238
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_5
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_6
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getType()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    sget-object v5, Lcom/xj/winemu/api/bean/ComponentType;->DXVK:Lcom/xj/winemu/api/bean/ComponentType;

    .line 255
    .line 256
    invoke-virtual {v5}, Lcom/xj/winemu/api/bean/ComponentType;->getType()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    const-string v6, ""

    .line 261
    .line 262
    if-ne v4, v5, :cond_9

    .line 263
    .line 264
    sget-object v1, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->U()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v4, "getDxvkEntity = "

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v1, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->U()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    if-eqz v1, :cond_7

    .line 295
    .line 296
    if-eqz v11, :cond_4

    .line 297
    .line 298
    :cond_7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DXVK()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    move-object v7, v6

    .line 321
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getDisplayName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-nez v0, :cond_8

    .line 330
    .line 331
    move-object v8, v7

    .line 332
    goto :goto_1

    .line 333
    :cond_8
    move-object v8, v0

    .line 334
    :goto_1
    const/16 v9, 0x40

    .line 335
    .line 336
    const/4 v10, 0x0

    .line 337
    const/4 v7, 0x0

    .line 338
    move-object v0, p0

    .line 339
    invoke-static/range {v0 .. v10}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G1(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_9
    move-object v7, v6

    .line 345
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getType()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    sget-object v5, Lcom/xj/winemu/api/bean/ComponentType;->VKD3D:Lcom/xj/winemu/api/bean/ComponentType;

    .line 350
    .line 351
    invoke-virtual {v5}, Lcom/xj/winemu/api/bean/ComponentType;->getType()I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-ne v4, v5, :cond_c

    .line 356
    .line 357
    sget-object v1, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v4, "getVkd3dEntity = "

    .line 369
    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v1, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-eqz v1, :cond_a

    .line 388
    .line 389
    if-eqz v11, :cond_4

    .line 390
    .line 391
    :cond_a
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_VKD3D()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getDisplayName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    if-nez v0, :cond_b

    .line 422
    .line 423
    move-object v8, v7

    .line 424
    goto :goto_2

    .line 425
    :cond_b
    move-object v8, v0

    .line 426
    :goto_2
    const/16 v9, 0x40

    .line 427
    .line 428
    const/4 v10, 0x0

    .line 429
    const/4 v7, 0x0

    .line 430
    move-object v0, p0

    .line 431
    invoke-static/range {v0 .. v10}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G1(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :cond_c
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getType()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    sget-object v5, Lcom/xj/winemu/api/bean/ComponentType;->TRANSLATOR:Lcom/xj/winemu/api/bean/ComponentType;

    .line 441
    .line 442
    invoke-virtual {v5}, Lcom/xj/winemu/api/bean/ComponentType;->getType()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-ne v4, v5, :cond_12

    .line 447
    .line 448
    sget-object v4, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 455
    .line 456
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    const-string v8, "toLowerCase(...)"

    .line 461
    .line 462
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string v9, "box"

    .line 466
    .line 467
    invoke-static {v5, v9, v2, v1, v3}, Lkotlin/text/StringsKt;->f0(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    new-instance v10, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v14, "getTranslatorEntity isBox = "

    .line 477
    .line 478
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-static {v5, v9, v2, v1, v3}, Lkotlin/text/StringsKt;->f0(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_f

    .line 507
    .line 508
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    const-string v3, "getBoxTranslator = "

    .line 518
    .line 519
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v4, v1}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    if-eqz v1, :cond_d

    .line 537
    .line 538
    if-eqz v11, :cond_4

    .line 539
    .line 540
    :cond_d
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getDisplayName()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    if-nez v0, :cond_e

    .line 565
    .line 566
    move-object v6, v7

    .line 567
    :goto_3
    move-object v0, p0

    .line 568
    goto :goto_4

    .line 569
    :cond_e
    move-object v6, v0

    .line 570
    goto :goto_3

    .line 571
    :goto_4
    invoke-virtual/range {v0 .. v6}, Lcom/xj/winemu/settings/PcGameSettingOperations;->D1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :cond_f
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    const-string v3, "getFexTranslator = "

    .line 586
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v4, v1}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    if-eqz v1, :cond_10

    .line 605
    .line 606
    if-eqz v11, :cond_4

    .line 607
    .line 608
    :cond_10
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getDisplayName()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-nez v0, :cond_11

    .line 633
    .line 634
    move-object v6, v7

    .line 635
    :goto_5
    move-object v0, p0

    .line 636
    goto :goto_6

    .line 637
    :cond_11
    move-object v6, v0

    .line 638
    goto :goto_5

    .line 639
    :goto_6
    invoke-virtual/range {v0 .. v6}, Lcom/xj/winemu/settings/PcGameSettingOperations;->K1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_12
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getType()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    sget-object v2, Lcom/xj/winemu/api/bean/ComponentType;->GPU:Lcom/xj/winemu/api/bean/ComponentType;

    .line 649
    .line 650
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/ComponentType;->getType()I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-ne v1, v2, :cond_4

    .line 655
    .line 656
    sget-object v1, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 657
    .line 658
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    const-string v4, "getSelectGpu = "

    .line 668
    .line 669
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v1, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    if-eqz v1, :cond_13

    .line 687
    .line 688
    if-eqz v11, :cond_4

    .line 689
    .line 690
    :cond_13
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 691
    .line 692
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_GPU_DRIVER()I

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getId()I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersion()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getVersionCode()I

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getFileName()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v6

    .line 716
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getDisplayName()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    if-nez v0, :cond_14

    .line 721
    .line 722
    move-object v8, v7

    .line 723
    goto :goto_7

    .line 724
    :cond_14
    move-object v8, v0

    .line 725
    :goto_7
    const/16 v9, 0x40

    .line 726
    .line 727
    const/4 v10, 0x0

    .line 728
    const/4 v7, 0x0

    .line 729
    move-object v0, p0

    .line 730
    invoke-static/range {v0 .. v10}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G1(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_0

    .line 734
    .line 735
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i2(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;)V

    .line 736
    .line 737
    .line 738
    sget-object v4, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 739
    .line 740
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    new-array v2, v2, [Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 745
    .line 746
    invoke-interface {v12, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    const-string v6, "toString(...)"

    .line 755
    .line 756
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    .line 760
    .line 761
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .line 763
    .line 764
    const-string v7, "\u5b58\u50a8\u901a\u7528\u7ec4\u4ef6 "

    .line 765
    .line 766
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    const-string v5, " "

    .line 773
    .line 774
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    invoke-virtual {v4, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    new-instance v2, Lcom/xj/winemu/settings/h0;

    .line 788
    .line 789
    invoke-direct {v2}, Lcom/xj/winemu/settings/h0;-><init>()V

    .line 790
    .line 791
    .line 792
    new-instance v5, Lcom/xj/winemu/settings/i0;

    .line 793
    .line 794
    invoke-direct {v5, p0}, Lcom/xj/winemu/settings/i0;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;)V

    .line 795
    .line 796
    .line 797
    invoke-static {v12, v2, v5}, Lcom/xj/common/utils/KotlinUseUtilsKt;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 798
    .line 799
    .line 800
    const/4 v2, -0x1

    .line 801
    invoke-virtual {p0, v2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->q0(I)I

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    if-eq v5, v2, :cond_16

    .line 806
    .line 807
    if-eqz v11, :cond_17

    .line 808
    .line 809
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getAudio_driver()I

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .line 817
    .line 818
    const-string v6, "\u8bbe\u7f6e\u97f3\u9891\u9a71\u52a8 "

    .line 819
    .line 820
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    invoke-virtual {v4, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getAudio_driver()I

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    invoke-virtual {p0, v2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->T1(I)V

    .line 838
    .line 839
    .line 840
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getDirectx_panel()I

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    const-string v6, "\u8bbe\u7f6eDirectx\u6027\u80fd\u9762\u677f "

    .line 850
    .line 851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    invoke-virtual {v4, v2}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 865
    .line 866
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_HUB_TYPE()I

    .line 867
    .line 868
    .line 869
    move-result v5

    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getDirectx_panel()I

    .line 871
    .line 872
    .line 873
    move-result v6

    .line 874
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->p1(IIZ)V

    .line 875
    .line 876
    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getCpu_limitations()I

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    new-instance v6, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .line 885
    .line 886
    const-string v7, "\u8bbe\u7f6eCPU\u6838\u5fc3\u9650\u5236 "

    .line 887
    .line 888
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v5

    .line 898
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CORE_LIMIT()I

    .line 902
    .line 903
    .line 904
    move-result v5

    .line 905
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getCpu_limitations()I

    .line 906
    .line 907
    .line 908
    move-result v6

    .line 909
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->p1(IIZ)V

    .line 910
    .line 911
    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getStart_param()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v5

    .line 916
    iget-object v6, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 917
    .line 918
    new-instance v7, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .line 922
    .line 923
    const-string v8, "\u8bbe\u7f6e\u542f\u52a8\u53c2\u6570 "

    .line 924
    .line 925
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const-string v5, " to "

    .line 932
    .line 933
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getStart_param()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    if-eqz v5, :cond_18

    .line 951
    .line 952
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_BOOT_OPTION()I

    .line 953
    .line 954
    .line 955
    move-result v6

    .line 956
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v5

    .line 960
    invoke-virtual {p0, v6, v5, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->q1(ILjava/lang/String;Z)V

    .line 961
    .line 962
    .line 963
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getEnvironment()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    .line 968
    .line 969
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .line 971
    .line 972
    const-string v7, "\u8bbe\u7f6e\u73af\u5883\u53d8\u91cf "

    .line 973
    .line 974
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getEnvironment()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v5

    .line 991
    if-eqz v5, :cond_19

    .line 992
    .line 993
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENVIRONMENT_VARIABLE()I

    .line 994
    .line 995
    .line 996
    move-result v6

    .line 997
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v5

    .line 1001
    invoke-virtual {p0, v6, v5, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->q1(ILjava/lang/String;Z)V

    .line 1002
    .line 1003
    .line 1004
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getVideo_memory()I

    .line 1005
    .line 1006
    .line 1007
    move-result v5

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    .line 1012
    .line 1013
    const-string v7, "\u8bbe\u7f6e\u663e\u5b58\u9650\u5236 "

    .line 1014
    .line 1015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_MAX_MEMORY()I

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getVideo_memory()I

    .line 1033
    .line 1034
    .line 1035
    move-result v6

    .line 1036
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->p1(IIZ)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getController()Lcom/xj/winemu/bean/PcEmuControllerEntity;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    const-string v7, "\u8bbe\u7f6e\u63a7\u5236\u5668\u53c2\u6570 "

    .line 1049
    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual/range {p1 .. p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getController()Lcom/xj/winemu/bean/PcEmuControllerEntity;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v4

    .line 1067
    if-eqz v4, :cond_1a

    .line 1068
    .line 1069
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENABLE_DINPUT_INPUT()I

    .line 1070
    .line 1071
    .line 1072
    move-result v5

    .line 1073
    invoke-virtual {v4}, Lcom/xj/winemu/bean/PcEmuControllerEntity;->getDinput()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v6

    .line 1077
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r1(IZZ)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENABLE_XINPUT_INPUT()I

    .line 1081
    .line 1082
    .line 1083
    move-result v5

    .line 1084
    invoke-virtual {v4}, Lcom/xj/winemu/bean/PcEmuControllerEntity;->getXinput()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v6

    .line 1088
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r1(IZZ)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_XBOX_LAYOUT()I

    .line 1092
    .line 1093
    .line 1094
    move-result v5

    .line 1095
    invoke-virtual {v4}, Lcom/xj/winemu/bean/PcEmuControllerEntity;->getXboxLayout()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v6

    .line 1099
    invoke-virtual {p0, v5, v6, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r1(IZZ)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_OPEN_VIBRATION()I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    invoke-virtual {v4}, Lcom/xj/winemu/bean/PcEmuControllerEntity;->getVibration()Z

    .line 1107
    .line 1108
    .line 1109
    move-result v4

    .line 1110
    invoke-virtual {p0, v2, v4, v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r1(IZZ)V

    .line 1111
    .line 1112
    .line 1113
    :cond_1a
    new-instance v0, Lcom/xj/winemu/bean/UpdateGameRecommendConfigEvent;

    .line 1114
    .line 1115
    invoke-direct {v0}, Lcom/xj/winemu/bean/UpdateGameRecommendConfigEvent;-><init>()V

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v0, v3, v1, v3}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1119
    .line 1120
    .line 1121
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1122
    .line 1123
    return-object v0
.end method

.method public final N()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final N0(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->label:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->l()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    move v0, v1

    .line 68
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultGpuByDownload$1;->label:I

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, p1, :cond_3

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    move-object p1, p0

    .line 98
    move-object p0, v0

    .line 99
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_4
    new-instance v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 109
    .line 110
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget p1, Lcom/xj/language/R$string;->pc_gpu_official_driver:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string p0, "getString(...)"

    .line 121
    .line 122
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/16 v11, 0x3fc

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v1, -0x1

    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    invoke-direct/range {v0 .. v12}, Lcom/xj/winemu/bean/PcSettingDataEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xj/common/download/bean/SubData;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    return-object v0
.end method

.method public final O0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    iget-object v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_5

    .line 68
    .line 69
    sget-object p1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->p()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 78
    .line 79
    move v3, v2

    .line 80
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    move v4, v3

    .line 85
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move v5, v4

    .line 90
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move v7, v5

    .line 95
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    iput v7, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectVkd3dOrDefault$1;->label:I

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_3

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_3
    move-object v0, p0

    .line 113
    move-object p0, p1

    .line 114
    move-object p1, v1

    .line 115
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_4
    return-object v0

    .line 125
    :cond_5
    return-object p0
.end method

.method public final P()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "_"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final P0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_SKIP_FILE_CHECK()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i0(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final P1(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_IMAGE_QUALITY_IMPROVE_PLUGIN_DISABLE()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final Q()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final Q0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_ENABLE_CLOUD_SAVES()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i0(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final Q1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_LANGUAGE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final R(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->label:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->p()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    move v0, v1

    .line 68
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getDefaultVkd3dByDownload$1;->label:I

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, p1, :cond_3

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    move-object p1, p0

    .line 98
    move-object p0, v0

    .line 99
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_4
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public final R0()Lcom/xj/common/service/bean/SteamGameLaunchOption;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_LAUNCH_OPTION()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-class v0, Lcom/xj/common/service/bean/SteamGameLaunchOption;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/xj/common/service/bean/SteamGameLaunchOption;

    .line 30
    .line 31
    return-object p0
.end method

.method public final R1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "pc_ls_enable_log_server"

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final S(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DISABLE_WINDOW_MANAGER()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final S0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_SILENT_MODE()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i0(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final S1(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_LAUNCH_OPTION_REMEMBER()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final T0()Ljava/util/List;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_STRONG_MEM()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->j()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/xj/language/R$string;->tp_strong_mem_0:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v8, v2

    .line 47
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 48
    .line 49
    const v29, 0x3ffff2

    .line 50
    .line 51
    .line 52
    const/16 v30, 0x0

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const-wide/16 v16, 0x0

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v25, 0x0

    .line 79
    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget v5, Lcom/xj/language/R$string;->tp_strong_mem_1:I

    .line 93
    .line 94
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-ne v0, v3, :cond_1

    .line 99
    .line 100
    move v9, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v9, v2

    .line 103
    :goto_1
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 104
    .line 105
    const v30, 0x3ffff2

    .line 106
    .line 107
    .line 108
    const/16 v31, 0x0

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    sget v5, Lcom/xj/language/R$string;->tp_strong_mem_2:I

    .line 150
    .line 151
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-ne v0, v4, :cond_2

    .line 156
    .line 157
    move v9, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move v9, v2

    .line 160
    :goto_2
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 161
    .line 162
    const v30, 0x3ffff2

    .line 163
    .line 164
    .line 165
    const/16 v31, 0x0

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const-wide/16 v17, 0x0

    .line 177
    .line 178
    const/16 v19, 0x0

    .line 179
    .line 180
    const/16 v20, 0x0

    .line 181
    .line 182
    const/16 v21, 0x0

    .line 183
    .line 184
    const/16 v22, 0x0

    .line 185
    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/16 v25, 0x0

    .line 191
    .line 192
    const/16 v26, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const/16 v28, 0x0

    .line 197
    .line 198
    const/16 v29, 0x0

    .line 199
    .line 200
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    sget v4, Lcom/xj/language/R$string;->tp_strong_mem_3:I

    .line 207
    .line 208
    invoke-static {v4}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    const/4 v4, 0x3

    .line 213
    if-ne v0, v4, :cond_3

    .line 214
    .line 215
    move v8, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_3
    move v8, v2

    .line 218
    :goto_3
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 219
    .line 220
    const v29, 0x3ffff2

    .line 221
    .line 222
    .line 223
    const/16 v30, 0x0

    .line 224
    .line 225
    const/4 v6, 0x3

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v11, 0x0

    .line 229
    const/4 v12, 0x0

    .line 230
    const/4 v13, 0x0

    .line 231
    const/4 v14, 0x0

    .line 232
    const/4 v15, 0x0

    .line 233
    const-wide/16 v16, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v20, 0x0

    .line 240
    .line 241
    const/16 v21, 0x0

    .line 242
    .line 243
    const/16 v22, 0x0

    .line 244
    .line 245
    const/16 v23, 0x0

    .line 246
    .line 247
    const/16 v24, 0x0

    .line 248
    .line 249
    const/16 v25, 0x0

    .line 250
    .line 251
    const/16 v26, 0x0

    .line 252
    .line 253
    const/16 v27, 0x0

    .line 254
    .line 255
    const/16 v28, 0x0

    .line 256
    .line 257
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    return-object v1
.end method

.method public final T1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_AUDIO_DRIVER()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final U()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DXVK()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final U0()Ljava/util/List;
    .locals 31

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    invoke-static {v3, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->M0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v7, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v7, v1

    .line 20
    :goto_0
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 21
    .line 22
    const v28, 0x3ffff2

    .line 23
    .line 24
    .line 25
    const/16 v29, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v8, "RGBA8"

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const-wide/16 v15, 0x0

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const/16 v19, 0x0

    .line 44
    .line 45
    const/16 v20, 0x0

    .line 46
    .line 47
    const/16 v21, 0x0

    .line 48
    .line 49
    const/16 v22, 0x0

    .line 50
    .line 51
    const/16 v23, 0x0

    .line 52
    .line 53
    const/16 v24, 0x0

    .line 54
    .line 55
    const/16 v25, 0x0

    .line 56
    .line 57
    const/16 v26, 0x0

    .line 58
    .line 59
    const/16 v27, 0x0

    .line 60
    .line 61
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    move v8, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v8, v1

    .line 72
    :goto_1
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 73
    .line 74
    const v29, 0x3ffff2

    .line 75
    .line 76
    .line 77
    const/16 v30, 0x0

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    const-string v9, "BGRA8"

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v15, 0x0

    .line 89
    const-wide/16 v16, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    const/16 v24, 0x0

    .line 104
    .line 105
    const/16 v25, 0x0

    .line 106
    .line 107
    const/16 v26, 0x0

    .line 108
    .line 109
    const/16 v27, 0x0

    .line 110
    .line 111
    const/16 v28, 0x0

    .line 112
    .line 113
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    return-object v3
.end method

.method public final U1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xj/common/download/bean/SubData;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    const-string v4, "title"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "version"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "fileName"

    .line 20
    .line 21
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 25
    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "setSelectContainer "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v6, " - "

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 59
    .line 60
    sget-object v6, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CONTAINER_LIST()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x2

    .line 68
    invoke-static {v5, v6, v7, v8, v7}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    new-instance v6, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 73
    .line 74
    const/16 v17, 0x3ff

    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v12, 0x0

    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v14, 0x0

    .line 86
    const/4 v15, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    invoke-direct/range {v6 .. v18}, Lcom/xj/winemu/bean/PcSettingDataEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xj/common/download/bean/SubData;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    move-object v7, v6

    .line 93
    move/from16 v6, p1

    .line 94
    .line 95
    invoke-virtual {v7, v6}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setId(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setName(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersion(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move/from16 v0, p4

    .line 105
    .line 106
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersionCode(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v2}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setFileName(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v3, :cond_0

    .line 113
    .line 114
    invoke-virtual {v7, v3}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setFramework(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    move-object/from16 v0, p6

    .line 118
    .line 119
    invoke-virtual {v7, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setSubData(Lcom/xj/common/download/bean/SubData;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    invoke-static {v7}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v4, v5, v0}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final V(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENABLE_MANGO_HUD()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final V0()Ljava/util/List;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_TSO_MODE()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->k()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/xj/language/R$string;->winemu_setting_v_fastest:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/xj/common/utils/VUiKit;->d(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const-string v2, "getString(...)"

    .line 41
    .line 42
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    move v6, v5

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    move v8, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v8, 0x0

    .line 52
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 53
    .line 54
    const v29, 0x3ffff2

    .line 55
    .line 56
    .line 57
    const/16 v30, 0x0

    .line 58
    .line 59
    move v7, v6

    .line 60
    const/4 v6, 0x0

    .line 61
    move v10, v7

    .line 62
    const/4 v7, 0x0

    .line 63
    move v11, v10

    .line 64
    const/4 v10, 0x0

    .line 65
    move v12, v11

    .line 66
    const/4 v11, 0x0

    .line 67
    move v13, v12

    .line 68
    const/4 v12, 0x0

    .line 69
    move v14, v13

    .line 70
    const/4 v13, 0x0

    .line 71
    move v15, v14

    .line 72
    const/4 v14, 0x0

    .line 73
    move/from16 v16, v15

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    move/from16 v18, v16

    .line 77
    .line 78
    const-wide/16 v16, 0x0

    .line 79
    .line 80
    move/from16 v19, v18

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    move/from16 v20, v19

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    move/from16 v21, v20

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    move/from16 v22, v21

    .line 93
    .line 94
    const/16 v21, 0x0

    .line 95
    .line 96
    move/from16 v23, v22

    .line 97
    .line 98
    const/16 v22, 0x0

    .line 99
    .line 100
    move/from16 v24, v23

    .line 101
    .line 102
    const/16 v23, 0x0

    .line 103
    .line 104
    move/from16 v25, v24

    .line 105
    .line 106
    const/16 v24, 0x0

    .line 107
    .line 108
    move/from16 v26, v25

    .line 109
    .line 110
    const/16 v25, 0x0

    .line 111
    .line 112
    move/from16 v27, v26

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    move/from16 v28, v27

    .line 117
    .line 118
    const/16 v27, 0x0

    .line 119
    .line 120
    move/from16 v31, v28

    .line 121
    .line 122
    const/16 v28, 0x0

    .line 123
    .line 124
    move/from16 v3, v31

    .line 125
    .line 126
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget v5, Lcom/xj/language/R$string;->winemu_setting_v_normal:I

    .line 133
    .line 134
    invoke-static {v5}, Lcom/xj/common/utils/VUiKit;->d(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    if-ne v0, v3, :cond_1

    .line 142
    .line 143
    move v9, v3

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    const/4 v9, 0x0

    .line 146
    :goto_1
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 147
    .line 148
    const v30, 0x3ffff2

    .line 149
    .line 150
    .line 151
    const/16 v31, 0x0

    .line 152
    .line 153
    const/4 v7, 0x1

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v11, 0x0

    .line 156
    const/4 v12, 0x0

    .line 157
    const/4 v13, 0x0

    .line 158
    const/4 v14, 0x0

    .line 159
    const/4 v15, 0x0

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    const-wide/16 v17, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0x0

    .line 167
    .line 168
    const/16 v21, 0x0

    .line 169
    .line 170
    const/16 v22, 0x0

    .line 171
    .line 172
    const/16 v23, 0x0

    .line 173
    .line 174
    const/16 v24, 0x0

    .line 175
    .line 176
    const/16 v25, 0x0

    .line 177
    .line 178
    const/16 v26, 0x0

    .line 179
    .line 180
    const/16 v27, 0x0

    .line 181
    .line 182
    const/16 v28, 0x0

    .line 183
    .line 184
    const/16 v29, 0x0

    .line 185
    .line 186
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    sget v5, Lcom/xj/language/R$string;->winemu_setting_v_slowest:I

    .line 193
    .line 194
    invoke-static {v5}, Lcom/xj/common/utils/VUiKit;->d(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    if-ne v0, v4, :cond_2

    .line 202
    .line 203
    move v9, v3

    .line 204
    goto :goto_2

    .line 205
    :cond_2
    const/4 v9, 0x0

    .line 206
    :goto_2
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 207
    .line 208
    const v30, 0x3ffff2

    .line 209
    .line 210
    .line 211
    const/16 v31, 0x0

    .line 212
    .line 213
    const/4 v7, 0x2

    .line 214
    const/4 v8, 0x0

    .line 215
    const/4 v11, 0x0

    .line 216
    const/4 v12, 0x0

    .line 217
    const/4 v13, 0x0

    .line 218
    const/4 v14, 0x0

    .line 219
    const/4 v15, 0x0

    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const-wide/16 v17, 0x0

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const/16 v20, 0x0

    .line 227
    .line 228
    const/16 v21, 0x0

    .line 229
    .line 230
    const/16 v22, 0x0

    .line 231
    .line 232
    const/16 v23, 0x0

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    const/16 v25, 0x0

    .line 237
    .line 238
    const/16 v26, 0x0

    .line 239
    .line 240
    const/16 v27, 0x0

    .line 241
    .line 242
    const/16 v28, 0x0

    .line 243
    .line 244
    const/16 v29, 0x0

    .line 245
    .line 246
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    return-object v1
.end method

.method public final V1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DINPUT_LIBRARY()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final W0()Lcom/xj/winemu/bean/Box64TranslatorConfig;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 8
    .line 9
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_BOX_TP_CONFIG()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/xj/winemu/bean/Box64TranslatorConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "getUserCustomBoxTranslator("

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ") , failure : "

    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Lcom/xj/common/utils/XjLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    :cond_1
    check-cast v0, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 93
    .line 94
    return-object v0
.end method

.method public final W1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const-string v3, "title"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "version"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "fileName"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->t()Lcom/blankj/utilcode/util/SPUtils;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-object v5, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_IMAGEFS()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x2

    .line 36
    invoke-static {v3, v5, v6, v7, v6}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v5, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 41
    .line 42
    const/16 v16, 0x3ff

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    const/4 v15, 0x0

    .line 56
    invoke-direct/range {v5 .. v17}, Lcom/xj/winemu/bean/PcSettingDataEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xj/common/download/bean/SubData;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    move-object v6, v5

    .line 60
    move/from16 v5, p1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setId(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersion(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move/from16 v0, p4

    .line 72
    .line 73
    invoke-virtual {v6, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setVersionCode(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v2}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setFileName(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    invoke-static {v6}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v4, v3, v0}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final X()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_ENVIRONMENT_VARIABLE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "getString(...)"

    .line 24
    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final X0()Lcom/xj/winemu/bean/FEXTranslatorConfig;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 8
    .line 9
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_FEX_TP_CONFIG()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/xj/winemu/bean/FEXTranslatorConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "getUserCustomFexTranslator("

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ") , failure : "

    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Lcom/xj/common/utils/XjLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    :cond_1
    check-cast v0, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 93
    .line 94
    return-object v0
.end method

.method public final X1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "version"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fileName"

    .line 12
    .line 13
    move-object/from16 v7, p5

    .line 14
    .line 15
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_CLIENT()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez p6, :cond_0

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    move-object v9, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object/from16 v9, p6

    .line 31
    .line 32
    :goto_0
    const/16 v10, 0x40

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v1, p0

    .line 37
    move v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p3

    .line 40
    move/from16 v6, p4

    .line 41
    .line 42
    invoke-static/range {v1 .. v11}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G1(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final Y()Ljava/util/Map;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->X()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->N(Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 18
    .line 19
    const-string v1, "\u73af\u5883\u53d8\u91cf\u683c\u5f0f\u6709\u8bef"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/xj/common/utils/LogA;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final Y0(Lcom/xj/winemu/api/bean/Translator;)Lcom/xj/winemu/bean/ITranslatorConfig;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingOperations$WhenMappings;->a:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->W0()Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->X0()Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final Z()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 5

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TRANSLATOR_FEX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->m0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "toLowerCase(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x2

    .line 39
    const-string v4, "box"

    .line 40
    .line 41
    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->f0(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setContentType(I)V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method

.method public final Z0()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_VKD3D()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final Z1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_SURFACE_FORMAT()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final a0()Ljava/util/List;
    .locals 31

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->A0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    move v8, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v8, v3

    .line 19
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 20
    .line 21
    const v29, 0x3ffff2

    .line 22
    .line 23
    .line 24
    const/16 v30, 0x0

    .line 25
    .line 26
    const/16 v6, 0x80

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const-string v9, "128"

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v14, 0x0

    .line 36
    const/4 v15, 0x0

    .line 37
    const-wide/16 v16, 0x0

    .line 38
    .line 39
    const/16 v18, 0x0

    .line 40
    .line 41
    const/16 v19, 0x0

    .line 42
    .line 43
    const/16 v20, 0x0

    .line 44
    .line 45
    const/16 v21, 0x0

    .line 46
    .line 47
    const/16 v22, 0x0

    .line 48
    .line 49
    const/16 v23, 0x0

    .line 50
    .line 51
    const/16 v24, 0x0

    .line 52
    .line 53
    const/16 v25, 0x0

    .line 54
    .line 55
    const/16 v26, 0x0

    .line 56
    .line 57
    const/16 v27, 0x0

    .line 58
    .line 59
    const/16 v28, 0x0

    .line 60
    .line 61
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x200

    .line 68
    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    .line 71
    move v8, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v8, v3

    .line 74
    :goto_1
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 75
    .line 76
    const v29, 0x3ffff2

    .line 77
    .line 78
    .line 79
    const/16 v30, 0x0

    .line 80
    .line 81
    const/16 v6, 0x200

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const-string v9, "512"

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    const/4 v15, 0x0

    .line 92
    const-wide/16 v16, 0x0

    .line 93
    .line 94
    const/16 v18, 0x0

    .line 95
    .line 96
    const/16 v19, 0x0

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/16 v21, 0x0

    .line 101
    .line 102
    const/16 v22, 0x0

    .line 103
    .line 104
    const/16 v23, 0x0

    .line 105
    .line 106
    const/16 v24, 0x0

    .line 107
    .line 108
    const/16 v25, 0x0

    .line 109
    .line 110
    const/16 v26, 0x0

    .line 111
    .line 112
    const/16 v27, 0x0

    .line 113
    .line 114
    const/16 v28, 0x0

    .line 115
    .line 116
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const/16 v2, 0x400

    .line 123
    .line 124
    if-ne v0, v2, :cond_2

    .line 125
    .line 126
    move v8, v4

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    move v8, v3

    .line 129
    :goto_2
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 130
    .line 131
    const v29, 0x3ffff2

    .line 132
    .line 133
    .line 134
    const/16 v30, 0x0

    .line 135
    .line 136
    const/16 v6, 0x400

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    const-string v9, "1024"

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x0

    .line 147
    const-wide/16 v16, 0x0

    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    const/16 v20, 0x0

    .line 154
    .line 155
    const/16 v21, 0x0

    .line 156
    .line 157
    const/16 v22, 0x0

    .line 158
    .line 159
    const/16 v23, 0x0

    .line 160
    .line 161
    const/16 v24, 0x0

    .line 162
    .line 163
    const/16 v25, 0x0

    .line 164
    .line 165
    const/16 v26, 0x0

    .line 166
    .line 167
    const/16 v27, 0x0

    .line 168
    .line 169
    const/16 v28, 0x0

    .line 170
    .line 171
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    return-object v1
.end method

.method public final a1()Ljava/util/List;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_WEAK_BARRIER()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->l()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/xj/language/R$string;->tp_weak_barrier_0:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v8, v2

    .line 47
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 48
    .line 49
    const v29, 0x3ffff2

    .line 50
    .line 51
    .line 52
    const/16 v30, 0x0

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const-wide/16 v16, 0x0

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v25, 0x0

    .line 79
    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget v5, Lcom/xj/language/R$string;->tp_weak_barrier_1:I

    .line 93
    .line 94
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-ne v0, v3, :cond_1

    .line 99
    .line 100
    move v9, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v9, v2

    .line 103
    :goto_1
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 104
    .line 105
    const v30, 0x3ffff2

    .line 106
    .line 107
    .line 108
    const/16 v31, 0x0

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    sget v5, Lcom/xj/language/R$string;->tp_weak_barrier_2:I

    .line 150
    .line 151
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-ne v0, v4, :cond_2

    .line 156
    .line 157
    move v9, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move v9, v2

    .line 160
    :goto_2
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 161
    .line 162
    const v30, 0x3ffff2

    .line 163
    .line 164
    .line 165
    const/16 v31, 0x0

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const-wide/16 v17, 0x0

    .line 177
    .line 178
    const/16 v19, 0x0

    .line 179
    .line 180
    const/16 v20, 0x0

    .line 181
    .line 182
    const/16 v21, 0x0

    .line 183
    .line 184
    const/16 v22, 0x0

    .line 185
    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/16 v25, 0x0

    .line 191
    .line 192
    const/16 v26, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const/16 v28, 0x0

    .line 197
    .line 198
    const/16 v29, 0x0

    .line 199
    .line 200
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    return-object v1
.end method

.method public final a2(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_SOFT_INPUT_AUTO_SHOW_WHEN_NEED()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "pc_game_is_32bit_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final b1()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "pc_ls_wine_debug_params"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "getString(...)"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final b2(Lcom/xj/common/service/bean/SteamGameLaunchOption;)V
    .locals 3

    .line 1
    const-string v0, "launchOption"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 11
    .line 12
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_LAUNCH_OPTION()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c0()Lcom/blankj/utilcode/util/SPUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->q(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c1()Ljava/util/List;
    .locals 31

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_X87_MODE()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    sget v3, Lcom/xj/language/R$string;->winemu_setting_v_fast:I

    .line 30
    .line 31
    invoke-static {v3}, Lcom/xj/common/utils/VUiKit;->d(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const-string v3, "getString(...)"

    .line 36
    .line 37
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    move v5, v4

    .line 44
    move v7, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v7, v2

    .line 47
    move v5, v4

    .line 48
    :goto_0
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 49
    .line 50
    const v28, 0x3ffff2

    .line 51
    .line 52
    .line 53
    const/16 v29, 0x0

    .line 54
    .line 55
    move v6, v5

    .line 56
    const/4 v5, 0x0

    .line 57
    move v9, v6

    .line 58
    const/4 v6, 0x0

    .line 59
    move v10, v9

    .line 60
    const/4 v9, 0x0

    .line 61
    move v11, v10

    .line 62
    const/4 v10, 0x0

    .line 63
    move v12, v11

    .line 64
    const/4 v11, 0x0

    .line 65
    move v13, v12

    .line 66
    const/4 v12, 0x0

    .line 67
    move v14, v13

    .line 68
    const/4 v13, 0x0

    .line 69
    move v15, v14

    .line 70
    const/4 v14, 0x0

    .line 71
    move/from16 v17, v15

    .line 72
    .line 73
    const-wide/16 v15, 0x0

    .line 74
    .line 75
    move/from16 v18, v17

    .line 76
    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    move/from16 v19, v18

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    move/from16 v20, v19

    .line 84
    .line 85
    const/16 v19, 0x0

    .line 86
    .line 87
    move/from16 v21, v20

    .line 88
    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    move/from16 v22, v21

    .line 92
    .line 93
    const/16 v21, 0x0

    .line 94
    .line 95
    move/from16 v23, v22

    .line 96
    .line 97
    const/16 v22, 0x0

    .line 98
    .line 99
    move/from16 v24, v23

    .line 100
    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    move/from16 v25, v24

    .line 104
    .line 105
    const/16 v24, 0x0

    .line 106
    .line 107
    move/from16 v26, v25

    .line 108
    .line 109
    const/16 v25, 0x0

    .line 110
    .line 111
    move/from16 v27, v26

    .line 112
    .line 113
    const/16 v26, 0x0

    .line 114
    .line 115
    move/from16 v30, v27

    .line 116
    .line 117
    const/16 v27, 0x0

    .line 118
    .line 119
    move/from16 v2, v30

    .line 120
    .line 121
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    sget v4, Lcom/xj/language/R$string;->winemu_setting_v_slow:I

    .line 128
    .line 129
    invoke-static {v4}, Lcom/xj/common/utils/VUiKit;->d(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    if-ne v0, v2, :cond_1

    .line 137
    .line 138
    move v8, v2

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    const/4 v8, 0x0

    .line 141
    :goto_1
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 142
    .line 143
    const v29, 0x3ffff2

    .line 144
    .line 145
    .line 146
    const/16 v30, 0x0

    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v11, 0x0

    .line 152
    const/4 v12, 0x0

    .line 153
    const/4 v13, 0x0

    .line 154
    const/4 v14, 0x0

    .line 155
    const/4 v15, 0x0

    .line 156
    const-wide/16 v16, 0x0

    .line 157
    .line 158
    const/16 v18, 0x0

    .line 159
    .line 160
    const/16 v19, 0x0

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    const/16 v21, 0x0

    .line 165
    .line 166
    const/16 v22, 0x0

    .line 167
    .line 168
    const/16 v23, 0x0

    .line 169
    .line 170
    const/16 v24, 0x0

    .line 171
    .line 172
    const/16 v25, 0x0

    .line 173
    .line 174
    const/16 v26, 0x0

    .line 175
    .line 176
    const/16 v27, 0x0

    .line 177
    .line 178
    const/16 v28, 0x0

    .line 179
    .line 180
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    return-object v1
.end method

.method public final c2()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->u()Lcom/blankj/utilcode/util/SPUtils;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "pc_ls_last_update_wine_app_version_code"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "setUpgradeContainerAppVersion \uff0ccode = "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " "

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lcom/xj/common/utils/XjLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final d0()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "pc_d_general_component"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/xj/winemu/settings/PcGameSettingOperations$getGeneralComponents$1$1;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getGeneralComponents$1$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/Collection;

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->p()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_1
    sget-object v1, Lcom/xj/common/utils/LogA;->a:Lcom/xj/common/utils/LogA;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "\u89e3\u6790\u901a\u7528\u7ec4\u4ef6\u5f02\u5e38 "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Lcom/xj/common/utils/LogA;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public final d1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_BOX_TP_CONFIG()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move p0, v0

    .line 37
    :goto_1
    xor-int/2addr p0, v0

    .line 38
    return p0
.end method

.method public final d2(Lcom/xj/winemu/bean/Box64TranslatorConfig;)V
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 15
    .line 16
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_BOX_TP_CONFIG()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e0(I)Ljava/util/List;
    .locals 33

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    invoke-static {v1, v4, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->e()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget v4, Lcom/xj/language/R$string;->pc_s_ht_close:I

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const-string v2, "getString(...)"

    .line 41
    .line 42
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    move v6, v5

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    move v8, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v8, 0x0

    .line 52
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 53
    .line 54
    const v29, 0x3ffff2

    .line 55
    .line 56
    .line 57
    const/16 v30, 0x0

    .line 58
    .line 59
    move v7, v6

    .line 60
    const/4 v6, 0x0

    .line 61
    move v10, v7

    .line 62
    const/4 v7, 0x0

    .line 63
    move v11, v10

    .line 64
    const/4 v10, 0x0

    .line 65
    move v12, v11

    .line 66
    const/4 v11, 0x0

    .line 67
    move v13, v12

    .line 68
    const/4 v12, 0x0

    .line 69
    move v14, v13

    .line 70
    const/4 v13, 0x0

    .line 71
    move v15, v14

    .line 72
    const/4 v14, 0x0

    .line 73
    move/from16 v16, v15

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    move/from16 v18, v16

    .line 77
    .line 78
    const-wide/16 v16, 0x0

    .line 79
    .line 80
    move/from16 v19, v18

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    move/from16 v20, v19

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    move/from16 v21, v20

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    move/from16 v22, v21

    .line 93
    .line 94
    const/16 v21, 0x0

    .line 95
    .line 96
    move/from16 v23, v22

    .line 97
    .line 98
    const/16 v22, 0x0

    .line 99
    .line 100
    move/from16 v24, v23

    .line 101
    .line 102
    const/16 v23, 0x0

    .line 103
    .line 104
    move/from16 v25, v24

    .line 105
    .line 106
    const/16 v24, 0x0

    .line 107
    .line 108
    move/from16 v26, v25

    .line 109
    .line 110
    const/16 v25, 0x0

    .line 111
    .line 112
    move/from16 v27, v26

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    move/from16 v28, v27

    .line 117
    .line 118
    const/16 v27, 0x0

    .line 119
    .line 120
    move/from16 v31, v28

    .line 121
    .line 122
    const/16 v28, 0x0

    .line 123
    .line 124
    move/from16 v4, v31

    .line 125
    .line 126
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    sget v6, Lcom/xj/language/R$string;->pc_s_ht_simplify:I

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-ne v0, v4, :cond_1

    .line 146
    .line 147
    move v10, v4

    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const/4 v10, 0x0

    .line 150
    :goto_1
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 151
    .line 152
    const v31, 0x3ffff2

    .line 153
    .line 154
    .line 155
    const/16 v32, 0x0

    .line 156
    .line 157
    const/4 v8, 0x1

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v13, 0x0

    .line 161
    const/4 v14, 0x0

    .line 162
    const/4 v15, 0x0

    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    const/16 v17, 0x0

    .line 166
    .line 167
    const-wide/16 v18, 0x0

    .line 168
    .line 169
    const/16 v20, 0x0

    .line 170
    .line 171
    const/16 v21, 0x0

    .line 172
    .line 173
    const/16 v22, 0x0

    .line 174
    .line 175
    const/16 v23, 0x0

    .line 176
    .line 177
    const/16 v24, 0x0

    .line 178
    .line 179
    const/16 v25, 0x0

    .line 180
    .line 181
    const/16 v26, 0x0

    .line 182
    .line 183
    const/16 v27, 0x0

    .line 184
    .line 185
    const/16 v28, 0x0

    .line 186
    .line 187
    const/16 v29, 0x0

    .line 188
    .line 189
    const/16 v30, 0x0

    .line 190
    .line 191
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    sget v6, Lcom/xj/language/R$string;->pc_s_ht_full:I

    .line 202
    .line 203
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    if-ne v0, v3, :cond_2

    .line 211
    .line 212
    move v10, v4

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    const/4 v10, 0x0

    .line 215
    :goto_2
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 216
    .line 217
    const v31, 0x3ffff2

    .line 218
    .line 219
    .line 220
    const/16 v32, 0x0

    .line 221
    .line 222
    const/4 v8, 0x2

    .line 223
    const/4 v9, 0x0

    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v13, 0x0

    .line 226
    const/4 v14, 0x0

    .line 227
    const/4 v15, 0x0

    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const-wide/16 v18, 0x0

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    const/16 v22, 0x0

    .line 239
    .line 240
    const/16 v23, 0x0

    .line 241
    .line 242
    const/16 v24, 0x0

    .line 243
    .line 244
    const/16 v25, 0x0

    .line 245
    .line 246
    const/16 v26, 0x0

    .line 247
    .line 248
    const/16 v27, 0x0

    .line 249
    .line 250
    const/16 v28, 0x0

    .line 251
    .line 252
    const/16 v29, 0x0

    .line 253
    .line 254
    const/16 v30, 0x0

    .line 255
    .line 256
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    return-object v1
.end method

.method public final e1()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_FEX_TP_CONFIG()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x1

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move p0, v0

    .line 36
    :goto_1
    xor-int/2addr p0, v0

    .line 37
    return p0
.end method

.method public final e2(Lcom/xj/winemu/bean/FEXTranslatorConfig;)V
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 15
    .line 16
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_CUSTOM_FEX_TP_CONFIG()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final f()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/xj/winemu/settings/SettingConstant;->a:Lcom/xj/winemu/settings/SettingConstant;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/SettingConstant;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->g0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->c:Ljava/util/List;

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public final f1(Lcom/xj/winemu/api/bean/Translator;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingOperations$WhenMappings;->a:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->d1()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->e1()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final f2(Lcom/xj/winemu/bean/ITranslatorConfig;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->d2(Lcom/xj/winemu/bean/Box64TranslatorConfig;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->e2(Lcom/xj/winemu/bean/FEXTranslatorConfig;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->m()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersionCode()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getDisplayName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    move-object v1, p0

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/xj/winemu/settings/PcGameSettingOperations;->X1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final g0()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_LANGUAGE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final g1()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->u()Lcom/blankj/utilcode/util/SPUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "pc_ls_last_update_wine_app_version_code"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eq p0, v1, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final g2(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "pc_ls_wine_debug_params"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CONTAINER_LIST()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final h0()Ljava/util/List;
    .locals 33

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->g0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget v3, Lcom/xj/language/R$string;->winemu_language_auto:I

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    const-string v2, "getString(...)"

    .line 21
    .line 22
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    move v7, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v7, v2

    .line 32
    :goto_0
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 33
    .line 34
    const v28, 0x3ffef3

    .line 35
    .line 36
    .line 37
    const/16 v29, 0x0

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    const-wide/16 v15, 0x0

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/16 v19, 0x0

    .line 54
    .line 55
    const/16 v20, 0x0

    .line 56
    .line 57
    const/16 v21, 0x0

    .line 58
    .line 59
    const/16 v22, 0x0

    .line 60
    .line 61
    const/16 v23, 0x0

    .line 62
    .line 63
    const/16 v24, 0x0

    .line 64
    .line 65
    const/16 v25, 0x0

    .line 66
    .line 67
    const/16 v26, 0x0

    .line 68
    .line 69
    const/16 v27, 0x0

    .line 70
    .line 71
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-object/from16 v4, p0

    .line 78
    .line 79
    iget-object v4, v4, Lcom/xj/winemu/settings/PcGameSettingOperations;->c:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    move v5, v2

    .line 86
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    add-int/2addr v5, v3

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    move-object v11, v6

    .line 98
    check-cast v11, Ljava/lang/String;

    .line 99
    .line 100
    if-ne v0, v5, :cond_1

    .line 101
    .line 102
    move v10, v3

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    move v10, v2

    .line 105
    :goto_2
    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 106
    .line 107
    const v31, 0x3ffef3

    .line 108
    .line 109
    .line 110
    const/16 v32, 0x0

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    const-wide/16 v18, 0x0

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    const/16 v22, 0x0

    .line 127
    .line 128
    const/16 v23, 0x0

    .line 129
    .line 130
    const/16 v24, 0x0

    .line 131
    .line 132
    const/16 v25, 0x0

    .line 133
    .line 134
    const/16 v26, 0x0

    .line 135
    .line 136
    const/16 v27, 0x0

    .line 137
    .line 138
    const/16 v28, 0x0

    .line 139
    .line 140
    const/16 v29, 0x0

    .line 141
    .line 142
    const/16 v30, 0x0

    .line 143
    .line 144
    move/from16 v16, v5

    .line 145
    .line 146
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    return-object v1
.end method

.method public final h1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    return v0
.end method

.method public final h2(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;Z)V
    .locals 8

    .line 1
    const-string v0, "entity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->u0()Lcom/xj/winemu/api/bean/Translator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->n(Lcom/xj/winemu/api/bean/Translator;)Lcom/xj/winemu/bean/ITranslatorConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/xj/winemu/bean/ITranslatorConfig;->getConfigId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v4, v3

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/xj/winemu/bean/ITranslatorConfig;->getConfigName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v5, v3

    .line 33
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v7, "setupGameTranslationParametersNew \u5f53\u524d\u9009\u62e9\u7684\u67b6\u6784\uff1a"

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v7, " ,  \u5f53\u524d\u9009\u62e9\u7684\u914d\u7f6eid="

    .line 47
    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, " name = "

    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v2, v4}, Lcom/xj/common/utils/XjLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "setupGameTranslationParametersNew("

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/xj/winemu/bean/ITranslatorConfig;->isUserApply()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, ") \uff0cuser has their applying config "

    .line 97
    .line 98
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    if-nez v0, :cond_3

    .line 110
    .line 111
    const/4 p2, -0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    sget-object p2, Lcom/xj/winemu/settings/PcGameSettingOperations$WhenMappings;->a:[I

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    aget p2, p2, v1

    .line 120
    .line 121
    :goto_2
    const/4 v1, 0x1

    .line 122
    const-string v4, "game_recommend_id"

    .line 123
    .line 124
    if-eq p2, v1, :cond_5

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    if-eq p2, v1, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, ") \uff0cnot find support translator type or not set?"

    .line 145
    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p1, p2}, Lcom/xj/common/utils/XjLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    invoke-virtual {p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getTranslations()Lcom/xj/winemu/bean/TranslatorConfigs;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/xj/winemu/bean/TranslatorConfigs;->getBox64()Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    invoke-virtual {p1, v4}, Lcom/xj/winemu/bean/Box64TranslatorConfig;->setId(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object p2, Lcom/xj/winemu/bean/TranslatorConstant;->INSTANCE:Lcom/xj/winemu/bean/TranslatorConstant;

    .line 173
    .line 174
    invoke-virtual {p2}, Lcom/xj/winemu/bean/TranslatorConstant;->getGamePresetName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Lcom/xj/winemu/bean/Box64TranslatorConfig;->setName(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    move-object v3, p1

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    invoke-virtual {p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getTranslations()Lcom/xj/winemu/bean/TranslatorConfigs;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/xj/winemu/bean/TranslatorConfigs;->getFex()Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    invoke-virtual {p1, v4}, Lcom/xj/winemu/bean/FEXTranslatorConfig;->setId(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object p2, Lcom/xj/winemu/bean/TranslatorConstant;->INSTANCE:Lcom/xj/winemu/bean/TranslatorConstant;

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/xj/winemu/bean/TranslatorConstant;->getGamePresetName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Lcom/xj/winemu/bean/FEXTranslatorConfig;->setName(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_6
    :goto_4
    const/4 p1, 0x0

    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    invoke-virtual {p0, v3, p1, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B1(Lcom/xj/winemu/bean/ITranslatorConfig;ZZ)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 215
    .line 216
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 217
    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p0, ") \uff0cset gamePreset translator for user "

    .line 230
    .line 231
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_7
    if-eqz v0, :cond_8

    .line 243
    .line 244
    sget-object p2, Lcom/xj/winemu/bean/TranslatorConstant;->INSTANCE:Lcom/xj/winemu/bean/TranslatorConstant;

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Lcom/xj/winemu/bean/TranslatorConstant;->getSdkTranslatorConfigs(Lcom/xj/winemu/api/bean/Translator;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Lcom/xj/winemu/bean/ITranslatorConfig;

    .line 255
    .line 256
    if-eqz p2, :cond_8

    .line 257
    .line 258
    invoke-virtual {p0, p2, p1, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B1(Lcom/xj/winemu/bean/ITranslatorConfig;ZZ)V

    .line 259
    .line 260
    .line 261
    :cond_8
    iget-object p1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->b:Ljava/lang/String;

    .line 262
    .line 263
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 264
    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string p0, ") \uff0c but not fetch from server ,use sdk provide first one"

    .line 277
    .line 278
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final i()V
    .locals 9

    .line 1
    const/16 v7, 0x20

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, p0

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Y1(Lcom/xj/winemu/settings/PcGameSettingOperations;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final i0(IZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final i1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_IMAGE_QUALITY_IMPROVE_PLUGIN_DISABLE()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final i2(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;->getComponent()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/EnvLayerEntity;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "goldberg"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    check-cast v0, Lcom/xj/winemu/api/bean/EnvLayerEntity;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->f()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->y1()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    sget-object p1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->m()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersionCode()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getDisplayName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    move-object v0, p0

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/xj/winemu/settings/PcGameSettingOperations;->X1(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 30

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->o0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/xj/language/R$string;->tp_avx_0:I

    .line 11
    .line 12
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const/4 v3, 0x1

    .line 17
    move v4, v3

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v6, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    :goto_0
    new-instance v3, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 24
    .line 25
    const v27, 0x3ffff2

    .line 26
    .line 27
    .line 28
    const/16 v28, 0x0

    .line 29
    .line 30
    move v5, v4

    .line 31
    const/4 v4, 0x0

    .line 32
    move v8, v5

    .line 33
    const/4 v5, 0x0

    .line 34
    move v9, v8

    .line 35
    const/4 v8, 0x0

    .line 36
    move v10, v9

    .line 37
    const/4 v9, 0x0

    .line 38
    move v11, v10

    .line 39
    const/4 v10, 0x0

    .line 40
    move v12, v11

    .line 41
    const/4 v11, 0x0

    .line 42
    move v13, v12

    .line 43
    const/4 v12, 0x0

    .line 44
    move v14, v13

    .line 45
    const/4 v13, 0x0

    .line 46
    move/from16 v16, v14

    .line 47
    .line 48
    const-wide/16 v14, 0x0

    .line 49
    .line 50
    move/from16 v17, v16

    .line 51
    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    move/from16 v18, v17

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    move/from16 v19, v18

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    move/from16 v20, v19

    .line 63
    .line 64
    const/16 v19, 0x0

    .line 65
    .line 66
    move/from16 v21, v20

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    move/from16 v22, v21

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    move/from16 v23, v22

    .line 75
    .line 76
    const/16 v22, 0x0

    .line 77
    .line 78
    move/from16 v24, v23

    .line 79
    .line 80
    const/16 v23, 0x0

    .line 81
    .line 82
    move/from16 v25, v24

    .line 83
    .line 84
    const/16 v24, 0x0

    .line 85
    .line 86
    move/from16 v26, v25

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    move/from16 v29, v26

    .line 91
    .line 92
    const/16 v26, 0x0

    .line 93
    .line 94
    move/from16 v2, v29

    .line 95
    .line 96
    invoke-direct/range {v3 .. v28}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    sget v3, Lcom/xj/language/R$string;->tp_avx_1:I

    .line 103
    .line 104
    invoke-static {v3}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    if-ne v0, v2, :cond_1

    .line 109
    .line 110
    move v7, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const/4 v7, 0x0

    .line 113
    :goto_1
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 114
    .line 115
    const v28, 0x3ffff2

    .line 116
    .line 117
    .line 118
    const/16 v29, 0x0

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v11, 0x0

    .line 125
    const/4 v12, 0x0

    .line 126
    const/4 v13, 0x0

    .line 127
    const/4 v14, 0x0

    .line 128
    const-wide/16 v15, 0x0

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const/16 v19, 0x0

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const/16 v21, 0x0

    .line 139
    .line 140
    const/16 v22, 0x0

    .line 141
    .line 142
    const/16 v23, 0x0

    .line 143
    .line 144
    const/16 v24, 0x0

    .line 145
    .line 146
    const/16 v25, 0x0

    .line 147
    .line 148
    const/16 v26, 0x0

    .line 149
    .line 150
    const/16 v27, 0x0

    .line 151
    .line 152
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    sget v3, Lcom/xj/language/R$string;->tp_avx_2:I

    .line 159
    .line 160
    invoke-static {v3}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const/4 v3, 0x2

    .line 165
    if-ne v0, v3, :cond_2

    .line 166
    .line 167
    move v7, v2

    .line 168
    goto :goto_2

    .line 169
    :cond_2
    const/4 v7, 0x0

    .line 170
    :goto_2
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 171
    .line 172
    const v28, 0x3ffff2

    .line 173
    .line 174
    .line 175
    const/16 v29, 0x0

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v9, 0x0

    .line 180
    const/4 v10, 0x0

    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x0

    .line 183
    const/4 v13, 0x0

    .line 184
    const/4 v14, 0x0

    .line 185
    const-wide/16 v15, 0x0

    .line 186
    .line 187
    const/16 v17, 0x0

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const/16 v19, 0x0

    .line 192
    .line 193
    const/16 v20, 0x0

    .line 194
    .line 195
    const/16 v21, 0x0

    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    const/16 v23, 0x0

    .line 200
    .line 201
    const/16 v24, 0x0

    .line 202
    .line 203
    const/16 v25, 0x0

    .line 204
    .line 205
    const/16 v26, 0x0

    .line 206
    .line 207
    const/16 v27, 0x0

    .line 208
    .line 209
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    return-object v1
.end method

.method public final j1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "pc_ls_enable_log_server"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final j2(Lcom/xj/winemu/data/bean/SteamType;)V
    .locals 1

    .line 1
    const-string v0, "steamType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "sp_key_last_start_steam_type"

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/xj/winemu/data/bean/SteamType;->getType()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final k()Lcom/xj/winemu/bean/Box64TranslatorConfig;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 9
    .line 10
    sget-object v3, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_APPLYING_BOX_TP_CONFIG()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-virtual {v1, p0, v2}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-class v1, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 31
    .line 32
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move-object p0, v0

    .line 42
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    move-object v0, p0

    .line 65
    :goto_3
    check-cast v0, Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 66
    .line 67
    return-object v0
.end method

.method public final k0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "sp_key_last_start_steam_type"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final k1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_STEAM_LAUNCH_OPTION_REMEMBER()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final l()Lcom/xj/winemu/bean/FEXTranslatorConfig;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 9
    .line 10
    sget-object v3, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_APPLYING_FEX_TP_CONFIG()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-virtual {v1, p0, v2}, Lcom/blankj/utilcode/util/SPUtils;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-class v1, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 31
    .line 32
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move-object p0, v0

    .line 42
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    move-object v0, p0

    .line 65
    :goto_3
    check-cast v0, Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 66
    .line 67
    return-object v0
.end method

.method public final l0()Ljava/util/List;
    .locals 56

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/xj/language/R$string;->pc_cc_cpu_core_no_limit:I

    .line 11
    .line 12
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    const/4 v2, 0x0

    .line 17
    const/16 v29, 0x1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move/from16 v6, v29

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v6, v2

    .line 25
    :goto_0
    new-instance v3, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 26
    .line 27
    const v27, 0x3ffff2

    .line 28
    .line 29
    .line 30
    const/16 v28, 0x0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const-wide/16 v14, 0x0

    .line 41
    .line 42
    const/16 v16, 0x0

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    invoke-direct/range {v3 .. v28}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x200

    .line 71
    .line 72
    if-ne v0, v3, :cond_1

    .line 73
    .line 74
    move/from16 v33, v29

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move/from16 v33, v2

    .line 78
    .line 79
    :goto_1
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 80
    .line 81
    const v54, 0x3ffff2

    .line 82
    .line 83
    .line 84
    const/16 v55, 0x0

    .line 85
    .line 86
    const/16 v31, 0x200

    .line 87
    .line 88
    const/16 v32, 0x0

    .line 89
    .line 90
    const-string v34, "512 MB"

    .line 91
    .line 92
    const/16 v35, 0x0

    .line 93
    .line 94
    const/16 v36, 0x0

    .line 95
    .line 96
    const/16 v37, 0x0

    .line 97
    .line 98
    const/16 v38, 0x0

    .line 99
    .line 100
    const/16 v39, 0x0

    .line 101
    .line 102
    const/16 v40, 0x0

    .line 103
    .line 104
    const-wide/16 v41, 0x0

    .line 105
    .line 106
    const/16 v43, 0x0

    .line 107
    .line 108
    const/16 v44, 0x0

    .line 109
    .line 110
    const/16 v45, 0x0

    .line 111
    .line 112
    const/16 v46, 0x0

    .line 113
    .line 114
    const/16 v47, 0x0

    .line 115
    .line 116
    const/16 v48, 0x0

    .line 117
    .line 118
    const/16 v49, 0x0

    .line 119
    .line 120
    const/16 v50, 0x0

    .line 121
    .line 122
    const/16 v51, 0x0

    .line 123
    .line 124
    const/16 v52, 0x0

    .line 125
    .line 126
    const/16 v53, 0x0

    .line 127
    .line 128
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v3, v30

    .line 132
    .line 133
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    const/16 v3, 0x400

    .line 137
    .line 138
    if-ne v0, v3, :cond_2

    .line 139
    .line 140
    move/from16 v33, v29

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move/from16 v33, v2

    .line 144
    .line 145
    :goto_2
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 146
    .line 147
    const v54, 0x3ffff2

    .line 148
    .line 149
    .line 150
    const/16 v55, 0x0

    .line 151
    .line 152
    const/16 v31, 0x400

    .line 153
    .line 154
    const/16 v32, 0x0

    .line 155
    .line 156
    const-string v34, "1 GB"

    .line 157
    .line 158
    const/16 v35, 0x0

    .line 159
    .line 160
    const/16 v36, 0x0

    .line 161
    .line 162
    const/16 v37, 0x0

    .line 163
    .line 164
    const/16 v38, 0x0

    .line 165
    .line 166
    const/16 v39, 0x0

    .line 167
    .line 168
    const/16 v40, 0x0

    .line 169
    .line 170
    const-wide/16 v41, 0x0

    .line 171
    .line 172
    const/16 v43, 0x0

    .line 173
    .line 174
    const/16 v44, 0x0

    .line 175
    .line 176
    const/16 v45, 0x0

    .line 177
    .line 178
    const/16 v46, 0x0

    .line 179
    .line 180
    const/16 v47, 0x0

    .line 181
    .line 182
    const/16 v48, 0x0

    .line 183
    .line 184
    const/16 v49, 0x0

    .line 185
    .line 186
    const/16 v50, 0x0

    .line 187
    .line 188
    const/16 v51, 0x0

    .line 189
    .line 190
    const/16 v52, 0x0

    .line 191
    .line 192
    const/16 v53, 0x0

    .line 193
    .line 194
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    .line 196
    .line 197
    move-object/from16 v3, v30

    .line 198
    .line 199
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    const/16 v3, 0x800

    .line 203
    .line 204
    if-ne v0, v3, :cond_3

    .line 205
    .line 206
    move/from16 v33, v29

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_3
    move/from16 v33, v2

    .line 210
    .line 211
    :goto_3
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 212
    .line 213
    const v54, 0x3ffff2

    .line 214
    .line 215
    .line 216
    const/16 v55, 0x0

    .line 217
    .line 218
    const/16 v31, 0x800

    .line 219
    .line 220
    const/16 v32, 0x0

    .line 221
    .line 222
    const-string v34, "2 GB"

    .line 223
    .line 224
    const/16 v35, 0x0

    .line 225
    .line 226
    const/16 v36, 0x0

    .line 227
    .line 228
    const/16 v37, 0x0

    .line 229
    .line 230
    const/16 v38, 0x0

    .line 231
    .line 232
    const/16 v39, 0x0

    .line 233
    .line 234
    const/16 v40, 0x0

    .line 235
    .line 236
    const-wide/16 v41, 0x0

    .line 237
    .line 238
    const/16 v43, 0x0

    .line 239
    .line 240
    const/16 v44, 0x0

    .line 241
    .line 242
    const/16 v45, 0x0

    .line 243
    .line 244
    const/16 v46, 0x0

    .line 245
    .line 246
    const/16 v47, 0x0

    .line 247
    .line 248
    const/16 v48, 0x0

    .line 249
    .line 250
    const/16 v49, 0x0

    .line 251
    .line 252
    const/16 v50, 0x0

    .line 253
    .line 254
    const/16 v51, 0x0

    .line 255
    .line 256
    const/16 v52, 0x0

    .line 257
    .line 258
    const/16 v53, 0x0

    .line 259
    .line 260
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v3, v30

    .line 264
    .line 265
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    const/16 v3, 0xc00

    .line 269
    .line 270
    if-ne v0, v3, :cond_4

    .line 271
    .line 272
    move/from16 v33, v29

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_4
    move/from16 v33, v2

    .line 276
    .line 277
    :goto_4
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 278
    .line 279
    const v54, 0x3ffff2

    .line 280
    .line 281
    .line 282
    const/16 v55, 0x0

    .line 283
    .line 284
    const/16 v31, 0xc00

    .line 285
    .line 286
    const/16 v32, 0x0

    .line 287
    .line 288
    const-string v34, "3 GB"

    .line 289
    .line 290
    const/16 v35, 0x0

    .line 291
    .line 292
    const/16 v36, 0x0

    .line 293
    .line 294
    const/16 v37, 0x0

    .line 295
    .line 296
    const/16 v38, 0x0

    .line 297
    .line 298
    const/16 v39, 0x0

    .line 299
    .line 300
    const/16 v40, 0x0

    .line 301
    .line 302
    const-wide/16 v41, 0x0

    .line 303
    .line 304
    const/16 v43, 0x0

    .line 305
    .line 306
    const/16 v44, 0x0

    .line 307
    .line 308
    const/16 v45, 0x0

    .line 309
    .line 310
    const/16 v46, 0x0

    .line 311
    .line 312
    const/16 v47, 0x0

    .line 313
    .line 314
    const/16 v48, 0x0

    .line 315
    .line 316
    const/16 v49, 0x0

    .line 317
    .line 318
    const/16 v50, 0x0

    .line 319
    .line 320
    const/16 v51, 0x0

    .line 321
    .line 322
    const/16 v52, 0x0

    .line 323
    .line 324
    const/16 v53, 0x0

    .line 325
    .line 326
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v3, v30

    .line 330
    .line 331
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    const/16 v3, 0x1000

    .line 335
    .line 336
    if-ne v0, v3, :cond_5

    .line 337
    .line 338
    move/from16 v33, v29

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_5
    move/from16 v33, v2

    .line 342
    .line 343
    :goto_5
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 344
    .line 345
    const v54, 0x3ffff2

    .line 346
    .line 347
    .line 348
    const/16 v55, 0x0

    .line 349
    .line 350
    const/16 v31, 0x1000

    .line 351
    .line 352
    const/16 v32, 0x0

    .line 353
    .line 354
    const-string v34, "4 GB"

    .line 355
    .line 356
    const/16 v35, 0x0

    .line 357
    .line 358
    const/16 v36, 0x0

    .line 359
    .line 360
    const/16 v37, 0x0

    .line 361
    .line 362
    const/16 v38, 0x0

    .line 363
    .line 364
    const/16 v39, 0x0

    .line 365
    .line 366
    const/16 v40, 0x0

    .line 367
    .line 368
    const-wide/16 v41, 0x0

    .line 369
    .line 370
    const/16 v43, 0x0

    .line 371
    .line 372
    const/16 v44, 0x0

    .line 373
    .line 374
    const/16 v45, 0x0

    .line 375
    .line 376
    const/16 v46, 0x0

    .line 377
    .line 378
    const/16 v47, 0x0

    .line 379
    .line 380
    const/16 v48, 0x0

    .line 381
    .line 382
    const/16 v49, 0x0

    .line 383
    .line 384
    const/16 v50, 0x0

    .line 385
    .line 386
    const/16 v51, 0x0

    .line 387
    .line 388
    const/16 v52, 0x0

    .line 389
    .line 390
    const/16 v53, 0x0

    .line 391
    .line 392
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 393
    .line 394
    .line 395
    move-object/from16 v0, v30

    .line 396
    .line 397
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # --- BannerHub: unlocked higher VRAM limits (6/8/12/16 GB) ---
    # v0 is a DialogSettingListItemEntity ref here (clobbered by 4 GB entry).
    # Call G0() fresh into v3 (int) to safely compare for isSelected.
    # v4 used as comparison constant (int). v29=1/v2=0 as before.
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G0()I
    move-result v3

    # 6 GB entry (0x1800 = 6144 MB)
    const/16 v4, 0x1800
    if-ne v3, v4, :cond_bh6ns
    move/from16 v33, v29
    goto :goto_bh6
    :cond_bh6ns
    move/from16 v33, v2
    :goto_bh6
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    const v54, 0x3ffff2
    const/16 v55, 0x0
    const/16 v31, 0x1800
    const/16 v32, 0x0
    const-string v34, "6 GB"
    const/16 v35, 0x0
    const/16 v36, 0x0
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v40, 0x0
    const-wide/16 v41, 0x0
    const/16 v43, 0x0
    const/16 v44, 0x0
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/16 v50, 0x0
    const/16 v51, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    move-object/from16 v0, v30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # 8 GB entry (0x2000 = 8192 MB)
    const/16 v4, 0x2000
    if-ne v3, v4, :cond_bh8ns
    move/from16 v33, v29
    goto :goto_bh8
    :cond_bh8ns
    move/from16 v33, v2
    :goto_bh8
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    const v54, 0x3ffff2
    const/16 v55, 0x0
    const/16 v31, 0x2000
    const/16 v32, 0x0
    const-string v34, "8 GB"
    const/16 v35, 0x0
    const/16 v36, 0x0
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v40, 0x0
    const-wide/16 v41, 0x0
    const/16 v43, 0x0
    const/16 v44, 0x0
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/16 v50, 0x0
    const/16 v51, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    move-object/from16 v0, v30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # 12 GB entry (0x3000 = 12288 MB)
    const/16 v4, 0x3000
    if-ne v3, v4, :cond_bh12ns
    move/from16 v33, v29
    goto :goto_bh12
    :cond_bh12ns
    move/from16 v33, v2
    :goto_bh12
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    const v54, 0x3ffff2
    const/16 v55, 0x0
    const/16 v31, 0x3000
    const/16 v32, 0x0
    const-string v34, "12 GB"
    const/16 v35, 0x0
    const/16 v36, 0x0
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v40, 0x0
    const-wide/16 v41, 0x0
    const/16 v43, 0x0
    const/16 v44, 0x0
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/16 v50, 0x0
    const/16 v51, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    move-object/from16 v0, v30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # 16 GB entry (0x4000 = 16384 MB)
    const/16 v4, 0x4000
    if-ne v3, v4, :cond_bh16ns
    move/from16 v33, v29
    goto :goto_bh16
    :cond_bh16ns
    move/from16 v33, v2
    :goto_bh16
    new-instance v30, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    const v54, 0x3ffff2
    const/16 v55, 0x0
    const/16 v31, 0x4000
    const/16 v32, 0x0
    const-string v34, "16 GB"
    const/16 v35, 0x0
    const/16 v36, 0x0
    const/16 v37, 0x0
    const/16 v38, 0x0
    const/16 v39, 0x0
    const/16 v40, 0x0
    const-wide/16 v41, 0x0
    const/16 v43, 0x0
    const/16 v44, 0x0
    const/16 v45, 0x0
    const/16 v46, 0x0
    const/16 v47, 0x0
    const/16 v48, 0x0
    const/16 v49, 0x0
    const/16 v50, 0x0
    const/16 v51, 0x0
    const/16 v52, 0x0
    const/16 v53, 0x0
    invoke-direct/range {v30 .. v55}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    move-object/from16 v0, v30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # --- end BannerHub higher VRAM limits ---

    return-object v1
.end method

.method public final l1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->J0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    return v0
.end method

.method public final m()Lcom/xj/winemu/bean/ITranslatorConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->u0()Lcom/xj/winemu/api/bean/Translator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->n(Lcom/xj/winemu/api/bean/Translator;)Lcom/xj/winemu/bean/ITranslatorConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final m0()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 1

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TRANSLATOR()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final m1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_SOFT_INPUT_AUTO_SHOW_WHEN_NEED()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final n(Lcom/xj/winemu/api/bean/Translator;)Lcom/xj/winemu/bean/ITranslatorConfig;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingOperations$WhenMappings;->a:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->k()Lcom/xj/winemu/bean/Box64TranslatorConfig;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->l()Lcom/xj/winemu/bean/FEXTranslatorConfig;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final n0()Ljava/util/List;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_SAFE_FLAGS()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->i()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/xj/language/R$string;->tp_safe_flags_0:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v8, v2

    .line 47
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 48
    .line 49
    const v29, 0x3ffff2

    .line 50
    .line 51
    .line 52
    const/16 v30, 0x0

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const-wide/16 v16, 0x0

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v25, 0x0

    .line 79
    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget v5, Lcom/xj/language/R$string;->tp_safe_flags_1:I

    .line 93
    .line 94
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-ne v0, v3, :cond_1

    .line 99
    .line 100
    move v9, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v9, v2

    .line 103
    :goto_1
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 104
    .line 105
    const v30, 0x3ffff2

    .line 106
    .line 107
    .line 108
    const/16 v31, 0x0

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    sget v5, Lcom/xj/language/R$string;->tp_safe_flags_2:I

    .line 150
    .line 151
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-ne v0, v4, :cond_2

    .line 156
    .line 157
    move v9, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move v9, v2

    .line 160
    :goto_2
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 161
    .line 162
    const v30, 0x3ffff2

    .line 163
    .line 164
    .line 165
    const/16 v31, 0x0

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const-wide/16 v17, 0x0

    .line 177
    .line 178
    const/16 v19, 0x0

    .line 179
    .line 180
    const/16 v20, 0x0

    .line 181
    .line 182
    const/16 v21, 0x0

    .line 183
    .line 184
    const/16 v22, 0x0

    .line 185
    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/16 v25, 0x0

    .line 191
    .line 192
    const/16 v26, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const/16 v28, 0x0

    .line 197
    .line 198
    const/16 v29, 0x0

    .line 199
    .line 200
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    return-object v1
.end method

.method public final n1(ILcom/xj/common/data/gameinfo/InstalledGameSource;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p5, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$4:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;

    .line 45
    .line 46
    iget-object p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$3:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;

    .line 49
    .line 50
    iget-object p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;

    .line 53
    .line 54
    iget-object p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    iget-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Lcom/xj/common/data/gameinfo/InstalledGameSource;

    .line 61
    .line 62
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    iget-boolean p3, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->Z$0:Z

    .line 76
    .line 77
    iget p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->I$0:I

    .line 78
    .line 79
    iget-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    move-object p4, p2

    .line 82
    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    iget-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p2, Lcom/xj/common/data/gameinfo/InstalledGameSource;

    .line 87
    .line 88
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    if-eqz p5, :cond_5

    .line 100
    .line 101
    if-eqz p3, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    if-eqz p4, :cond_d

    .line 105
    .line 106
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_5
    :goto_1
    iget-boolean p5, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->d:Z

    .line 115
    .line 116
    if-eqz p5, :cond_7

    .line 117
    .line 118
    if-eqz p4, :cond_6

    .line 119
    .line 120
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_7
    iput-boolean v5, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->d:Z

    .line 131
    .line 132
    new-instance p5, Lcom/xj/winemu/data/repository/EnvLayerRepository;

    .line 133
    .line 134
    invoke-direct {p5}, Lcom/xj/winemu/data/repository/EnvLayerRepository;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 138
    .line 139
    if-nez p2, :cond_8

    .line 140
    .line 141
    sget-object v6, Lcom/xj/common/data/gameinfo/InstalledGameSource;->UnKnow:Lcom/xj/common/data/gameinfo/InstalledGameSource;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move-object v6, p2

    .line 145
    :goto_2
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iput-object v7, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object p4, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$1:Ljava/lang/Object;

    .line 152
    .line 153
    iput p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->I$0:I

    .line 154
    .line 155
    iput-boolean p3, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->Z$0:Z

    .line 156
    .line 157
    iput v5, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->label:I

    .line 158
    .line 159
    invoke-virtual {p5, v2, p1, v6, v0}, Lcom/xj/winemu/data/repository/EnvLayerRepository;->j(Ljava/lang/String;ILcom/xj/common/data/gameinfo/InstalledGameSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p5

    .line 163
    if-ne p5, v1, :cond_9

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    :goto_3
    check-cast p5, Lcom/xj/winemu/data/bean/GameEnvConfigEntity;

    .line 167
    .line 168
    if-eqz p5, :cond_b

    .line 169
    .line 170
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$0:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object p4, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$1:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iput-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$2:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object p5, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$3:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    iput-object p2, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->L$4:Ljava/lang/Object;

    .line 191
    .line 192
    iput p1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->I$0:I

    .line 193
    .line 194
    iput-boolean p3, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->Z$0:Z

    .line 195
    .line 196
    iput v4, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->I$1:I

    .line 197
    .line 198
    iput v3, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$loadGameRecommConfigByCheck$1;->label:I

    .line 199
    .line 200
    invoke-virtual {p0, p5, p3, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->M1(Lcom/xj/winemu/data/bean/GameEnvConfigEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-ne p1, v1, :cond_a

    .line 205
    .line 206
    :goto_4
    return-object v1

    .line 207
    :cond_a
    move-object p1, p4

    .line 208
    :goto_5
    move-object p4, p1

    .line 209
    :cond_b
    if-eqz p4, :cond_c

    .line 210
    .line 211
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_c
    iput-boolean v4, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->d:Z

    .line 219
    .line 220
    :cond_d
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 31

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    invoke-static {v3, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v7, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v7, v1

    .line 20
    :goto_0
    new-instance v4, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 21
    .line 22
    const v28, 0x3ffff2

    .line 23
    .line 24
    .line 25
    const/16 v29, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v8, "Alsa"

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const-wide/16 v15, 0x0

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const/16 v19, 0x0

    .line 44
    .line 45
    const/16 v20, 0x0

    .line 46
    .line 47
    const/16 v21, 0x0

    .line 48
    .line 49
    const/16 v22, 0x0

    .line 50
    .line 51
    const/16 v23, 0x0

    .line 52
    .line 53
    const/16 v24, 0x0

    .line 54
    .line 55
    const/16 v25, 0x0

    .line 56
    .line 57
    const/16 v26, 0x0

    .line 58
    .line 59
    const/16 v27, 0x0

    .line 60
    .line 61
    invoke-direct/range {v4 .. v29}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    move v8, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v8, v1

    .line 72
    :goto_1
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 73
    .line 74
    const v29, 0x3ffff2

    .line 75
    .line 76
    .line 77
    const/16 v30, 0x0

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    const-string v9, "Pulse"

    .line 82
    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v15, 0x0

    .line 89
    const-wide/16 v16, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    const/16 v24, 0x0

    .line 104
    .line 105
    const/16 v25, 0x0

    .line 106
    .line 107
    const/16 v26, 0x0

    .line 108
    .line 109
    const/16 v27, 0x0

    .line 110
    .line 111
    const/16 v28, 0x0

    .line 112
    .line 113
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    return-object v3
.end method

.method public final o0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_AVX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->N0(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final p()Ljava/util/List;
    .locals 32

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v2, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TP_BIG_BLOCK()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v1, v2, v3, v4, v3}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->b()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/xj/language/R$string;->tp_big_block_0:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v8, v2

    .line 47
    :goto_0
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 48
    .line 49
    const v29, 0x3ffff2

    .line 50
    .line 51
    .line 52
    const/16 v30, 0x0

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const-wide/16 v16, 0x0

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const/16 v20, 0x0

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    const/16 v22, 0x0

    .line 73
    .line 74
    const/16 v23, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v25, 0x0

    .line 79
    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget v5, Lcom/xj/language/R$string;->tp_big_block_1:I

    .line 93
    .line 94
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-ne v0, v3, :cond_1

    .line 99
    .line 100
    move v9, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v9, v2

    .line 103
    :goto_1
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 104
    .line 105
    const v30, 0x3ffff2

    .line 106
    .line 107
    .line 108
    const/16 v31, 0x0

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    const-wide/16 v17, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    sget v5, Lcom/xj/language/R$string;->tp_big_block_2:I

    .line 150
    .line 151
    invoke-static {v5}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    if-ne v0, v4, :cond_2

    .line 156
    .line 157
    move v9, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move v9, v2

    .line 160
    :goto_2
    new-instance v6, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 161
    .line 162
    const v30, 0x3ffff2

    .line 163
    .line 164
    .line 165
    const/16 v31, 0x0

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const-wide/16 v17, 0x0

    .line 177
    .line 178
    const/16 v19, 0x0

    .line 179
    .line 180
    const/16 v20, 0x0

    .line 181
    .line 182
    const/16 v21, 0x0

    .line 183
    .line 184
    const/16 v22, 0x0

    .line 185
    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/16 v25, 0x0

    .line 191
    .line 192
    const/16 v26, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const/16 v28, 0x0

    .line 197
    .line 198
    const/16 v29, 0x0

    .line 199
    .line 200
    invoke-direct/range {v6 .. v31}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    sget v4, Lcom/xj/language/R$string;->tp_big_block_3:I

    .line 207
    .line 208
    invoke-static {v4}, Lcom/xj/common/utils/LLExtKt;->j(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    const/4 v4, 0x3

    .line 213
    if-ne v0, v4, :cond_3

    .line 214
    .line 215
    move v8, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_3
    move v8, v2

    .line 218
    :goto_3
    new-instance v5, Lcom/xj/winemu/bean/DialogSettingListItemEntity;

    .line 219
    .line 220
    const v29, 0x3ffff2

    .line 221
    .line 222
    .line 223
    const/16 v30, 0x0

    .line 224
    .line 225
    const/4 v6, 0x3

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v11, 0x0

    .line 229
    const/4 v12, 0x0

    .line 230
    const/4 v13, 0x0

    .line 231
    const/4 v14, 0x0

    .line 232
    const/4 v15, 0x0

    .line 233
    const-wide/16 v16, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v20, 0x0

    .line 240
    .line 241
    const/16 v21, 0x0

    .line 242
    .line 243
    const/16 v22, 0x0

    .line 244
    .line 245
    const/16 v23, 0x0

    .line 246
    .line 247
    const/16 v24, 0x0

    .line 248
    .line 249
    const/16 v25, 0x0

    .line 250
    .line 251
    const/16 v26, 0x0

    .line 252
    .line 253
    const/16 v27, 0x0

    .line 254
    .line 255
    const/16 v28, 0x0

    .line 256
    .line 257
    invoke-direct/range {v5 .. v30}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    return-object v1
.end method

.method public final p0()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ne p0, v2, :cond_0

    .line 9
    .line 10
    const-string p0, "Pulse"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "Alsa"

    .line 14
    .line 15
    return-object p0
.end method

.method public final p1(IIZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p3, p0, p2}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->t1(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_BOOT_OPTION()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const-string p0, ""

    .line 26
    .line 27
    :cond_0
    return-object p0
.end method

.method public final q0(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_AUDIO_DRIVER()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final q1(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p3, p0, p2}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->u1(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final r()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 5

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_TRANSLATOR_BOX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G(I)Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->m0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "toLowerCase(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "box"

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v1, v2, v4, v3, v0}, Lkotlin/text/StringsKt;->f0(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    invoke-virtual {p0, v4}, Lcom/xj/winemu/bean/PcSettingDataEntity;->setContentType(I)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final r1(IZZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p3, p0, p2}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xj/winemu/settings/PcGameSettingOperations;->v1(IZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final s(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_BYPASS_AV_DECODE()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->e(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final s0()Lcom/xj/winemu/bean/PcSettingDataEntity;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CONTAINER_LIST()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-class v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/GsonUtils;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 30
    .line 31
    return-object p0
.end method

.method public final t0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    iget-object v0, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_5

    .line 68
    .line 69
    sget-object p1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->i()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 78
    .line 79
    move v3, v2

    .line 80
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    move v4, v3

    .line 85
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move v5, v4

    .line 90
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move v6, v5

    .line 95
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move v8, v6

    .line 100
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileMd5()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iput-object p0, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p1, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput v8, v7, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectContainerOrDefault$1;->label:I

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v7}, Lcom/xj/winemu/download/WinEmuFileExplorer;->C(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-ne v1, v0, :cond_3

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_3
    move-object v0, p0

    .line 118
    move-object p0, p1

    .line 119
    move-object p1, v1

    .line 120
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_4
    return-object v0

    .line 130
    :cond_5
    return-object p0
.end method

.method public final t1(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->c(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u8bed\u8a00"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->f0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->I0()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->H0()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "-"

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "\u6e38\u620f\u5206\u8fa8\u7387"

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->E0()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "directX\u6027\u80fd\u9762\u677f"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Y()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Ljava/lang/Iterable;

    .line 80
    .line 81
    new-instance v8, Lcom/xj/winemu/settings/j0;

    .line 82
    .line 83
    invoke-direct {v8}, Lcom/xj/winemu/settings/j0;-><init>()V

    .line 84
    .line 85
    .line 86
    const/16 v9, 0x1e

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const-string v3, ","

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x0

    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_0
    const-string v2, "\u73af\u5883\u53d8\u91cf"

    .line 100
    .line 101
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v1, "\u542f\u52a8\u53c2\u6570"

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->q()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v0, p0

    .line 118
    check-cast v0, Ljava/lang/Iterable;

    .line 119
    .line 120
    new-instance v6, Lcom/xj/winemu/settings/k0;

    .line 121
    .line 122
    invoke-direct {v6}, Lcom/xj/winemu/settings/k0;-><init>()V

    .line 123
    .line 124
    .line 125
    const/16 v7, 0x1e

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    const-string v1, "|"

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    const/4 v3, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method

.method public final u0()Lcom/xj/winemu/api/bean/Translator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, "X64"

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFramework()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lcom/xj/winemu/api/bean/Translator;->Box64:Lcom/xj/winemu/api/bean/Translator;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lcom/xj/winemu/api/bean/Translator;->FEX:Lcom/xj/winemu/api/bean/Translator;

    .line 25
    .line 26
    return-object p0
.end method

.method public final u1(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->c(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final v0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_CONTROLLER_SWITCH()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->a:Lcom/xj/winemu/api/bean/PcSettingDefaultValue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/api/bean/PcSettingDefaultValue;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingOperations;->i0(IZ)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final v1(IZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->c(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/SPUtils;->q(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final w0()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->y0(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-string v0, "getString(...)"

    .line 9
    .line 10
    if-eq p0, v2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget v1, Lcom/xj/language/R$string;->pc_cc_dinput_prefer_native:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget v1, Lcom/xj/language/R$string;->pc_cc_dinput_disabled:I

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget v1, Lcom/xj/language/R$string;->pc_cc_dinput_prefer_builtin:I

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final w1(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    const-string v0, "gameId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/xj/winemu/settings/PcGameSettingOperations$resetGameConfigByServer$1;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v4, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/xj/winemu/settings/PcGameSettingOperations$resetGameConfigByServer$1;-><init>(Ljava/lang/String;ILcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-static {p1, v1, p0, p1}, Lcom/drake/net/utils/ScopeKt;->h(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/drake/net/scope/NetCoroutineScope;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->u0()Lcom/xj/winemu/api/bean/Translator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->s0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    const-string v4, "\u517c\u5bb9\u5c42"

    .line 24
    .line 25
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/Translator;->getMode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    :cond_1
    const-string v2, "0"

    .line 37
    .line 38
    :cond_2
    const-string v4, "mode_type"

    .line 39
    .line 40
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->n(Lcom/xj/winemu/api/bean/Translator;)Lcom/xj/winemu/bean/ITranslatorConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    move-object v0, v2

    .line 82
    :cond_3
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move-object v0, v3

    .line 86
    :goto_2
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    move-object v2, v0

    .line 90
    :cond_6
    :goto_3
    const-string v0, "\u8f6c\u8bd1\u53c2\u6570"

    .line 91
    .line 92
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->B0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    move-object v0, v3

    .line 107
    :goto_4
    const-string v2, "GPU\u9a71\u52a8"

    .line 108
    .line 109
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v0, "\u97f3\u9891\u9a71\u52a8"

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->p0()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->U()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto :goto_5

    .line 132
    :cond_8
    move-object v0, v3

    .line 133
    :goto_5
    const-string v2, "DXVK\u7248\u672c"

    .line 134
    .line 135
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z0()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    move-object v0, v3

    .line 150
    :goto_6
    const-string v2, "VKD3D\u7248\u672c"

    .line 151
    .line 152
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->r()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_7

    .line 166
    :cond_a
    move-object v0, v3

    .line 167
    :goto_7
    const-string v2, "CPU\u8f6c\u8bd1\u5668"

    .line 168
    .line 169
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    const/4 v2, 0x1

    .line 174
    invoke-static {p0, v0, v2, v3}, Lcom/xj/winemu/settings/PcGameSettingOperations;->C(Lcom/xj/winemu/settings/PcGameSettingOperations;IILjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v2, "CPU\u6838\u5fc3\u9650\u5236"

    .line 183
    .line 184
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->G0()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v2, "\u663e\u5b58\u9650\u5236"

    .line 196
    .line 197
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Z()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz p0, :cond_b

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :cond_b
    const-string p0, "FEXCPU\u8f6c\u8bd1\u5668"

    .line 211
    .line 212
    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    move-object v0, p0

    .line 220
    check-cast v0, Ljava/lang/Iterable;

    .line 221
    .line 222
    new-instance v6, Lcom/xj/winemu/settings/l0;

    .line 223
    .line 224
    invoke-direct {v6}, Lcom/xj/winemu/settings/l0;-><init>()V

    .line 225
    .line 226
    .line 227
    const/16 v7, 0x1e

    .line 228
    .line 229
    const/4 v8, 0x0

    .line 230
    const-string v1, "|"

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v3, 0x0

    .line 234
    const/4 v4, 0x0

    .line 235
    const/4 v5, 0x0

    .line 236
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0
.end method

.method public final x0(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 6
    .line 7
    sget-object v1, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_DINPUT_LIBRARY()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v0, v1, v2, v3, v2}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->A(Lcom/xj/winemu/settings/PcGameSettingDataHelper;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/blankj/utilcode/util/SPUtils;->i(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final x1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SPUtils;->a()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public final y1()V
    .locals 9

    .line 1
    const/16 v7, 0x20

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, p0

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/xj/winemu/settings/PcGameSettingOperations;->Y1(Lcom/xj/winemu/settings/PcGameSettingOperations;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "componentName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/xj/winemu/api/bean/IWinEmuService;->h(Ljava/lang/String;)Lcom/xj/winemu/api/bean/IEmuContainer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/xj/winemu/api/bean/IEmuContainer;->k()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/xj/winemu/api/bean/ComponentRecorder;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/ComponentRecorder;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/ComponentRecorder;->getBroken()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget p1, Lcom/xj/language/R$string;->pc_cc_broken:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/xj/winemu/api/bean/ComponentRecorder;->getVersion()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    const-string p0, ""

    .line 84
    .line 85
    return-object p0
.end method

.method public final z0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;-><init>(Lcom/xj/winemu/settings/PcGameSettingOperations;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 43
    .line 44
    iget-object v0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->U()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_5

    .line 68
    .line 69
    sget-object p1, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->k()Lcom/xj/winemu/bean/PcSettingDataEntity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    sget-object v1, Lcom/xj/winemu/download/WinEmuFileExplorer;->a:Lcom/xj/winemu/download/WinEmuFileExplorer;

    .line 78
    .line 79
    move v3, v2

    .line 80
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    move v4, v3

    .line 85
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    move v5, v4

    .line 90
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getFileName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    move v7, v5

    .line 95
    invoke-virtual {p1}, Lcom/xj/winemu/bean/PcSettingDataEntity;->getVersion()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iput-object p0, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object p1, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    iput v7, v6, Lcom/xj/winemu/settings/PcGameSettingOperations$getSelectDxvkOrDefault$1;->label:I

    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/xj/winemu/download/WinEmuFileExplorer;->z(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_3

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_3
    move-object v0, p0

    .line 113
    move-object p0, p1

    .line 114
    move-object p1, v1

    .line 115
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_4
    return-object v0

    .line 125
    :cond_5
    return-object p0
.end method

.method public final z1(Lcom/xj/winemu/bean/Box64TranslatorConfig;ZZ)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Lcom/xj/winemu/bean/Box64TranslatorConfig;->set_isUserApply(Z)V

    .line 7
    .line 8
    .line 9
    sget-object p3, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->a:Lcom/xj/winemu/settings/PcGameSettingDataHelper;

    .line 10
    .line 11
    sget-object v0, Lcom/xj/winemu/bean/PcSettingItemEntity;->Companion:Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/xj/winemu/bean/PcSettingItemEntity$Companion;->getCONTENT_TYPE_USER_APPLYING_BOX_TP_CONFIG()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/xj/winemu/settings/PcGameSettingOperations;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p3, v0, v1}, Lcom/xj/winemu/settings/PcGameSettingDataHelper;->z(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Lcom/blankj/utilcode/util/SPUtils;->c(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p3, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/xj/winemu/settings/PcGameSettingOperations;->c0()Lcom/blankj/utilcode/util/SPUtils;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p1}, Lcom/blankj/utilcode/util/GsonUtils;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p3, p1}, Lcom/blankj/utilcode/util/SPUtils;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
