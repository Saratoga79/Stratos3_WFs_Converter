.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "DeviceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;-><init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " installation return code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(Ljava/lang/String;II)V

    .line 192
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$PackageInstallObserver;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 193
    return-void
.end method
