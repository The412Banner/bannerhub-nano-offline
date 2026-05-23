.class final Lcom/xj/winemu/settings/CpuMultiSelectHelper$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xj/winemu/settings/CpuMultiSelectHelper;->show(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# Holds the shared checked[] boolean array — updated on each checkbox tap.
.field final synthetic a:[Z

.method constructor <init>([Z)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$1;->a:[Z
    return-void
.end method

# onClick(DialogInterface dialog, int which, boolean isChecked)
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    iget-object v0, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$1;->a:[Z
    # checked[which] = isChecked
    aput-boolean p3, v0, p2
    return-void
.end method
