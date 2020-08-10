.class final Lcom/ingenic/iwds/slpt/GroupData$1;
.super Ljava/lang/Object;
.source "GroupData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/GroupData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ingenic/iwds/slpt/GroupData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/GroupData;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "size":I
    new-instance v0, Lcom/ingenic/iwds/slpt/GroupData;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/GroupData;-><init>()V

    .line 38
    .local v0, "groupData":Lcom/ingenic/iwds/slpt/GroupData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/ingenic/iwds/slpt/GroupData;->pictureNum:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ingenic/iwds/slpt/GroupData;->groupName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 42
    iget-object v3, v0, Lcom/ingenic/iwds/slpt/GroupData;->pictureList:Ljava/util/ArrayList;

    sget-object v4, Lcom/ingenic/iwds/slpt/PictureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/GroupData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/GroupData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/slpt/GroupData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/ingenic/iwds/slpt/GroupData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/GroupData$1;->newArray(I)[Lcom/ingenic/iwds/slpt/GroupData;

    move-result-object v0

    return-object v0
.end method
