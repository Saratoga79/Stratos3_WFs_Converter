.class public Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
.super Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.source "SlptLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SLPT-Layout"


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I
    .locals 3
    .param p1, "child"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 223
    const-string v1, "SLPT-Layout"

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "child can not be null"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 224
    const-string v0, "SLPT-Layout"

    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->search(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Z

    move-result v1

    const-string v2, "child already be added"

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 226
    instance-of v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    if-eqz v0, :cond_0

    .line 227
    const-string v1, "SLPT-Layout"

    move-object v0, p1

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->search(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Z

    move-result v0

    const-string v2, "can not add parent to a child"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iput-object p0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 232
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    return-void
.end method

.method public get(I)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I
    .locals 1
    .param p1, "child"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 260
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected initType()S
    .locals 1

    .prologue
    .line 286
    const/4 v0, -0x1

    return v0
.end method

.method public registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V
    .locals 4
    .param p1, "container"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    .param p2, "param"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    .prologue
    const v3, 0xffffff

    .line 292
    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->clone()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    move-result-object v1

    .line 294
    .local v1, "mParam":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v2, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-eqz v2, :cond_1

    .line 295
    iput v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    .line 299
    :cond_0
    :goto_0
    invoke-super {p0, p1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    invoke-virtual {v2, p1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v2, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    if-eq v2, v3, :cond_0

    .line 297
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v2, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;->backgroundColor:I

    goto :goto_0

    .line 304
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 243
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 245
    .local v0, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .end local v0    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    iget-object v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    :cond_1
    return-void
.end method

.method public search(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Z
    .locals 5
    .param p1, "child"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 179
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    if-ne p1, v1, :cond_2

    move v2, v3

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    instance-of v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    if-eqz v4, :cond_3

    .line 183
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->search(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 184
    goto :goto_0

    .line 177
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public searchParent(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3
    .param p1, "child"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 202
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    if-ne p1, v1, :cond_0

    .line 211
    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .end local p0    # "this":Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    :goto_1
    return-object p0

    .line 205
    .restart local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .restart local p0    # "this":Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    :cond_0
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 206
    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->search(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p0, v1

    .line 207
    goto :goto_1

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_2
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public setBackgroudColorForAll(I)V
    .locals 3
    .param p1, "bgColor"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 45
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->setBackgroudColorForAll(I)V

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .restart local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_0
    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iput p1, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    goto :goto_1

    .line 51
    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_1
    return-void
.end method

.method public setImagePictureArrayForAll([Ljava/lang/String;)V
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 143
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    if-eqz v2, :cond_0

    .line 144
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePictureArray([Ljava/lang/String;)Z

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method public setImagePictureArrayForAll([[B)V
    .locals 3
    .param p1, "array"    # [[B

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 156
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    if-eqz v2, :cond_0

    .line 157
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePictureArray([[B)Z

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method public setImagePictureForAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 117
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v2, :cond_0

    .line 118
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture(Ljava/lang/String;)V

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public setImagePictureForAll([B)V
    .locals 3
    .param p1, "mem"    # [B

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 104
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public setStringPictureArrayForAll([Ljava/lang/String;)V
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 130
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    if-eqz v2, :cond_0

    .line 131
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setStringPictureArray([Ljava/lang/String;)V

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public setStringPictureForAll(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 91
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v2, :cond_0

    .line 92
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public setStringPictureForAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 78
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public setTextAttrForAll(FILandroid/graphics/Typeface;)V
    .locals 3
    .param p1, "textSize"    # F
    .param p2, "textColor"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 62
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    instance-of v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    if-eqz v2, :cond_0

    .line 63
    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    invoke-virtual {v1, p1, p2, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .restart local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setTextAttr(FILandroid/graphics/Typeface;)V

    goto :goto_1

    .line 68
    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 309
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method
