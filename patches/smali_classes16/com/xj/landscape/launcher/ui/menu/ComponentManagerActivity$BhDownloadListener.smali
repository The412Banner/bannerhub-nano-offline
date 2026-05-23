.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhDownloadListener;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

# Click listener for the "↓ Download" bottom button: starts ComponentDownloadActivity

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhDownloadListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$BhDownloadListener;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    return-void
.end method
