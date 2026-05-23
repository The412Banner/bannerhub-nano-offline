.class public Lcom/xj/landscape/launcher/ui/menu/BhSwipeCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

# Swipe LEFT (0x4) = remove component, RIGHT (0x8) = backup component

.field private activity:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
.field private adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;

.method public constructor <init>(Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;)V
    .locals 2
    # dragDirs=0, swipeDirs=LEFT(4)|RIGHT(8)=12
    const/4 v0, 0x0
    const/16 v1, 0xc
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/BhSwipeCallback;->activity:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/BhSwipeCallback;->adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    # p1=ViewHolder  p2=direction

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I
    move-result v0    # adapter pos
    if-ltz v0, :done

    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/BhSwipeCallback;->activity:Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/BhSwipeCallback;->adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;

    # ItemTouchHelper.LEFT = 4
    const/4 v3, 0x4
    if-ne p2, v3, :check_right

    # Swipe LEFT: remove
    invoke-virtual {v1, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->removeFiltered(I)V
    return-void

    :check_right
    # Swipe RIGHT: backup
    invoke-virtual {v1, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentManagerActivity;->backupFiltered(I)V

    :done
    return-void
.end method
