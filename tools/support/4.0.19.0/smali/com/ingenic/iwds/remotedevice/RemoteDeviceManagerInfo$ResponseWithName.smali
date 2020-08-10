.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponseWithName"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "returnCode"    # I

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(II)V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(Landroid/os/Parcel;)V

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "returnCode"    # I

    .prologue
    .line 434
    invoke-direct {p0, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(II)V

    .line 435
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->packageName:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->packageName:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 459
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    return-void
.end method
