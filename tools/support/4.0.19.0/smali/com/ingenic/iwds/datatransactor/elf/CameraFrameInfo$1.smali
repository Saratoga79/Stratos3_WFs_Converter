.class final Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo$1;
.super Ljava/lang/Object;
.source "CameraFrameInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;
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
        "Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;->frameData:[B

    .line 51
    iget-object v1, v0, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;->frameData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 53
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    move-result-object v0

    return-object v0
.end method
