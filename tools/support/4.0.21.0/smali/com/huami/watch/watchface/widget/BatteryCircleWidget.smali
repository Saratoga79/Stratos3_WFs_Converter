.class public Lcom/huami/watch/watchface/widget/BatteryCircleWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private mBatterys:[Landroid/graphics/Bitmap;

.field private mBound:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mClipPathBig:Landroid/graphics/Path;

.field private mGPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mLeft:F

.field private mMaxDegree:F

.field private mMaxProgress:I

.field private mProgress:Landroid/graphics/Bitmap;

.field private mProgressBattery:I

.field private mProgressDegreeBattery:F

.field private mStartDegree:F

.field private mTop:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    iput p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mCenterX:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mCenterY:I

    iput-object p4, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mStartDegree:F

    iput p7, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mMaxDegree:F

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mMaxProgress:I

    :cond_0
    iput-object p5, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mWidth:I

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mHeight:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    iget p3, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mHeight:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    neg-float p2, p1

    iput p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mLeft:F

    neg-float p4, p3

    iput p4, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mTop:F

    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, p2, p4, p1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p5, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBound:Landroid/graphics/RectF;

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBatteryLevel(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p2, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mMaxProgress:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressBattery:I

    iget p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mMaxDegree:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressDegreeBattery:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressBattery:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressDegreeBattery:F

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mStartDegree:F

    iget v2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressDegreeBattery:F

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mCenterX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mCenterY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->updateBatteryLevel(II)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mLeft:F

    iget v2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mTop:F

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mBatterys:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mProgressBattery:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x41000000    # -0.5f

    mul-float v1, v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
