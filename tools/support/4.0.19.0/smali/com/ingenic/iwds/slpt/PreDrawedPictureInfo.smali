.class public Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
.super Ljava/lang/Object;
.source "PreDrawedPictureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT_SIZE:I = 0x7800

.field private static final TAG:Ljava/lang/String; = "SLPT-PreDrawedPic"

.field private static final TYPE_GROUP_INFOS:I = 0x0

.field private static final TYPE_PICTURE_MEM:I = 0x1

.field private static final TYPE_TERMINATOR:I = 0x2


# instance fields
.field private group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

.field private memList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private picIndex:I

.field private picOffset:I

.field private rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

.field private rpicIndex:I

.field private rpicOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->memList:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    .line 32
    iput v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    .line 130
    iput-object v2, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 131
    iput v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    .line 132
    iput v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v9, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->memList:Ljava/util/ArrayList;

    .line 31
    iput v8, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    .line 32
    iput v8, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    .line 130
    iput-object v9, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 131
    iput v8, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    .line 132
    iput v8, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 89
    .local v5, "type":I
    const/4 v0, 0x0

    .line 91
    .local v0, "goOut":Z
    packed-switch v5, :pswitch_data_0

    .line 118
    const-string v6, "SLPT-PreDrawedPic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknow type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    if-eqz v6, :cond_2

    .line 127
    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->memList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->mergeMemListToPicture(Ljava/util/ArrayList;)V

    .line 128
    :cond_2
    return-void

    .line 93
    :pswitch_0
    const-string v9, "SLPT-PreDrawedPic"

    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    const-string v10, "error: too many group"

    invoke-static {v9, v6, v10}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 96
    .local v4, "size":I
    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>()V

    iput-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 97
    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->setName(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_1

    .line 99
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;-><init>()V

    .line 100
    .local v3, "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v6, v3}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->add(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    .end local v4    # "size":I
    :cond_3
    move v6, v8

    .line 93
    goto :goto_1

    .line 110
    :pswitch_1
    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->memList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x1

    .line 115
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeMemListToPicture(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "memList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 35
    const-string v7, "SLPT-PreDrawedPic"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v8, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v8}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v8

    iget v9, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_2

    move v4, v5

    :goto_0
    const-string v8, "error: too many byte array"

    invoke-static {v7, v4, v8}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 40
    .local v2, "mem":[B
    iget v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    array-length v7, v2

    add-int v1, v4, v7

    .line 41
    .local v1, "length":I
    iget-object v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    iget v7, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    invoke-virtual {v4, v7}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v3

    .line 43
    .local v3, "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    const-string v7, "SLPT-PreDrawedPic"

    iget v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    if-le v1, v4, :cond_3

    move v4, v5

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error: too many bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    const-string v7, "SLPT-PreDrawedPic"

    iget v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    if-ge v1, v4, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_4

    move v4, v5

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error: too many byte array for a picture "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    iget v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    if-ge v1, v4, :cond_5

    .line 50
    iget v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    if-nez v4, :cond_0

    .line 51
    iget v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->memLen:I

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 52
    :cond_0
    iget-object v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    array-length v7, v2

    invoke-static {v2, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    iget v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    array-length v5, v2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    .line 65
    .end local v1    # "length":I
    .end local v2    # "mem":[B
    .end local v3    # "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    :cond_1
    return-void

    .end local v0    # "i":I
    :cond_2
    move v4, v6

    .line 35
    goto/16 :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "mem":[B
    .restart local v3    # "picture":Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;
    :cond_3
    move v4, v6

    .line 43
    goto :goto_2

    :cond_4
    move v4, v6

    .line 45
    goto :goto_3

    .line 57
    :cond_5
    iget v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    if-nez v4, :cond_6

    .line 58
    iput-object v2, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 62
    :goto_4
    iget v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    .line 63
    iput v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 60
    :cond_6
    iget-object v4, v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    iget v7, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicOffset:I

    array-length v8, v2

    invoke-static {v2, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getReciveGroup()Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    return-object v0
.end method

.method public getRecivedSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    return v0
.end method

.method public isRecieveOk()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rpicIndex:I

    iget-object v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendOk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 141
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v1

    iget v2, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeMemList(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .prologue
    .line 68
    const-string v1, "SLPT-PreDrawedPic"

    iget-object v0, p1, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->rgroup:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "error: too many group info while merge"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->memList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->mergeMemListToPicture(Ljava/util/ArrayList;)V

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSendGroup(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    .line 136
    iput v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    .line 137
    iput v0, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 146
    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    if-nez v5, :cond_0

    .line 147
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget v5, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->index:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget v5, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->width:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget v5, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->height:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget v5, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->data_count:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget-object v5, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 161
    .local v4, "size":I
    const/4 v0, 0x0

    .line 163
    .local v0, "goOut":Z
    :goto_1
    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    iget-object v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v6}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 164
    iget-object v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->group:Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    iget v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;->get(I)Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;

    move-result-object v5

    iget-object v3, v5, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup$PreDrawedPicture;->mem:[B

    .line 165
    .local v3, "mem":[B
    array-length v5, v3

    iget v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0x7800

    if-gt v5, v6, :cond_2

    .line 166
    array-length v5, v3

    iget v6, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    sub-int v2, v5, v6

    .line 172
    .local v2, "length":I
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    invoke-virtual {p1, v3, v5, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 175
    if-eqz v0, :cond_3

    .line 176
    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    .line 185
    .end local v2    # "length":I
    .end local v3    # "mem":[B
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return-void

    .line 168
    .restart local v3    # "mem":[B
    :cond_2
    rsub-int v2, v4, 0x7800

    .line 169
    .restart local v2    # "length":I
    const/4 v0, 0x1

    goto :goto_2

    .line 180
    :cond_3
    add-int/2addr v4, v2

    .line 181
    iget v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picIndex:I

    .line 182
    iput v7, p0, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->picOffset:I

    goto :goto_1
.end method
