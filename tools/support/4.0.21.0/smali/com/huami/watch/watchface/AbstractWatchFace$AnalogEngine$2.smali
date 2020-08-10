.class Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

.field final synthetic val$tHorRot:F

.field final synthetic val$tMinRot:F

.field final synthetic val$tSecRot:F


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

    iput p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tSecRot:F

    iput p3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tMinRot:F

    iput p4, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tHorRot:F

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

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tSecRot:F

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->access$5002(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tMinRot:F

    const/high16 v2, 0x42580000    # 54.0f

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->access$5102(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->val$tHorRot:F

    const/high16 v2, 0x43960000    # 300.0f

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->access$5202(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->invalidate()V

    return-void
.end method
