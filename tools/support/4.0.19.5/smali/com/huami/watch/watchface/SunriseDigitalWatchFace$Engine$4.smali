.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->onPrepareResources(Landroid/content/res/Resources;)V
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

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$802(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v0

    const-wide/32 v2, 0xef2e

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$902(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1002(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1100(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$1200(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    return-void
.end method
