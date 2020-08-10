.class Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->access$1200(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$OnItemClickLitener;->onItemLongClick(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x0

    return p1
.end method
