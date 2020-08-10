.class public Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/view/core/Picture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureGroup"
.end annotation


# instance fields
.field public capacity:I

.field group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

.field groupIndex:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/view/core/Picture;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field nullPicture:Lcom/ingenic/iwds/slpt/view/core/Picture;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .line 290
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->name:Ljava/lang/String;

    .line 291
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    check-cast v1, [B

    invoke-direct {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;-><init>([B)V

    iput-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->nullPicture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    .line 295
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->nullPicture:Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    .line 300
    return-void
.end method


# virtual methods
.method public add(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z
    .locals 1
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    .line 361
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public findPicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z
    .locals 3
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 322
    const/4 v1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public findSamePicture(Lcom/ingenic/iwds/slpt/view/core/Picture;)Lcom/ingenic/iwds/slpt/view/core/Picture;
    .locals 3
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    const/4 v1, 0x0

    .line 330
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-object v1

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/Picture;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->group:Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->name:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->groupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSubsetOf(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;)Z
    .locals 4
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;

    .prologue
    const/4 v2, 0x0

    .line 303
    if-nez p1, :cond_0

    move v1, v2

    .line 314
    :goto_0
    return v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v1, v3, :cond_1

    move v1, v2

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/Picture;

    iget-object v3, p1, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/Picture;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 311
    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public set(ILcom/ingenic/iwds/slpt/view/core/Picture;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    const/4 v1, 0x0

    .line 340
    if-nez p2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->capacity:I

    if-ge p1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/slpt/view/core/Picture;

    .line 347
    .local v0, "old":Lcom/ingenic/iwds/slpt/view/core/Picture;
    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/view/core/Picture;->recycle()V

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundColorForAll(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/slpt/view/core/Picture;

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/Picture;->setBackgroundColor(I)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method
