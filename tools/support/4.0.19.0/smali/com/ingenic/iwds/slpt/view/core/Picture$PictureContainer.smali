.class public Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureContainer"
.end annotation


# static fields
.field private static bitmapBuffer:[I


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;",
            ">;"
        }
    .end annotation
.end field

.field miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const v0, 0x19000

    new-array v0, v0, [I

    sput-object v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;-><init>(I)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 76
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    const-string v1, "misc"

    iput-object v1, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static native addPicture(Ljava/lang/String;II[II)V
.end method

.method public static native addPictureGroup(Ljava/lang/String;)V
.end method

.method public static native clearPictureGroup()V
.end method

.method private static requestBuffer(Landroid/graphics/Bitmap;)[I
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 169
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 170
    .local v0, "height":I
    mul-int v1, v2, v0

    .line 172
    .local v1, "len":I
    sget-object v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 173
    new-array v3, v1, [I

    sput-object v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    .line 176
    :cond_0
    sget-object v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    return-object v3
.end method

.method private static writeGroupToSlpt(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V
    .locals 10
    .param p0, "group"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPictureGroup(Ljava/lang/String;)V

    .line 197
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 199
    .local v9, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture;
    iput v8, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    .line 200
    invoke-virtual {v9}, Lcom/ingenic/iwds/slpt/view/core/Picture;->decodeBitmap()V

    .line 202
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v4, 0xffffff

    invoke-static {v0, v2, v2, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPicture(Ljava/lang/String;II[II)V

    .line 197
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->requestBuffer(Landroid/graphics/Bitmap;)[I

    .line 210
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 211
    .local v3, "width":I
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 212
    .local v7, "height":I
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    iget v4, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->backgroundColor:I

    invoke-static {v0, v3, v7, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPicture(Ljava/lang/String;II[II)V

    .line 216
    invoke-virtual {v9}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    goto :goto_1

    .line 218
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v9    # "picture":Lcom/ingenic/iwds/slpt/view/core/Picture;
    :cond_1
    return-void
.end method

.method private writeGroupToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V
    .locals 10
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p2, "group"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .prologue
    .line 239
    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePictureGroup(Ljava/lang/String;)Z

    .line 241
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    iget-object v0, p2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 242
    iget-object v0, p2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 243
    .local v9, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture;
    iput v8, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    .line 244
    invoke-virtual {v9}, Lcom/ingenic/iwds/slpt/view/core/Picture;->decodeBitmap()V

    .line 246
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xffffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writePictureToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;II[II)V

    .line 241
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->requestBuffer(Landroid/graphics/Bitmap;)[I

    .line 254
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 255
    .local v3, "width":I
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 256
    .local v7, "height":I
    iget-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->bitmapBuffer:[I

    iget v6, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->backgroundColor:I

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writePictureToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;II[II)V

    .line 260
    invoke-virtual {v9}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 264
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v9    # "picture":Lcom/ingenic/iwds/slpt/view/core/Picture;
    :cond_1
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->flushPicture()Z

    .line 265
    return-void
.end method

.method private writePictureToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;II[II)V
    .locals 0
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p2, "pictureName"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "mem"    # [I
    .param p6, "backgroundColor"    # I

    .prologue
    .line 234
    invoke-virtual/range {p1 .. p6}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePicture(Ljava/lang/String;II[II)V

    .line 236
    return-void
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z
    .locals 5
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 104
    if-nez p1, :cond_1

    .line 105
    const/4 v2, 0x0

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->findGroup(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 111
    .local v0, "g":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->isSubsetOf(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iput-object v0, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    goto :goto_0

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "g":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 119
    .restart local v0    # "g":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->isSubsetOf(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    iput-object p1, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 121
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object v4, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    goto :goto_0

    .line 117
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v0    # "g":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    :cond_5
    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iput-object v4, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    goto :goto_0
.end method

.method public add(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z
    .locals 4
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    const/4 v3, 0x1

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 162
    :goto_0
    return v2

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->findPicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->findPicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->findSamePicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Lcom/ingenic/iwds/slpt/view/core/Picture;

    move-result-object v1

    .line 143
    .local v1, "p":Lcom/ingenic/iwds/slpt/view/core/Picture;
    if-eqz v1, :cond_3

    .line 144
    iput-object v1, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 145
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iput-object v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    move v2, v3

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 150
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->findSamePicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Lcom/ingenic/iwds/slpt/view/core/Picture;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    iput-object v1, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 153
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iput-object v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    move v2, v3

    .line 154
    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->add(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    .line 159
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 160
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iput-object v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    move v2, v3

    .line 162
    goto :goto_0
.end method

.method public findGroup(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public findPicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z
    .locals 3
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_0

    move v1, v2

    .line 100
    :goto_0
    return v1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->findPicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public writeToSlpt()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->clearPictureGroup()V

    .line 223
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeGroupToSlpt(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 227
    .local v0, "group":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->groupIndex:I

    .line 228
    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeGroupToSlpt(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    :cond_0
    return-void
.end method

.method public writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 3
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->clearPictureGroup()Z

    .line 273
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->miscGroup:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-direct {p0, p1, v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeGroupToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 277
    .local v0, "group":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->groupIndex:I

    .line 278
    invoke-direct {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->writeGroupToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
    :cond_0
    return-void
.end method
