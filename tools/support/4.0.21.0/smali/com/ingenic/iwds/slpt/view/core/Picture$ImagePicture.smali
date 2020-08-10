.class public Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
.super Lcom/ingenic/iwds/slpt/view/core/Picture;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePicture"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field mem:[B

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture;-><init>()V

    .line 380
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    .line 381
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 387
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 389
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture;-><init>()V

    .line 380
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    .line 381
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 396
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "mem"    # [B

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture;-><init>()V

    .line 380
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    .line 381
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 392
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    .line 393
    return-void
.end method


# virtual methods
.method public decodeBitmap()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 427
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 433
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    if-ne p1, p0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 404
    goto :goto_0

    .line 405
    :cond_2
    instance-of v3, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-nez v3, :cond_3

    move v1, v2

    .line 406
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 408
    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    .line 409
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    if-eqz v3, :cond_5

    .line 410
    :cond_4
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->mem:[B

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 411
    :cond_5
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 412
    :cond_6
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 413
    :cond_7
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 414
    :cond_8
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->decodeBitmap()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 447
    :cond_1
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;->bitmap:Landroid/graphics/Bitmap;

    .line 448
    return-void
.end method
