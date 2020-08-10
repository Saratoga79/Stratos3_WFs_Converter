.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;
.super Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;
.source "RemoteDeviceManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessInfoResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field processList:Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(Landroid/os/Parcel;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V
    .locals 2
    .param p1, "processList"    # Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    .prologue
    .line 562
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;-><init>(II)V

    .line 563
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;->processList:Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    .line 564
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 588
    invoke-super {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 589
    const-class v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;

    .line 590
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;->processList:Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    .line 591
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 583
    invoke-super {p0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 584
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ProcessInfoResponse;->processList:Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 585
    return-void
.end method
