.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->access$3100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->access$3100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
