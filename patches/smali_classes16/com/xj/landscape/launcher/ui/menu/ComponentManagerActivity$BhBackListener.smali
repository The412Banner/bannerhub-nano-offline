.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhBackListener;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

# Click listener for the ← back button: calls activity.finish()

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhBackListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhBackListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    return-void
.end method
