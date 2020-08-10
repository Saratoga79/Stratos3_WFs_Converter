.class Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


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

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;->access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceCustomFragment$CustomAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method
