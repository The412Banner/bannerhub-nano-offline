.class final Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xj/winemu/settings/CpuMultiSelectHelper;->show(Landroid/view/View;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.field final synthetic a:[Z
.field final synthetic b:Lcom/blankj/utilcode/util/SPUtils;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lkotlin/jvm/functions/Function1;

.method constructor <init>([ZLcom/blankj/utilcode/util/SPUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->a:[Z
    iput-object p2, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->b:Lcom/blankj/utilcode/util/SPUtils;
    iput-object p3, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->c:Ljava/lang/String;
    iput-object p4, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->d:Lkotlin/jvm/functions/Function1;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 33

    # With .locals 33, p0 = v33 (out of 4-bit range for iget-object).
    # Copy 'this' into v3 (local, always accessible) via /from16 at the start.
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->a:[Z
    const/4 v1, 0x0    # newMask = 0

    # Core 0 (mask = 1)
    const/4 v2, 0x0
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s0
    const/4 v2, 0x1
    or-int/2addr v1, v2
    :cond_s0

    # Core 1 (mask = 2)
    const/4 v2, 0x1
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s1
    const/4 v2, 0x2
    or-int/2addr v1, v2
    :cond_s1

    # Core 2 (mask = 4)
    const/4 v2, 0x2
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s2
    const/4 v2, 0x4
    or-int/2addr v1, v2
    :cond_s2

    # Core 3 (mask = 8)
    const/4 v2, 0x3
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s3
    const/16 v2, 0x8
    or-int/2addr v1, v2
    :cond_s3

    # Core 4 (mask = 16 = 0x10)
    const/4 v2, 0x4
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s4
    const/16 v2, 0x10
    or-int/2addr v1, v2
    :cond_s4

    # Core 5 (mask = 32 = 0x20)
    const/4 v2, 0x5
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s5
    const/16 v2, 0x20
    or-int/2addr v1, v2
    :cond_s5

    # Core 6 (mask = 64 = 0x40)
    const/4 v2, 0x6
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s6
    const/16 v2, 0x40
    or-int/2addr v1, v2
    :cond_s6

    # Core 7 (mask = 128 = 0x80)
    const/4 v2, 0x7
    aget-boolean v2, v0, v2
    if-eqz v2, :cond_s7
    const/16 v2, 0x80
    or-int/2addr v1, v2
    :cond_s7

    # No cores selected — show Toast and abort (don't save)
    if-nez v1, :cond_hasmask
    move-object/from16 v4, p1
    check-cast v4, Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;
    move-result-object v4
    const-string v5, "Select at least one core"
    const/4 v6, 0x0
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v4
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    return-void
    :cond_hasmask

    # All 8 cores checked (0xFF) == No Limit — treat same as "No Limit" button
    const/16 v2, 0xff
    if-ne v1, v2, :cond_notmax
    const/4 v1, 0x0
    :cond_notmax

    # Save: sputils.m(key, newMask)
    iget-object v0, v3, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->b:Lcom/blankj/utilcode/util/SPUtils;
    iget-object v2, v3, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->c:Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    # Fire UI refresh via full Kotlin defaults constructor
    iget-object v0, v3, Lcom/xj/winemu/settings/CpuMultiSelectHelper$2;->d:Lkotlin/jvm/functions/Function1;
    if-eqz v0, :cond_nocb

    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    move v8, v1          # id = newMask
    const/4 v9, 0x0
    const/4 v10, 0x1     # isSelected = true
    const/16 v11, 0x0
    const/16 v12, 0x0
    const/16 v13, 0x0
    const/16 v14, 0x0
    const/16 v15, 0x0
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
    const v31, 0x3ffffa
    const/16 v32, 0x0
    invoke-direct/range {v7 .. v32}, Lcom/xj/winemu/bean/DialogSettingListItemEntity;-><init>(IIZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/xj/winemu/api/bean/EnvLayerEntity;ZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :cond_nocb

    return-void
.end method
