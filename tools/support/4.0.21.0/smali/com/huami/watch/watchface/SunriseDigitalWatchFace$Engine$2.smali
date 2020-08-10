.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;
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

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

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

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    const/high16 v1, -0x3c390000    # -398.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x43a00000    # 320.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$602(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x430c0000    # 140.0f

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->access$702(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;->this$1:Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->invalidate()V

    return-void
.end method
