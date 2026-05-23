.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$3;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

# Positive button listener for "Remove All Components" confirmation dialog.
# Calls ComponentManagerActivity.removeAllComponents() on confirm.

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$3;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$3;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->removeAllComponents()V
    return-void
.end method
