.class public Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;
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

.field private mTop:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IILandroid/graphics/Bitmap;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    iput p2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mCenterX:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mCenterY:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mStartDegree:F

    iput p6, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mMaxDegree:F

    iput-object p4, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mWidth:I

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mHeight:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    iget p3, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mHeight:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    neg-float p2, p1

    iput p2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mLeft:F

    neg-float p4, p3

    iput p4, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mTop:F

    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, p2, p4, p1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p5, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mBound:Landroid/graphics/RectF;

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateSportTodayDistance(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr p1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mMaxDegree:F

    float-to-double v2, v0

    mul-double p1, p1, v2

    double-to-float p1, p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgressDegreeToday:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgressDegreeToday:F

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mStartDegree:F

    iget v2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgressDegreeToday:F

    invoke-virtual {p1, p2, v0, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mCenterX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mCenterY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->updateSportTodayDistance(D)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mProgress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mLeft:F

    iget v2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mTop:F

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
