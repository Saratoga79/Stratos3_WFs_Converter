.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearAllAppDataCacheResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field index:I

.field totalCount:I

.field typeOfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "returnCode"    # I

    .prologue
    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 484
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1
    .param p1, "totalCount"    # I
    .param p2, "index"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "typeOfIndex"    # I
    .param p5, "returnCode"    # I

    .prologue
    .line 476
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0, p5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 477
    iput p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->totalCount:I

    .line 478
    iput p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->index:I

    .line 479
    iput p4, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->typeOfIndex:I

    .line 480
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Landroid/os/Parcel;)V

    .line 488
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->readFromParcel(Landroid/os/Parcel;)V

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->packageName:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->totalCount:I

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->index:I

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->typeOfIndex:I

    .line 516
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 503
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ClearAllAppDataCacheResponse;->typeOfIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    return-void
.end method
