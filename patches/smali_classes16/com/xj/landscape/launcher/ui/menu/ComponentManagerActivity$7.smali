.class Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$7;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;

# TextWatcher: calls activity.onSearchChanged() after each text edit

.field final this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;

.method constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$7;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity$7;->this$0:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->onSearchChanged(Ljava/lang/String;)V
    return-void
.end method
