.class public abstract Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AnalogEngine"
.end annotation


# instance fields
.field private animHorRot:F

.field private animMinRot:F

.field private animSecRot:F

.field private init:Z

.field private initAnim:Z

.field final synthetic this$0:Lcom/huami/watch/watchface/AbstractWatchFace;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->init:Z

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->initAnim:Z

    const/high16 p1, 0x43340000    # 180.0f

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animSecRot:F

    const/high16 p1, 0x42580000    # 54.0f

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animMinRot:F

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animHorRot:F

    return-void
.end method

.method static synthetic access$4802(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->init:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->initAnim:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animSecRot:F

    return p1
.end method

.method static synthetic access$5102(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animMinRot:F

    return p1
.end method

.method static synthetic access$5202(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animHorRot:F

    return p1
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawWidgets(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p6

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x6

    int-to-float v6, v1

    mul-int/lit8 v1, v3, 0x6

    int-to-float v7, v1

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x6

    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    int-to-float v8, v0

    iget-boolean v0, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->init:Z

    if-eqz v0, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V

    goto :goto_1

    :cond_0
    iget-boolean v0, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->initAnim:Z

    if-eqz v0, :cond_1

    iget v6, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animSecRot:F

    iget v7, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animMinRot:F

    iget v8, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->animHorRot:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-static {}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$4700()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v6, v2

    invoke-direct {v1, p0, v6, v7, v8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;FFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->initAnim:Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->invalidate()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
