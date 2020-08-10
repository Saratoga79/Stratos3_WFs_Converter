.class final Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone$1;
.super Ljava/lang/Object;
.source "CameraTransactionModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;
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
        "Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 292
    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;-><init>()V

    .line 294
    sget-object v0, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    iput-object v0, v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;->frame:Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .line 296
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 301
    new-array v0, p1, [Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone$1;->newArray(I)[Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    move-result-object v0

    return-object v0
.end method
