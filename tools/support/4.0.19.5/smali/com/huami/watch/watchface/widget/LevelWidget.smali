.class public Lcom/huami/watch/watchface/widget/LevelWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private mGPaint:Landroid/graphics/Paint;

.field private mLevels:[Landroid/graphics/Bitmap;

.field private mMaxProgress:I

.field private mProgressLevel:I


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mMaxProgress:I

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBatteryLevel(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mMaxProgress:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mProgressLevel:I

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

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

    const/4 v0, 0x0

    return v0
.end method

.method public getY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/widget/LevelWidget;->updateBatteryLevel(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mLevels:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mProgressLevel:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/LevelWidget;->mGPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
