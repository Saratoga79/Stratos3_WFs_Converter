.class final Lcom/ingenic/iwds/slpt/PictureInfo$1;
.super Ljava/lang/Object;
.source "PictureInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/PictureInfo;
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
        "Lcom/ingenic/iwds/slpt/PictureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/PictureInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lcom/ingenic/iwds/slpt/PictureInfo;

    invoke-direct {v0, p1}, Lcom/ingenic/iwds/slpt/PictureInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/PictureInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/slpt/PictureInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/slpt/PictureInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    new-array v0, p1, [Lcom/ingenic/iwds/slpt/PictureInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/slpt/PictureInfo$1;->newArray(I)[Lcom/ingenic/iwds/slpt/PictureInfo;

    move-result-object v0

    return-object v0
.end method
