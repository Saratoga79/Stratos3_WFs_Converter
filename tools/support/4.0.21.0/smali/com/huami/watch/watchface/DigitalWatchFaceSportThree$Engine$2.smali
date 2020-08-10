.class Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V

    :cond_0
    return-void
.end method
