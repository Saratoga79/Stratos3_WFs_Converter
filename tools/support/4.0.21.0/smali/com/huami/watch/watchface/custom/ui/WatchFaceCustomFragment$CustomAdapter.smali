.class Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdapter"
.end annotation


# instance fields
.field private mOnItemClickLitener:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;

.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->mOnItemClickLitener:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    return v0

    :cond_2
    move v0, v1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->mOnItemClickLitener:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomAction;->getAdapterViewHolder(I)Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/watchface/custom/model/AbsCustomViewHolder;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    move-result-object v1

    sget-object v2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;->EDIT:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)I

    move-result v1

    add-int/2addr v1, v4

    if-ne p2, v1, :cond_3

    invoke-static {v0, v4}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    goto :goto_1

    :cond_3
    invoke-static {v0, v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;Z)V

    :goto_1
    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$1;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;->access$1300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$3;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f030005

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomHeaderViewHolder;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p2, v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomHeaderViewHolder;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f030004

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomHeaderViewHolder;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p2, v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomHeaderViewHolder;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f030002

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p2, v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f030003

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p2, v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomContentViewHolder;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickLitener(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->mOnItemClickLitener:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;

    return-void
.end method
