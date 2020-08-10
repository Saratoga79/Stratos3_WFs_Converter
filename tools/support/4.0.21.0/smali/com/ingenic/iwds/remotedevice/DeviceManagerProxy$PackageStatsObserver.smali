.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStatsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "isSucceeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " get pkgSizeInfo isSucceeded?  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v2, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    invoke-direct {v2, p1}, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    .line 240
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 242
    :goto_0
    new-instance v3, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;

    invoke-direct {v3, v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;-><init>(Ljava/lang/String;I)V

    .line 244
    iput-object v2, v3, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$PkgInfoResponse;->pkgStats:Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    .line 245
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageStatsObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 246
    return-void

    .line 240
    :cond_0
    const/16 v0, -0x77

    goto :goto_0
.end method
