.class final Lcom/xj/winemu/settings/CpuMultiSelectHelper$4;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xj/winemu/settings/CpuMultiSelectHelper;->show(Landroid/view/View;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# a = boolean[8] checked array (shared with $2)
# b = index of this checkbox (0–7)
.field final synthetic a:[Z
.field final synthetic b:I

.method constructor <init>([ZI)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$4;->a:[Z
    iput p2, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$4;->b:I
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    iget-object v0, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$4;->a:[Z
    iget v1, p0, Lcom/xj/winemu/settings/CpuMultiSelectHelper$4;->b:I
    aput-boolean p2, v0, v1
    return-void
.end method
