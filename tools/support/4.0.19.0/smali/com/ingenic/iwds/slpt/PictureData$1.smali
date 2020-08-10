.class final Lcom/ingenic/iwds/slpt/PictureData$1;
.super Ljava/lang/Object;
.source "PictureData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/PictureData;
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
        "Lcom/ingenic/iwds/slpt/PictureData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/PictureData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 44
    new-instance v0, Lcom/ingenic/iwds/slpt/PictureData;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/PictureData;-><init>()V

    .line 45
    .local v0, "pictureData":Lcom/ingenic/iwds/slpt/PictureData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/slpt/PictureData;->pictureSize:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/slpt/PictureData;->pictureIndex:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/slpt/PictureData;->width:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/slpt/PictureData;->height:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ingenic/iwds/slpt/PictureData;->backgroundColor:I

    .line 51
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/PictureData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/PictureData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/slpt/PictureData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 56
    new-array v0, p1, [Lcom/ingenic/iwds/slpt/PictureData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/PictureData$1;->newArray(I)[Lcom/ingenic/iwds/slpt/PictureData;

    move-result-object v0

    return-object v0
.end method
