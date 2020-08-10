.class Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentViewHolder"
.end annotation


# instance fields
.field private contentView:Landroid/widget/ImageView;

.field private mDeleteView:Landroid/view/View;

.field private selectedView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->mDeleteView:Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I

    move-result p1

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0c0014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->contentView:Landroid/widget/ImageView;

    const p1, 0x7f0c0013

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->selectedView:Landroid/widget/ImageView;

    const p1, 0x7f0c0015

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->mDeleteView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->showSelectedView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->showDeletedView(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->contentView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->mDeleteView:Landroid/view/View;

    return-object p0
.end method

.method private showDeletedView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->mDeleteView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showSelectedView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->selectedView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
