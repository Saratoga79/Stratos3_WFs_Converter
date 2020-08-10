.class final Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture$1;
.super Ljava/lang/Object;
.source "WatchFaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;
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
        "Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    new-array v0, v0, [B

    .line 433
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    new-instance v3, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    invoke-direct {v3, v0, v1, v2}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;-><init>([BII)V

    .line 440
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 445
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/WatchFaceInfo$Picture;

    move-result-object v0

    return-object v0
.end method
