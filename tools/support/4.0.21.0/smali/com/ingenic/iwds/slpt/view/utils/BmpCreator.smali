.class public Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;
.super Landroid/graphics/Paint;
.source "BmpCreator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BmpCreator"


# instance fields
.field private backgroundColor:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private bounds:Landroid/graphics/Rect;

.field private canvas:Landroid/graphics/Canvas;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    const v0, 0xffffff

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->backgroundColor:I

    .line 89
    iput-object p0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method createBitmap(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public decodeChar(C)V
    .locals 12
    .param p1, "ch"    # C

    .prologue
    const/4 v11, 0x0

    .line 130
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 131
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 133
    .local v3, "width1":I
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 134
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 136
    .local v4, "width2":I
    sub-int v2, v4, v3

    .line 138
    .local v2, "width":I
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 139
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v1, v8

    .line 140
    .local v1, "height":I
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->getWidth(I)I

    move-result v5

    .line 141
    .local v5, "x":I
    int-to-float v7, v1

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 143
    .local v6, "y":I
    invoke-virtual {p0, v2, v1}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->createBitmap(II)V

    .line 144
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    iget v8, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->backgroundColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 145
    iget-object v7, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v5

    int-to-float v10, v6

    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method public decodeString(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 107
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bounds:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->right:I

    .line 109
    .local v2, "width":I
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 110
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v1, v6

    .line 111
    .local v1, "height":I
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->getWidth(I)I

    move-result v3

    .line 112
    .local v3, "x":I
    int-to-float v5, v1

    iget v6, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 114
    .local v4, "y":I
    invoke-virtual {p0, v2, v1}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->createBitmap(II)V

    .line 115
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->backgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 116
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->canvas:Landroid/graphics/Canvas;

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    return-void
.end method

.method public decodeString(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 98
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->decodeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapNoCopy()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getWidth(I)I
    .locals 3
    .param p1, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 67
    .local v0, "align":Landroid/graphics/Paint$Align;
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v0, v2, :cond_1

    move p1, v1

    .line 73
    .end local p1    # "width":I
    :cond_0
    :goto_0
    return p1

    .line 69
    .restart local p1    # "width":I
    :cond_1
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v0, v2, :cond_2

    .line 70
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 71
    :cond_2
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-eq v0, v2, :cond_0

    move p1, v1

    .line 73
    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method public saveToFile(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->create(Landroid/graphics/Bitmap;)Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;

    move-result-object v0

    .line 156
    .local v0, "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveTofile(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 157
    .local v1, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->recycle()V

    .line 159
    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->backgroundColor:I

    .line 56
    return-void
.end method
