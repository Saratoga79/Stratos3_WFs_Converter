.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->access$3300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->access$3300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
