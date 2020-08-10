.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, -0x40c99d50

    mul-float v0, v0, p1

    const v1, 0x4021f770

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v2, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$200(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$102(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v2, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$400(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    move-result v0

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$302(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->invalidate()V

    return-void
.end method
