.class public Lcom/huami/watch/watchface/widget/TimeAnalogWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private hHalfH:F

.field private hHalfW:F

.field private hrRot:F

.field private mCenterX:I

.field private mCenterY:I

.field private mGPaint:Landroid/graphics/Paint;

.field private mHalfH:F

.field private mHalfW:F

.field private mHourBitmap:Landroid/graphics/Bitmap;

.field private mMinBitmap:Landroid/graphics/Bitmap;

.field private mSecBitmap:Landroid/graphics/Bitmap;

.field private minRot:F

.field private sHalfH:F

.field private sHalfW:F

.field private secRot:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mCenterX:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mCenterY:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    iput-object p4, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hHalfW:F

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hHalfH:F

    :cond_1
    iput-object p5, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHalfW:F

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHalfH:F

    :cond_2
    iput-object p6, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mSecBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->sHalfW:F

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->sHalfH:F

    :cond_3
    return-void
.end method

.method private updateDegree(III)V
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->secRot:F

    mul-int/lit8 p1, p2, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->minRot:F

    mul-int/lit8 p3, p3, 0x5

    mul-int/lit8 p3, p3, 0x6

    div-int/lit8 p2, p2, 0xc

    mul-int/lit8 p2, p2, 0x6

    add-int/2addr p3, p2

    int-to-float p1, p3

    iput p1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hrRot:F

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mCenterX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mCenterY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->updateDegree(III)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hrRot:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hHalfW:F

    iget v3, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->hHalfH:F

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->minRot:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHalfW:F

    iget v3, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mHalfH:F

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->secRot:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->sHalfW:F

    iget v1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->sHalfH:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method
