.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "updating time"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/huami/watch/watchface/AbstractWatchFace;->INTERACTIVE_UPDATE_RATE_MS:J

    sget-wide v4, Lcom/huami/watch/watchface/AbstractWatchFace;->INTERACTIVE_UPDATE_RATE_MS:J

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    rem-long/2addr v0, v4

    sub-long/2addr v2, v0

    invoke-virtual {p1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onTimeUpdate()V

    :cond_2
    :goto_0
    return-void
.end method
