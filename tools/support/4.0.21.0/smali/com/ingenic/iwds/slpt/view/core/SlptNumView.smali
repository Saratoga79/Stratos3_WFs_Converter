.class public Lcom/ingenic/iwds/slpt/view/core/SlptNumView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.source "SlptNumView.java"


# instance fields
.field group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

.field public num:I

.field strArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;-><init>()V

    .line 32
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->initCapacity()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;-><init>(I)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 33
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->initCapacity()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 195
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->SVIEW_NUM:S

    return v0
.end method

.method registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V
    .locals 3
    .param p1, "container"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    .param p2, "param"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    .prologue
    const v2, 0xffffff

    .line 200
    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    move-result-object v0

    .line 202
    .local v0, "mParam":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-eqz v1, :cond_1

    .line 203
    iput v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 209
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->setBackgroundColorForAll(I)V

    .line 210
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {p1, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->add(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z

    .line 211
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    if-eq v1, v2, :cond_0

    .line 205
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    goto :goto_0
.end method

.method public setImagePicture(ILandroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "mem"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setImagePicture(ILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setImagePicture(I[B)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "mem"    # [B

    .prologue
    .line 88
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>([B)V

    .line 89
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setImagePictureArray([Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "array"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 151
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_1

    array-length v1, p1

    .line 154
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 155
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 163
    :cond_0
    return v4

    .line 151
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 154
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 160
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePicture(ILandroid/graphics/Bitmap;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setImagePictureArray([Ljava/lang/String;)Z
    .locals 5
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 173
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_1

    array-length v1, p1

    .line 176
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 177
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 185
    :cond_0
    return v4

    .line 173
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 176
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 182
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePicture(ILjava/lang/String;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setImagePictureArray([[B)Z
    .locals 5
    .param p1, "array"    # [[B

    .prologue
    const/4 v4, 0x0

    .line 130
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_1

    array-length v1, p1

    .line 133
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 134
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 142
    :cond_0
    return v4

    .line 130
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 133
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 139
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePicture(I[B)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setStringPicture(IC)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 65
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 66
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 68
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 69
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 71
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setStringPicture(ILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 51
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 53
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 54
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 56
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setStringPictureArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 107
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_0

    array-length v1, p1

    .line 110
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setStringPicture(ILjava/lang/String;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 113
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    return-void
.end method

.method public setTextAttr(FILandroid/graphics/Typeface;)V
    .locals 2
    .param p1, "textSize"    # F
    .param p2, "textColor"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setTextAttr(FILandroid/graphics/Typeface;)V

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->strArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setStringPicture(ILjava/lang/String;)Z

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 216
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->num:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(Ljava/lang/String;)V

    .line 218
    return-void
.end method
