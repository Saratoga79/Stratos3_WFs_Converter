.class public Lcom/huami/watch/watchface/widget/ImageFont;
.super Ljava/lang/Object;


# instance fields
.field private mFontBitmap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/ImageFont;->name:Ljava/lang/String;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addChar(CLandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V
    .locals 4

    if-eqz p2, :cond_3

    sget-object v0, Lcom/huami/watch/watchface/widget/ImageFont$1;->$SwitchMap$android$graphics$Paint$Align:[I

    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sub-int/2addr p3, v0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->getChar(C)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-virtual {p1, v1, v2, v3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr p3, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getChar(C)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getCharHeight(C)I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCharWidth(C)I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFontWidth(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->getCharWidth(C)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/ImageFont;->mFontBitmap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
