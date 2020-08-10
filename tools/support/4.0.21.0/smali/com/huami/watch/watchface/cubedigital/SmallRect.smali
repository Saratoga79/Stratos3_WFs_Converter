.class public Lcom/huami/watch/watchface/cubedigital/SmallRect;
.super Ljava/lang/Object;


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPosition:I

.field private mRectWidth:F

.field private mShape:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mColor:I

    iput p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mShape:I

    iput p3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPosition:I

    iput p4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const/16 p1, -0x100

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const p1, -0xffff01

    goto :goto_0

    :cond_1
    const/high16 p1, -0x10000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 6

    iget-object v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initPosition(F)V
    .locals 4

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPosition:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, p1

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget p1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float p1, p1, v1

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v0, v0, v3

    sub-float/2addr p1, v0

    goto :goto_1

    :pswitch_1
    iput v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, p1

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, p1

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    :goto_0
    iget p1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    goto :goto_1

    :pswitch_4
    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, p1

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget p1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float p1, p1, v3

    :goto_1
    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    return-void

    :pswitch_5
    iput v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, p1

    mul-float v0, v0, v3

    :goto_2
    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public drawSmallRect(Landroid/graphics/Canvas;F)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->initPosition(F)V

    iget p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mShape:I

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x40000000    # 2.0f

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v2, v5

    invoke-direct {p2, v0, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :pswitch_1
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v2, v5

    invoke-direct {p2, v0, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, -0x3ccc0000    # -180.0f

    goto :goto_0

    :pswitch_2
    new-instance p2, Landroid/graphics/RectF;

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v6, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v5, v6

    invoke-direct {p2, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :pswitch_3
    new-instance p2, Landroid/graphics/RectF;

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v2, v5

    invoke-direct {p2, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :pswitch_4
    new-instance p2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v6, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v7, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    invoke-direct {p2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :pswitch_5
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v6, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    invoke-direct {p2, v0, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :pswitch_6
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v4, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void

    :pswitch_7
    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    goto :goto_2

    :pswitch_8
    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    goto :goto_3

    :pswitch_9
    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    goto :goto_1

    :pswitch_a
    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v1, v2

    :goto_1
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v0, v1

    :goto_2
    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mStartY:F

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mRectWidth:F

    add-float/2addr v1, v2

    :goto_3
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/huami/watch/watchface/cubedigital/SmallRect;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
