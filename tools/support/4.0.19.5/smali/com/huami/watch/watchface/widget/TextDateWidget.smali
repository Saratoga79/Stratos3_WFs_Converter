.class public Lcom/huami/watch/watchface/widget/TextDateWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private WEEKS:[Landroid/graphics/Bitmap;

.field private date:Ljava/lang/String;

.field private dateX:I

.field private dateY:I

.field private day:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

.field private mHeight:I

.field private mWidth:I

.field private month:I

.field private week:I

.field private weekX:I

.field private weekY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;[Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/16 p1, 0xc

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->month:I

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->day:I

    const/4 p1, 0x7

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->week:I

    const-string v0, "12.12"

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->date:Ljava/lang/String;

    iput p2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->x:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->y:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mWidth:I

    iput p5, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mHeight:I

    iput-object p6, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    iput-object p7, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->y:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    array-length p1, p2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->month:I

    const/4 p1, 0x2

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->day:I

    const/4 p1, 0x3

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->week:I

    iget p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->day:I

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->date:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/widget/ImageFont;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mFonts:Lcom/huami/watch/watchface/widget/ImageFont;

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->date:Ljava/lang/String;

    iget v4, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->dateX:I

    iget v5, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->dateY:I

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    array-length v0, v0

    iget v1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->week:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->WEEKS:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->week:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->weekX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->weekY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setDatePosition(II)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->dateX:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->dateY:I

    return-void
.end method

.method public setWeekPosition(II)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->weekX:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/TextDateWidget;->weekY:I

    return-void
.end method
