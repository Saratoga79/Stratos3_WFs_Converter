.class Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->access$502(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;D)D

    const-string p1, "SportEight"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataUpdate mSportTotalDistance = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->access$700(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V

    :cond_0
    return-void
.end method
