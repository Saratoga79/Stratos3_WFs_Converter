.class Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/watchface/WatchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;

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

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;)V

    :cond_0
    return-void
.end method
