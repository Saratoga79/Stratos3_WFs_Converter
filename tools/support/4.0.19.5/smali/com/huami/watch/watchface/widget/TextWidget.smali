.class public Lcom/huami/watch/watchface/widget/TextWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private NUMS:[Landroid/graphics/Bitmap;

.field private mFontWidth:I

.field private mGPaint:Landroid/graphics/Paint;

.field private mStepCount:I


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mFontWidth:I

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    array-length p1, p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mFontWidth:I

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mGPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mGPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mStepCount:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mFontWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mStepCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mFontWidth:I

    mul-int v2, v2, v1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/huami/watch/watchface/widget/TextWidget;->NUMS:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    aget-object v4, v4, v5

    iget v5, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mFontWidth:I

    mul-int v5, v5, v3

    add-int/2addr v5, v2

    int-to-float v5, v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/huami/watch/watchface/widget/TextWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
