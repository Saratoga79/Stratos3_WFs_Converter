.class Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

.field final synthetic val$tHor:I

.field final synthetic val$tMin:I

.field final synthetic val$tSec:I


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;III)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    iput p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tSec:I

    iput p3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tMin:I

    iput p4, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tHor:I

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

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tSec:I

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->access$5602(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tMin:I

    add-int/lit8 v1, v1, -0x9

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x41100000    # 9.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->access$5702(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->val$tHor:I

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 p1, 0x41200000    # 10.0f

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->access$5802(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->invalidate()V

    return-void
.end method
