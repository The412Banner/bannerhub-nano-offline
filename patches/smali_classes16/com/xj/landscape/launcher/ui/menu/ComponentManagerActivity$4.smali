.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$4;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

# Positive button listener for "Already Installed" duplicate dialog.
# Reads pendingUri + pendingType from the activity and calls injectComponent().

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$4;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$4;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    iget-object v1, v0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->pendingUri:Landroid/net/Uri;
    iget v2, v0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->pendingType:I
    invoke-static {v0, v1, v2}, Lcom/xj/landscape/launcher/ui/menu/ComponentInjectorHelper;->injectComponent(Landroid/content/Context;Landroid/net/Uri;I)V
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->showComponents()V
    return-void
.end method
