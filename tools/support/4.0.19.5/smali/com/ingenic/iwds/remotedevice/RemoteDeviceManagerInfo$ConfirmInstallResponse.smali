.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfirmInstallResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field apkFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Landroid/os/Parcel;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "returnCode"    # I

    .prologue
    .line 399
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 400
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->apkFilePath:Ljava/lang/String;

    .line 401
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->readFromParcel(Landroid/os/Parcel;)V

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->apkFilePath:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 421
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ConfirmInstallResponse;->apkFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    return-void
.end method
