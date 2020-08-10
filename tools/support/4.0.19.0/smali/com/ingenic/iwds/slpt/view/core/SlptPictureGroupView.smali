.class public Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.source "SlptPictureGroupView.java"


# instance fields
.field group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

.field public num:I

.field strArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->newPictureGroup()V

    .line 38
    return-void
.end method


# virtual methods
.method protected initCapacity()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0xa

    return v0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 176
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->SVIEW_PICTURE_GROUP:S

    return v0
.end method

.method public newPictureGroup()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->initCapacity()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;-><init>(I)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 43
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->initCapacity()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V
    .locals 3
    .param p1, "container"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    .param p2, "param"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    .prologue
    const v2, 0xffffff

    .line 181
    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    move-result-object v0

    .line 183
    .local v0, "mParam":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-eqz v1, :cond_1

    .line 184
    iput v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 190
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->setBackgroundColorForAll(I)V

    .line 191
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {p1, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->add(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z

    .line 192
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    if-eq v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    goto :goto_0
.end method

.method public setImagePicture(ILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setImagePicture(I[B)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "mem"    # [B

    .prologue
    .line 91
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>([B)V

    .line 92
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setImagePictureArray([Ljava/lang/String;)Z
    .locals 5
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 154
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_1

    array-length v1, p1

    .line 157
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 158
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 166
    :cond_0
    return v4

    .line 154
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 157
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 163
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->setImagePicture(ILjava/lang/String;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setImagePictureArray([[B)Z
    .locals 5
    .param p1, "array"    # [[B

    .prologue
    const/4 v4, 0x0

    .line 133
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_1

    array-length v1, p1

    .line 136
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 137
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 145
    :cond_0
    return v4

    .line 133
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 136
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 142
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->setImagePicture(I[B)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setStringPicture(IC)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 77
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

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

    .line 78
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

    .line 79
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 80
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 81
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 83
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setStringPicture(ILjava/lang/String;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 63
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    invoke-direct {v0, p2}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 65
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 66
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 68
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z

    move-result v1

    return v1
.end method

.method public setStringPictureArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 110
    array-length v2, p1

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v3, v3, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge v2, v3, :cond_0

    array-length v1, p1

    .line 113
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 114
    aget-object v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->setStringPicture(ILjava/lang/String;)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    iget v1, v2, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    goto :goto_0

    .line 116
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
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setTextAttr(FILandroid/graphics/Typeface;)V

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->strArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->setStringPicture(ILjava/lang/String;)Z

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 197
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->num:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureGroupView;->initCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 200
    return-void
.end method
