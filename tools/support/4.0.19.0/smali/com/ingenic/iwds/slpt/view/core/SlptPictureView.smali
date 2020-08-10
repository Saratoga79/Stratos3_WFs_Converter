.class public Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
.super Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.source "SlptPictureView.java"


# instance fields
.field picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

.field str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->str:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->getWidth()I

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 126
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->SVIEW_PIC:S

    return v0
.end method

.method registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V
    .locals 3
    .param p1, "container"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    .param p2, "param"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    .prologue
    const v2, 0xffffff

    .line 131
    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    move-result-object v0

    .line 133
    .local v0, "mParam":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-eqz v1, :cond_1

    .line 134
    iput v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 138
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 140
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    iget v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/Picture;->setBackgroundColor(I)V

    .line 141
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {p1, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->add(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    .line 142
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    if-eq v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    goto :goto_0
.end method

.method public setImagePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 100
    :cond_0
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 101
    return-void
.end method

.method public setImagePicture(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 111
    :cond_0
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 112
    return-void
.end method

.method public setImagePicture([B)V
    .locals 1
    .param p1, "mem"    # [B

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 89
    :cond_0
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>([B)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 90
    return-void
.end method

.method public setStringPicture(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 62
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->str:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 68
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 69
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 71
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 72
    return-void
.end method

.method public setStringPicture(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->str:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "picture":Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextSize(F)V

    .line 50
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTypeFace(Landroid/graphics/Typeface;)V

    .line 51
    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;->setTextColor(I)V

    .line 53
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 54
    return-void
.end method

.method public setTextAttr(FILandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "textSize"    # F
    .param p2, "textColor"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setTextAttr(FILandroid/graphics/Typeface;)V

    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->str:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->str:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 147
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->writePicture(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;Lcom/ingenic/iwds/slpt/view/core/Picture;)V

    .line 148
    return-void
.end method
