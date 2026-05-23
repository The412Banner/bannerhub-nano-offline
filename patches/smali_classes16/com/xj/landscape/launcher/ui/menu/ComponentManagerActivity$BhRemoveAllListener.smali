.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhRemoveAllListener;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

# Click listener for the "✕ All" header button: calls activity.confirmRemoveAll()

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhRemoveAllListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhRemoveAllListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->confirmRemoveAll()V
    return-void
.end method
