.class public Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.implements Landroid/view/View$OnClickListener;

# ViewHolder for component cards. Implements OnClickListener to call back into adapter.

.field public final adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;
.field public final accentStrip:Landroid/view/View;
.field public final nameText:Landroid/widget/TextView;
.field public final typeBadge:Landroid/widget/TextView;
.field public final badgeBg:Landroid/graphics/drawable/GradientDrawable;

.method public constructor <init>(Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    # p0=this p1=adapter p2=itemView p3=accentStrip p4=nameText p5=typeBadge p6=badgeBg
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V
    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;
    iput-object p3, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->accentStrip:Landroid/view/View;
    iput-object p4, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->nameText:Landroid/widget/TextView;
    iput-object p5, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->typeBadge:Landroid/widget/TextView;
    iput-object p6, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->badgeBg:Landroid/graphics/drawable/GradientDrawable;
    # Wire click listener on the item view
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I
    move-result v0
    # Ignore stale clicks (position = -1 after removal)
    if-ltz v0, :done
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter$ViewHolder;->adapter:Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;
    invoke-virtual {v1, v0}, Lcom/xj/landscape/launcher/ui/menu/BhComponentAdapter;->onItemTapped(I)V
    :done
    return-void
.end method
