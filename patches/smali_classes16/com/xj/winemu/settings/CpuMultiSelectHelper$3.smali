.class final Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xj/winemu/settings/CpuMultiSelectHelper;->show(Landroid/view/View;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.field final synthetic a:Lcom/blankj/utilcode/util/SPUtils;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lkotlin/jvm/functions/Function1;

.method constructor <init>(Lcom/blankj/utilcode/util/SPUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->a:Lcom/blankj/utilcode/util/SPUtils;
    iput-object p2, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->b:Ljava/lang/String;
    iput-object p3, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->c:Lkotlin/jvm/functions/Function1;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 33

    # With .locals 33, p0 = v33 (out of 4-bit range for iget-object).
    # Copy 'this' into v6 (local, always accessible) via /from16 at the start.
    move-object/from16 v6, p0

    # Save 0 (No Limit)
    iget-object v0, v6, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->a:Lcom/blankj/utilcode/util/SPUtils;
    iget-object v1, v6, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->b:Ljava/lang/String;
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->m(Ljava/lang/String;I)V

    # Fire UI refresh via full Kotlin defaults constructor
    iget-object v0, v6, Lcom/xj/winemu/settings/CpuMultiSelectHelper$3;->c:Lkotlin/jvm/functions/Function1;
    if-eqz v0, :cond_nocb

    new-instance v7, Lcom/xj/winemu/bean/DialogSettingListItemEntity;
    const/4 v8, 0x0      # id = 0 (No Limit)
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
