.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$5;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

# Options dialog listener: "Inject/Replace" / "Backup" / "Remove"
# which=0 → pickFile (inject/replace), which=1 → backup, which=2 → remove

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$5;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$5;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

    if-nez p2, :not0

    # which=0: Inject/Replace — set mode=1 then pick file
    const/4 p2, 0x1
    iput p2, v0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->mode:I
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->pickFile()V
    return-void

    :not0
    const/4 p1, 0x1
    if-ne p2, p1, :not1

    # which=1: Backup
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->backupComponent()V
    return-void

    :not1
    # which=2: Remove
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->removeComponent()V
    return-void
.end method
