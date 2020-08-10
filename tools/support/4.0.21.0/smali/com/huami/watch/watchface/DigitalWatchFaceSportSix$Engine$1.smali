.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->onPrepareResources(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;

    invoke-static {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$1;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->postInvalidate()V

    return-void
.end method
