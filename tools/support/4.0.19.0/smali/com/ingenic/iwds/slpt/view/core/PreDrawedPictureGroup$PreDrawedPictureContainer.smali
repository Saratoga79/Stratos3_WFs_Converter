.class public Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;
.super Ljava/lang/Object;
.source "PreDrawedPictureGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreDrawedPictureContainer"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    .line 257
    return-void
.end method

.method private writeGroupToSlpt(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 7
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->addPictureGroup(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 266
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v1

    .line 267
    .local v1, "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    iget v4, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    iget v5, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    iget-object v6, v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->addPicture(Ljava/lang/String;III[B)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    :cond_0
    return-void
.end method

.method private writeGroupToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 2
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p2, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    .line 283
    new-instance v0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;-><init>()V

    .line 284
    .local v0, "info":Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->setSendGroup(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    .line 287
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePreDrawedPicture(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z

    .line 288
    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->isSendOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    return-void
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public writeToSlpt()V
    .locals 4

    .prologue
    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 276
    .local v0, "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre_drawed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->setName(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->writeGroupToSlpt(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    :cond_0
    return-void
.end method

.method public writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z
    .locals 4
    .param p1, "mClockClient"    # Lcom/ingenic/iwds/slpt/SlptClockClient;

    .prologue
    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 296
    .local v0, "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre_drawed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->setName(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPictureContainer;->writeGroupToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "group":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
