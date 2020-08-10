.class public Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
.super Ljava/lang/Object;
.source "PreDrawedPictureGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreDrawedPicture"
.end annotation


# static fields
.field private static final COLOR_MAP:[B

.field private static final DATA_COUNT_OFFSET:I = 0x4

.field private static final HEIGHT_OFFSET:I

.field private static final TERMINATOR:B = -0x1t

.field private static final TERMINATOR_LEN:I = 0xc

.field private static final TERMINATOR_OFFSET:I = 0x10

.field private static final WIDTH_OFFSET:I

.field private static color_map_no_data:[B


# instance fields
.field public data_count:I

.field public height:I

.field public index:I

.field public mem:[B

.field public memLen:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    const-string v2, "colormap"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    .line 111
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    array-length v2, v2

    sput v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->WIDTH_OFFSET:I

    .line 112
    sget v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->WIDTH_OFFSET:I

    add-int/lit8 v2, v2, 0x4

    sput v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->HEIGHT_OFFSET:I

    .line 117
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    sput-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    .line 131
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    sget-object v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    sget-object v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 133
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    sget v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->WIDTH_OFFSET:I

    invoke-static {v2, v3, v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setInt([BII)V

    .line 134
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    sget v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->HEIGHT_OFFSET:I

    invoke-static {v2, v3, v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setInt([BII)V

    .line 136
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    array-length v2, v2

    add-int/lit8 v1, v2, -0x10

    .line 137
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    .line 138
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    add-int v3, v1, v0

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    sget-object v2, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    sget-object v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x4

    invoke-static {v2, v3, v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setInt([BII)V

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 121
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 122
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 123
    sget-object v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 124
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 125
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assets_path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 121
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 122
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 123
    sget-object v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 124
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 125
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    .line 208
    invoke-static {p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    .local v0, "mem":[B
    if-nez v0, :cond_0

    .line 211
    const-string v1, "SLPT-PreDrawedPicG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: failed to open file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->checkColormap([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const-string v1, "SLPT-PreDrawedPicG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: failed to check file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setConfig([B)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 121
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 122
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 123
    sget-object v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 124
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 125
    iput v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    .line 227
    invoke-static {p1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    .local v0, "mem":[B
    if-nez v0, :cond_0

    .line 230
    const-string v1, "SLPT-PreDrawedPicG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: failed to open file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->checkColormap([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string v1, "SLPT-PreDrawedPicG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: failed to check file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setConfig([B)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "mem"    # [B

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 121
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 122
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 123
    sget-object v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 124
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 125
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    .line 196
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->checkColormap([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "SLPT-PreDrawedPicG"

    const-string v1, "error: failed to check color map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->setConfig([B)V

    goto :goto_0
.end method

.method private checkColormap([B)Z
    .locals 5
    .param p1, "mem"    # [B

    .prologue
    const/4 v2, 0x0

    .line 148
    array-length v3, p1

    sget-object v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->color_map_no_data:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 153
    aget-byte v3, p1, v0

    sget-object v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->COLOR_MAP:[B

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    array-length v3, p1

    add-int/lit8 v1, v3, -0x10

    .line 159
    .local v1, "offset":I
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0xc

    if-ge v0, v3, :cond_3

    .line 160
    add-int v3, v1, v0

    aget-byte v3, p1, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getInt([BI)I
    .locals 2
    .param p0, "mem"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 175
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private setConfig([B)V
    .locals 1
    .param p1, "mem"    # [B

    .prologue
    .line 182
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 183
    sget v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->WIDTH_OFFSET:I

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 184
    sget v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->HEIGHT_OFFSET:I

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 185
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 190
    return-void
.end method

.method private static setInt([BII)V
    .locals 2
    .param p0, "mem"    # [B
    .param p1, "offset"    # I
    .param p2, "val"    # I

    .prologue
    .line 168
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 169
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 170
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 171
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 172
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
