.class public Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$BhBackBtn;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;

.method public constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$BhBackBtn;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$BhBackBtn;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->onBackPressed()V
    return-void
.end method
