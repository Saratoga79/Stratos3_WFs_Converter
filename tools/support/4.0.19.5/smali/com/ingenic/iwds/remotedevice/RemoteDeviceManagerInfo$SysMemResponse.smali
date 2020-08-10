.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SysMemResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field availSysMemSize:J

.field totalSysMemSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 533
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "availSysMemSize"    # J
    .param p3, "totalSysMemSize"    # J

    .prologue
    .line 524
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(II)V

    .line 525
    iput-wide p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->availSysMemSize:J

    .line 526
    iput-wide p3, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->totalSysMemSize:J

    .line 527
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(Landroid/os/Parcel;)V

    .line 531
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->availSysMemSize:J

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->totalSysMemSize:J

    .line 555
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 546
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 547
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->availSysMemSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-wide v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$SysMemResponse;->totalSysMemSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    return-void
.end method
