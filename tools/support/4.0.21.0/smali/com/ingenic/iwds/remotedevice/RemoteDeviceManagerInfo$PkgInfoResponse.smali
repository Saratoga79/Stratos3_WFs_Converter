.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PkgInfoResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field packageName:Ljava/lang/String;

.field pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(Landroid/os/Parcel;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 324
    const/16 v0, 0x8

    invoke-direct {p0, v0, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(II)V

    .line 325
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->packageName:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->packageName:Ljava/lang/String;

    .line 353
    const-class v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    .line 355
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    return-void
.end method
