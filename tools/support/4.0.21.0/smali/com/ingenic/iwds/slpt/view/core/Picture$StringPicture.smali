.class public Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
.super Lcom/ingenic/iwds/slpt/view/core/Picture;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPicture"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

.field str:Ljava/lang/String;

.field textColor:I

.field textSize:F

.field typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture;-><init>()V

    .line 460
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    .line 461
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->typeface:Landroid/graphics/Typeface;

    .line 462
    new-instance v0, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    .line 463
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    .line 464
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textSize:F

    .line 465
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textColor:I

    .line 468
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    .line 469
    return-void
.end method


# virtual methods
.method public decodeBitmap()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 516
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textSize:F

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->setTextSize(F)V

    .line 517
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textColor:I

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->setColor(I)V

    .line 518
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->backgroundColor:I

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->setBackgroundColor(I)V

    .line 519
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->backgroundColor:I

    const v4, 0xffffff

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->setAntiAlias(Z)V

    .line 521
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 523
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->decodeChar(C)V

    .line 526
    :goto_2
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->getBitmapNoCopy()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    .line 527
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 519
    goto :goto_1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->decodeString(Ljava/lang/String;)V

    goto :goto_2

    .line 531
    :cond_3
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    if-ne p1, p0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v1

    .line 495
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    instance-of v3, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    if-nez v3, :cond_3

    move v1, v2

    .line 498
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 500
    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    .line 501
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 502
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->typeface:Landroid/graphics/Typeface;

    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textSize:F

    iget v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textSize:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textColor:I

    iget v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textColor:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->backgroundColor:I

    iget v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->backgroundColor:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 507
    :cond_5
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->str:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->decodeBitmap()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->creator:Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpCreator;->recycle()V

    .line 538
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 543
    :cond_1
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->bitmap:Landroid/graphics/Bitmap;

    .line 544
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 488
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->backgroundColor:I

    .line 489
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textColor:I

    .line 484
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 479
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->textSize:F

    .line 480
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->typeface:Landroid/graphics/Typeface;

    .line 476
    return-void
.end method
