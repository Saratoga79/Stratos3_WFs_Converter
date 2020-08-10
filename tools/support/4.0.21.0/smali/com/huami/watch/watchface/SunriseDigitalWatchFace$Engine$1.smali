.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;
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

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, -0x404d473e

    mul-float v0, v0, p1

    const v1, 0x4021f770

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v2, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$200(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$102(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    iget-object v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-static {v2, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$400(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    move-result v0

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$302(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    const/high16 v0, 0x3e000000    # 0.125f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    mul-float p1, p1, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    invoke-static {v1, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;I)V

    return-void

    :cond_0
    const/high16 v1, 0x3f600000    # 0.875f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float v3, v3, v2

    div-float/2addr v3, v0

    float-to-int p1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;I)V

    return-void
.end method
