.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$6;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

# Type selection dialog listener
# which=0 DXVK(12), 1 VKD3D(13), 2 Box64(94), 3 FEXCore(95), 4 GPU(10)

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$6;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$6;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

    packed-switch p2, :sw_data
    # default: ignore (dialog cancelled)
    return-void

    :sw0  # DXVK = 12
    const/16 v1, 0xc
    goto :type_sel
    :sw1  # VKD3D = 13
    const/16 v1, 0xd
    goto :type_sel
    :sw2  # Box64 = 94
    const/16 v1, 0x5e
    goto :type_sel
    :sw3  # FEXCore = 95
    const/16 v1, 0x5f
    goto :type_sel
    :sw4  # GPU Driver = 10
    const/16 v1, 0xa

    :type_sel
    iput v1, v0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->selectedType:I
    const/4 v1, 0x3
    iput v1, v0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->mode:I
    invoke-virtual {v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->pickFile()V
    return-void

    nop
    :sw_data
    .packed-switch 0x0
        :sw0
        :sw1
        :sw2
        :sw3
        :sw4
    .end packed-switch
.end method
