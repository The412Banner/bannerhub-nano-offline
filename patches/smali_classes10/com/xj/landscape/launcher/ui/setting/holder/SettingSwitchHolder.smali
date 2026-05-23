.class public final Lcom/xj/landscape/launcher/ui/setting/holder/SettingSwitchHolder;
.super Lcom/xj/common/view/adapter/VBViewHolder;
.source "r8-map-id-712846b76e3224c0169ce621759774aea144e14d75c3fb3c733f7f2b03c1bb19"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xj/common/view/adapter/VBViewHolder<",
        "Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;",
        "Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xj/common/view/adapter/VBViewHolder;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/xj/landscape/launcher/ui/setting/holder/SettingSwitchHolder;->w(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;Landroid/view/View;)Lkotlin/Unit;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/xj/landscape/launcher/ui/setting/holder/SettingSwitchHolder;->v(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static final v(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Landroid/view/View;Z)V
    .locals 6

    .line 1
    .line 2
    const-string p1, "layout"

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const/16 p0, 0x8

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/xj/base/adaptscreen/AdaptiveSizeKt;->b(Ljava/lang/Number;)Lcom/xj/base/adaptscreen/AdaptiveSize;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/xj/base/adaptscreen/AdaptiveSize;->f()I

    .line 23
    move-result v1

    .line 24
    const/4 v4, 0x6

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static/range {v0 .. v5}, Lcom/xj/common/utils/FocusableBorderExtKt;->g(Landroid/view/View;IIIILjava/lang/Object;)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/xj/common/utils/FocusableBorderExtKt;->b(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public static final w(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;Landroid/view/View;)Lkotlin/Unit;
    .locals 9

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;->y()V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/xj/common/view/CommFocusSwitchBtn;->getSwitch()Z

    .line 16
    move-result p2

    .line 17
    .line 18
    xor-int/lit8 v0, p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->isNotificationContentType()Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getContentType()I

    move-result v3

    # ── BannerHub patch: intercept CONTENT_TYPE_API (0x1a) → show AlertDialog ──
    const/16 v4, 0x1a
    if-ne v3, v4, :cond_normal_toggle

    # v5 = switchBtn, v6 = context
    iget-object v5, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    invoke-virtual {v5}, Lcom/xj/common/view/CommFocusSwitchBtn;->getContext()Landroid/content/Context;
    move-result-object v6

    # Create AlertDialog.Builder
    new-instance v7, Landroid/app/AlertDialog$Builder;
    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # Set title
    const-string v6, "Compatibility API"
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v7

    # Build items array: ["GameHub (Default)", "EmuReady", "BannerHub API"]
    const/4 v6, 0x3
    new-array v6, v6, [Ljava/lang/CharSequence;
    const-string v8, "GameHub (Default)"
    const/4 v4, 0x0
    aput-object v8, v6, v4
    const-string v8, "EmuReady"
    const/4 v4, 0x1
    aput-object v8, v6, v4
    const-string v8, "BannerHub API"
    const/4 v4, 0x2
    aput-object v8, v6, v4

    # Current selection
    invoke-static {}, Lapp/revanced/extension/gamehub/prefs/GameHubPrefs;->getApiSource()I
    move-result v8

    # Listener: BhApiSelectorListener(switchBtn)
    iget-object v4, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    new-instance v5, Lcom/xj/winemu/sidebar/BhApiSelectorListener;
    invoke-direct {v5, v4}, Lcom/xj/winemu/sidebar/BhApiSelectorListener;-><init>(Lcom/xj/common/view/CommFocusSwitchBtn;)V

    # setSingleChoiceItems(items, checked, listener) and show
    invoke-virtual {v7, v6, v8, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v7
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    # Return Unit early — skip normal toggle path
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    return-object p0

    :cond_normal_toggle
    # ── BH patch: intercept SD card storage toggle (0x18) → show info dialog ──
    const/16 v4, 0x18
    if-ne v3, v4, :cond_do_toggle

    iget-object v4, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;
    invoke-virtual {v4}, Lcom/xj/common/view/CommFocusSwitchBtn;->getContext()Landroid/content/Context;
    move-result-object v5

    # confirm listener (confirm=true; v2=0x1 from earlier)
    new-instance v6, Lcom/xj/winemu/sidebar/BhStorageToggleListener;
    invoke-direct {v6, v4, v0, v2}, Lcom/xj/winemu/sidebar/BhStorageToggleListener;-><init>(Lcom/xj/common/view/CommFocusSwitchBtn;ZZ)V

    # cancel listener (confirm=false)
    new-instance v7, Lcom/xj/winemu/sidebar/BhStorageToggleListener;
    const/4 v8, 0x0
    invoke-direct {v7, v4, v0, v8}, Lcom/xj/winemu/sidebar/BhStorageToggleListener;-><init>(Lcom/xj/common/view/CommFocusSwitchBtn;ZZ)V

    new-instance v8, Landroid/app/AlertDialog$Builder;
    invoke-direct {v8, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v0, :cond_storage_on_title
    const-string v4, "Disable External Storage?"
    goto :goto_storage_title
    :cond_storage_on_title
    const-string v4, "Enable External Storage?"
    :goto_storage_title
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v8

    if-nez v0, :cond_storage_on_msg
    const-string v4, "When disabled, new GOG, Epic, and Amazon game downloads will save to internal app storage.\n\nGames already installed on the SD card will not be moved — they must be uninstalled from their current location separately."
    goto :goto_storage_msg
    :cond_storage_on_msg
    const-string v4, "When enabled, GOG, Epic, and Amazon game downloads will be saved to your SD card at:\n\n  {SD card}/bannerhub/{store}/{game}/\n\nThe install location is locked at install time. Toggling this switch later will not affect games that are already installed — they will still uninstall from their original location."
    :goto_storage_msg
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v8

    if-nez v0, :cond_storage_on_btn
    const-string v4, "Turn Off"
    goto :goto_storage_btn
    :cond_storage_on_btn
    const-string v4, "Turn On"
    :goto_storage_btn
    invoke-virtual {v8, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v8

    const-string v4, "Cancel"
    invoke-virtual {v8, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    return-object p0

    :cond_do_toggle
    invoke-static {v3, v0}, Lapp/revanced/extension/gamehub/prefs/GameHubPrefs;->handleSettingToggle(IZ)Z

    move-result v0

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v2}, Lcom/xj/common/view/CommFocusSwitchBtn;->b(ZZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getContentType()I

    .line 34
    move-result p0

    .line 35
    .line 36
    sget-object p1, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->Companion:Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_BLOCK()I

    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x2

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    if-ne p0, v1, :cond_2

    .line 45
    .line 46
    new-instance p0, Lcom/xj/landscape/launcher/event/BlockNotificationEvent;

    .line 47
    .line 48
    if-nez p2, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v2, v3

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-direct {p0, v2}, Lcom/xj/landscape/launcher/event/BlockNotificationEvent;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_PUSH()I

    .line 62
    move-result v1

    .line 63
    .line 64
    if-ne p0, v1, :cond_4

    .line 65
    .line 66
    new-instance p0, Lcom/xj/landscape/launcher/event/PushNotificationEvent;

    .line 67
    .line 68
    if-nez p2, :cond_3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v2, v3

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-direct {p0, v2}, Lcom/xj/landscape/launcher/event/PushNotificationEvent;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_ORTHER()I

    .line 82
    move-result v1

    .line 83
    .line 84
    if-ne p0, v1, :cond_6

    .line 85
    .line 86
    new-instance p0, Lcom/xj/landscape/launcher/event/OtherNotificationEvent;

    .line 87
    .line 88
    if-nez p2, :cond_5

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v2, v3

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-direct {p0, v2}, Lcom/xj/landscape/launcher/event/OtherNotificationEvent;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 97
    goto :goto_5

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_FRIEND()I

    .line 101
    move-result v1

    .line 102
    .line 103
    if-ne p0, v1, :cond_8

    .line 104
    .line 105
    new-instance p0, Lcom/xj/landscape/launcher/event/FriendNotificationEvent;

    .line 106
    .line 107
    if-nez p2, :cond_7

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    move v2, v3

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-direct {p0, v2}, Lcom/xj/landscape/launcher/event/FriendNotificationEvent;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 116
    goto :goto_5

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_HIGHTLIGHT()I

    .line 120
    move-result v1

    .line 121
    .line 122
    if-ne p0, v1, :cond_a

    .line 123
    .line 124
    new-instance p0, Lcom/xj/landscape/launcher/event/HightLightNotificationEvent;

    .line 125
    .line 126
    if-nez p2, :cond_9

    .line 127
    goto :goto_4

    .line 128
    :cond_9
    move v2, v3

    .line 129
    .line 130
    .line 131
    :goto_4
    invoke-direct {p0, v2}, Lcom/xj/landscape/launcher/event/HightLightNotificationEvent;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 135
    goto :goto_5

    .line 136
    .line 137
    .line 138
    :cond_a
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_RECOMMEND_GAME()I

    .line 139
    move-result p2

    .line 140
    .line 141
    if-ne p0, p2, :cond_b

    .line 142
    .line 143
    new-instance p0, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;

    .line 144
    .line 145
    sget-object p1, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;->GamePush:Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1, v0}, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;-><init>(Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;Z)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 152
    goto :goto_5

    .line 153
    .line 154
    .line 155
    :cond_b
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_ACTIVITY()I

    .line 156
    move-result p2

    .line 157
    .line 158
    if-ne p0, p2, :cond_c

    .line 159
    .line 160
    new-instance p0, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;

    .line 161
    .line 162
    sget-object p1, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;->ActivityPush:Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p1, v0}, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;-><init>(Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;Z)V

    .line 166
    .line 167
    .line 168
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 169
    goto :goto_5

    .line 170
    .line 171
    .line 172
    :cond_c
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_NEWS()I

    .line 173
    move-result p1

    .line 174
    .line 175
    if-ne p0, p1, :cond_d

    .line 176
    .line 177
    new-instance p0, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;

    .line 178
    .line 179
    sget-object p1, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;->NewsPush:Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p1, v0}, Lcom/xj/landscape/launcher/data/model/entity/SwitchPushEvent;-><init>(Lcom/xj/landscape/launcher/data/model/entity/SwitchPushType;Z)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v4, v3, v4}, Lcom/drake/channel/ChannelKt;->c(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 186
    .line 187
    :cond_d
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    return-object p0
.end method


# virtual methods
.method public bridge synthetic l(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/xj/landscape/launcher/ui/setting/holder/SettingSwitchHolder;->u(Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;)V

    .line 6
    return-void
.end method

.method public u(Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;)V
    .locals 11

    .line 1
    .line 2
    const-string v0, "entity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xj/common/view/adapter/VBViewHolder;->f()Landroidx/viewbinding/ViewBinding;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->tvTitle:Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getContentName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->tvSubTitle:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getSubContentName()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->tvSubTitle:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string v1, "tvSubTitle"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getSubContentName()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/text/StringsKt;->C0(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const/16 v1, 0x8

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 57
    .line 58
    new-instance v1, Lcom/xj/landscape/launcher/ui/setting/holder/l;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/xj/landscape/launcher/ui/setting/holder/l;-><init>(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 67
    .line 68
    const-string v1, "layout"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/xj/common/view/focus/focus/view/FocusViewsExtKt;->b(Landroid/view/View;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->layout:Lcom/xj/common/view/focus/focus/view/FocusableConstraintLayout;

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    new-instance v1, Lcom/xj/landscape/launcher/ui/setting/holder/m;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0, p1}, Lcom/xj/landscape/launcher/ui/setting/holder/m;-><init>(Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/xj/common/utils/ClickUtilsKt;->i(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    iget-object p0, p0, Lcom/xj/landscape/launcher/databinding/LlauncherItemSettingFocusableSwitchBinding;->switchBtn:Lcom/xj/common/view/CommFocusSwitchBtn;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getContentType()I

    .line 93
    move-result v0

    .line 94
    .line 95
    sget-object v1, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->Companion:Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_BLOCK()I

    .line 99
    move-result v3

    .line 100
    const/4 v4, 0x1

    .line 101
    .line 102
    if-ne v0, v3, :cond_2

    .line 103
    .line 104
    sget-object p1, Lcom/xj/landscape/launcher/utils/NotificationUtils;->a:Lcom/xj/landscape/launcher/utils/NotificationUtils;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/utils/NotificationUtils;->a()I

    .line 108
    move-result p1

    .line 109
    .line 110
    if-ne p1, v4, :cond_1

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    move v4, v2

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {v1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_PUSH()I

    .line 117
    move-result v3

    .line 118
    .line 119
    if-ne v0, v3, :cond_3

    .line 120
    .line 121
    sget-object p1, Lcom/xj/common/user/UserManager;->INSTANCE:Lcom/xj/common/user/UserManager;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/xj/common/user/UserManager;->getAllow_sms_notice()I

    .line 125
    move-result p1

    .line 126
    .line 127
    if-ne p1, v4, :cond_1

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {v1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_ORTHER()I

    .line 132
    move-result v3

    .line 133
    .line 134
    if-ne v0, v3, :cond_4

    .line 135
    .line 136
    sget-object p1, Lcom/xj/common/user/UserManager;->INSTANCE:Lcom/xj/common/user/UserManager;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/xj/common/user/UserManager;->getAllow_other_notice()I

    .line 140
    move-result p1

    .line 141
    .line 142
    if-ne p1, v4, :cond_1

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-virtual {v1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_FRIEND()I

    .line 147
    move-result v3

    .line 148
    .line 149
    if-ne v0, v3, :cond_5

    .line 150
    .line 151
    sget-object p1, Lcom/xj/common/user/UserManager;->INSTANCE:Lcom/xj/common/user/UserManager;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/xj/common/user/UserManager;->getAllow_friend_notice()I

    .line 155
    move-result p1

    .line 156
    .line 157
    if-ne p1, v4, :cond_1

    .line 158
    goto :goto_1

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity$Companion;->getCONTENT_TYPE_NOTIFICATION_HIGHTLIGHT()I

    .line 162
    move-result v1

    .line 163
    .line 164
    if-ne v0, v1, :cond_6

    .line 165
    .line 166
    sget-object p1, Lcom/xj/common/user/UserManager;->INSTANCE:Lcom/xj/common/user/UserManager;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/xj/common/user/UserManager;->getAllow_video_notice()I

    .line 170
    move-result p1

    .line 171
    .line 172
    if-ne p1, v4, :cond_1

    .line 173
    goto :goto_1

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->isNotificationContentType()Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getSwitchValue()Z

    .line 183
    move-result v4

    .line 184
    goto :goto_1

    .line 185
    .line 186
    :cond_7
    sget-object v5, Lcom/xj/cloud/ui/setting/CloudGameSettingDataHelper;->a:Lcom/xj/cloud/ui/setting/CloudGameSettingDataHelper;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/xj/landscape/launcher/data/model/entity/SettingItemEntity;->getContentType()I

    .line 190
    move-result v6

    .line 191
    const/4 v9, 0x4

    .line 192
    const/4 v10, 0x0

    .line 193
    .line 194
    const-string v7, ""

    .line 195
    const/4 v8, 0x0

    .line 196
    .line 197
    .line 198
    invoke-static/range {v5 .. v10}, Lcom/xj/cloud/ui/setting/CloudGameSettingDataHelper;->j(Lcom/xj/cloud/ui/setting/CloudGameSettingDataHelper;ILjava/lang/String;ZILjava/lang/Object;)Z

    .line 199
    move-result v4

    invoke-static {v6, v4}, Lapp/revanced/extension/gamehub/prefs/GameHubPrefs;->getInitialSwitchValue(IZ)Z

    move-result v4

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/xj/common/view/CommFocusSwitchBtn;->b(ZZ)V

    .line 203
    return-void
.end method
