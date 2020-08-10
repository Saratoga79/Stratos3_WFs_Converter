.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$802(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1000(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$902(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1002(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1100(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$900(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1300(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1000(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1400(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
