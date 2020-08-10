.class public abstract Lcom/ingenic/iwds/slpt/view/core/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/view/core/Picture$StringPicture;,
        Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;,
        Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;,
        Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    }
.end annotation


# instance fields
.field backgroundColor:I

.field bitmap:Landroid/graphics/Bitmap;

.field group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

.field height:I

.field picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

.field pictureIndex:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 35
    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 37
    const v0, 0xffffff

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->backgroundColor:I

    .line 459
    return-void
.end method


# virtual methods
.method public abstract decodeBitmap()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 61
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 57
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    instance-of v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-nez v2, :cond_3

    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    check-cast p1, Lcom/ingenic/iwds/slpt/view/core/Picture;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture;->pictureIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getWidth()I
.end method

.method public abstract recycle()V
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 51
    return-void
.end method
