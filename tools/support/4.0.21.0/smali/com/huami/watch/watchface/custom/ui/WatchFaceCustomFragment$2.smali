.class Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    move-result-object p1

    sget-object v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    add-int/lit8 v0, p2, -0x1

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$602(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->getAdapterPosition()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    move-result-object v2

    sget-object v3, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$602(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I

    :cond_3
    return-void
.end method

.method public onItemDeleteClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I

    move-result p2

    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    const/4 v1, -0x1

    invoke-static {p2, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$602(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I

    move-result p2

    if-le p2, v0, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$620(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;I)I

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->removeView(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-gtz p2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onItemLongClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    move-result-object p1

    sget-object p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->NORMAL:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    sget-object p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->EDIT:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$502(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$2;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f070009

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
