.class Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$402(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result p1

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result p1

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$800(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result p2

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$202(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$800(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
