.class public final Lcom/xj/winemu/sidebar/BhTaskClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# Sidebar tab click listener for the Wine Task Manager tab.
# Implements Function0 (Kotlin lambda) — same pattern as k1, m1, o1.

.implements Lkotlin/jvm/functions/Function0;

.field public final a:Lcom/xj/winemu/sidebar/WineActivityDrawerContent;

.method public constructor <init>(Lcom/xj/winemu/sidebar/WineActivityDrawerContent;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/sidebar/BhTaskClickListener;->a:Lcom/xj/winemu/sidebar/WineActivityDrawerContent;
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1
    iget-object p0, p0, Lcom/xj/winemu/sidebar/BhTaskClickListener;->a:Lcom/xj/winemu/sidebar/WineActivityDrawerContent;
    const-string v0, "BhTaskManagerFragment"
    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/WineActivityDrawerContent;->U(Ljava/lang/String;)V
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    return-object p0
.end method
