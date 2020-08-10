.class public Lcom/huami/watch/watchface/widget/ProgressWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mClipPathBig:Landroid/graphics/Path;

.field private mGPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mLeft:F

.field private mMaxDegree:F

.field private mProgress:Landroid/graphics/Bitmap;

.field private mProgressDegreeToday:F

.field private mStartDegree:F

.field private mStep:I

.field private mStepDegree:F

.field private mTop:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FFI)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStep:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    iput p2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStartDegree:F

    iput p3, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mMaxDegree:F

    if-lez p4, :cond_0

    iput p4, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStep:I

    iget p2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mMaxDegree:F

    int-to-float p3, p4

    div-float/2addr p2, p3

    iput p2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStepDegree:F

    :cond_0
    iput-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mWidth:I

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mHeight:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    iget p3, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mHeight:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    neg-float p2, p1

    iput p2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mLeft:F

    neg-float p4, p3

    iput p4, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mTop:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p4, p1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mBound:Landroid/graphics/RectF;

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateSportTodayDistance(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStep:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStep:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStepDegree:F

    int-to-float p1, p1

    :goto_0
    mul-float p1, p1, v1

    iput p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgressDegreeToday:F

    goto :goto_1

    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mMaxDegree:F

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgressDegreeToday:F

    :goto_1
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mBound:Landroid/graphics/RectF;

    iget v2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mStartDegree:F

    iget v3, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgressDegreeToday:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mCenterX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mCenterY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/widget/ProgressWidget;->updateSportTodayDistance(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mLeft:F

    iget v2, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mTop:F

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/ProgressWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
