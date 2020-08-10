.class public Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
.super Ljava/lang/Object;
.source "BmpSaver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BmpSaver"

.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bfOffBits:I

.field public bfReserved1:I

.field public bfReserved2:I

.field public bfSize:I

.field public bfType:I

.field public biBitCount:I

.field public biClrImportant:I

.field public biClrUsed:I

.field public biCompression:I

.field public biHeight:I

.field public biPlanes:I

.field public biSize:I

.field public biSizeImage:I

.field public biWidth:I

.field public biXPlesPerMeter:I

.field public biYPlesPerMeter:I

.field public height:I

.field private index:I

.field private isAvailable:Z

.field public mem:[B

.field public paletteSize:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->isAvailable:Z

    .line 126
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfSize:I

    .line 127
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    .line 128
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;)Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 62
    .local v3, "height":I
    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x4

    and-int/lit8 v4, v7, -0x4

    .line 63
    .local v4, "lineLen":I
    mul-int v2, v3, v4

    .line 64
    .local v2, "buffSize":I
    const/4 v5, 0x0

    .line 68
    .local v5, "paletteSize":I
    add-int/lit8 v0, v2, 0x36

    .line 69
    .local v0, "bfSize":I
    sget-object v8, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    monitor-enter v8

    .line 70
    :try_start_0
    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->getAvailable(I)Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;

    move-result-object v1

    .line 71
    .local v1, "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-direct {v1, p0}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->createInner(Landroid/graphics/Bitmap;)V

    .line 74
    return-object v1

    .line 71
    .end local v1    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private createInner(Landroid/graphics/Bitmap;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 144
    .local v4, "height":I
    mul-int/lit8 v11, v10, 0x3

    add-int/lit8 v11, v11, 0x4

    and-int/lit8 v7, v11, -0x4

    .line 145
    .local v7, "lineLen":I
    mul-int v0, v4, v7

    .line 146
    .local v0, "buffSize":I
    const/4 v8, 0x0

    .line 149
    .local v8, "paletteSize":I
    const/16 v11, 0x4d42

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfType:I

    .line 150
    add-int/lit8 v11, v0, 0x36

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfSize:I

    .line 151
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfReserved1:I

    .line 152
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfReserved2:I

    .line 153
    const/16 v11, 0x36

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfOffBits:I

    .line 156
    const/16 v11, 0x28

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSize:I

    .line 157
    iput v10, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biWidth:I

    .line 158
    iput v4, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biHeight:I

    .line 159
    const/4 v11, 0x1

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biPlanes:I

    .line 160
    const/16 v11, 0x18

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biBitCount:I

    .line 161
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biCompression:I

    .line 162
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSizeImage:I

    .line 163
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biXPlesPerMeter:I

    .line 164
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biYPlesPerMeter:I

    .line 165
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biClrUsed:I

    .line 166
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biClrImportant:I

    .line 168
    const/4 v11, 0x0

    iput v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    .line 170
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfType:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveWord(I)V

    .line 171
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfSize:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 172
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfReserved1:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveWord(I)V

    .line 173
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfReserved2:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveWord(I)V

    .line 174
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfOffBits:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 176
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSize:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 177
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biWidth:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 178
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biHeight:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 179
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biPlanes:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveWord(I)V

    .line 180
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biBitCount:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveWord(I)V

    .line 181
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biCompression:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 182
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSizeImage:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 183
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biXPlesPerMeter:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 184
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biYPlesPerMeter:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 185
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biClrUsed:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 186
    iget v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biClrImportant:I

    invoke-direct {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->saveDword(I)V

    .line 192
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfOffBits:I

    .line 193
    .local v1, "byteCount":I
    mul-int/lit8 v11, v10, 0x3

    rem-int/lit8 v11, v11, 0x4

    rsub-int/lit8 v11, v11, 0x4

    rem-int/lit8 v9, v11, 0x4

    .line 194
    .local v9, "step":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 195
    const/4 v6, 0x0

    .local v6, "j":I
    move v2, v1

    .end local v1    # "byteCount":I
    .local v2, "byteCount":I
    :goto_1
    if-ge v6, v10, :cond_2

    .line 196
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 197
    .local v3, "color":I
    const/high16 v11, -0x1000000

    and-int/2addr v11, v3

    if-nez v11, :cond_0

    .line 198
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    const/4 v12, -0x1

    aput-byte v12, v11, v2

    .line 199
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "byteCount":I
    .restart local v2    # "byteCount":I
    const/4 v12, -0x1

    aput-byte v12, v11, v1

    .line 200
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    const/4 v12, -0x1

    aput-byte v12, v11, v2

    .line 195
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "byteCount":I
    .restart local v2    # "byteCount":I
    goto :goto_1

    .line 201
    :cond_0
    const v11, 0xffffff

    and-int/2addr v11, v3

    const v12, 0xffffff

    if-ne v11, v12, :cond_1

    .line 202
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    const/4 v12, -0x2

    aput-byte v12, v11, v2

    .line 203
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "byteCount":I
    .restart local v2    # "byteCount":I
    const/4 v12, -0x1

    aput-byte v12, v11, v1

    .line 204
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    const/4 v12, -0x1

    aput-byte v12, v11, v2

    goto :goto_2

    .line 206
    .end local v1    # "byteCount":I
    .restart local v2    # "byteCount":I
    :cond_1
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    and-int/lit16 v12, v3, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v2

    .line 207
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "byteCount":I
    .restart local v2    # "byteCount":I
    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v1

    .line 208
    iget-object v11, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    shr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v11, v2

    goto :goto_2

    .line 211
    .end local v1    # "byteCount":I
    .end local v3    # "color":I
    .restart local v2    # "byteCount":I
    :cond_2
    add-int v1, v2, v9

    .line 194
    .end local v2    # "byteCount":I
    .restart local v1    # "byteCount":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 217
    .end local v6    # "j":I
    :cond_3
    return-void
.end method

.method private static getAvailable(I)Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    .locals 5
    .param p0, "bufferSize"    # I

    .prologue
    .line 84
    const v1, 0x7fffffff

    .line 85
    .local v1, "delta":I
    const/4 v3, -0x1

    .line 86
    .local v3, "index":I
    const/4 v0, 0x0

    .line 88
    .local v0, "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 89
    sget-object v4, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    check-cast v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;

    .line 90
    .restart local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    iget-boolean v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->isAvailable:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    array-length v4, v4

    if-lt v4, p0, :cond_1

    .line 92
    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    array-length v4, v4

    sub-int/2addr v4, p0

    if-ge v4, v1, :cond_1

    .line 93
    iget-object v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    array-length v4, v4

    sub-int v1, v4, p0

    .line 94
    move v3, v2

    .line 95
    if-nez v1, :cond_1

    .line 102
    :cond_0
    if-gez v3, :cond_2

    .line 103
    new-instance v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;

    .end local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    invoke-direct {v0, p0}, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;-><init>(I)V

    .line 106
    .restart local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    sget-object v4, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    iput p0, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfSize:I

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->isAvailable:Z

    .line 117
    return-object v0

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_2
    sget-object v4, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    check-cast v0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;

    .restart local v0    # "bmp":Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;
    goto :goto_1
.end method

.method private printBmpIfno()V
    .locals 3

    .prologue
    .line 220
    const-string v0, "BmpSaver"

    const-string v1, "--------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bfType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bfSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bfOffBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->bfOffBits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biBitCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biBitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "BmpSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biSizeImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->biSizeImage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "BmpSaver"

    const-string v1, "--------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private saveDword(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    return-void
.end method

.method private saveWord(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->index:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 2

    .prologue
    .line 78
    sget-object v1, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->isAvailable:Z

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveTofile(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/utils/BmpSaver;->mem:[B

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->writeFile(Ljava/lang/String;[B)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
