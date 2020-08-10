.class public abstract Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DigitalEngine"
.end annotation


# instance fields
.field private animHor:I

.field private animMin:I

.field private animSec:I

.field private init:Z

.field private initAnim:Z

.field mDrawTimeIndicator:Z

.field final synthetic this$0:Lcom/huami/watch/watchface/AbstractWatchFace;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->mDrawTimeIndicator:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->init:Z

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->initAnim:Z

    const/16 p1, 0x1e

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animSec:I

    const/16 p1, 0x9

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animMin:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animHor:I

    return-void
.end method

.method static synthetic access$5402(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->init:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->initAnim:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animSec:I

    return p1
.end method

.method static synthetic access$5702(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animMin:I

    return p1
.end method

.method static synthetic access$5802(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animHor:I

    return p1
.end method


# virtual methods
.method protected getInitAnimDuration()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDrawWidgets(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
    .locals 15

    move-object v14, p0

    move-object/from16 v0, p6

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->getHourFormat()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v4, 0xb

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    :cond_1
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v8, v1

    move v13, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v8, v1

    const/16 v13, 0xb

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v10, v3, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-boolean v0, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->init:Z

    if-eqz v0, :cond_3

    :goto_2
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v13}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V

    goto :goto_3

    :cond_3
    iget-boolean v0, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->initAnim:Z

    if-eqz v0, :cond_4

    iget v6, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animSec:I

    iget v7, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animMin:I

    iget v8, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->animHor:I

    goto :goto_2

    :cond_4
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->getInitAnimDuration()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-static {}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$5300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;

    add-int/2addr v6, v2

    invoke-direct {v1, p0, v6, v7, v8}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;III)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, v14, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->initAnim:Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->invalidate()V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onTimeUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->mDrawTimeIndicator:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->mDrawTimeIndicator:Z

    return-void
.end method
