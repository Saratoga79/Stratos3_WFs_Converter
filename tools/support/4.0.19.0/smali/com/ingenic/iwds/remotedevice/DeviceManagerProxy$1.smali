.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;
.super Ljava/lang/Object;
.source "DeviceManagerProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V
    .locals 2
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "reason"    # Lcom/ingenic/iwds/common/api/ConnectFailedReason;

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to connect to device management service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    invoke-virtual {p2}, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public onConnected(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 2
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/common/api/ServiceClient;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->getServiceManagerContext()Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    .line 465
    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$702(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    .line 468
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$900(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Z)V

    .line 469
    return-void
.end method

.method public onDisconnected(Lcom/ingenic/iwds/common/api/ServiceClient;Z)V
    .locals 2
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "unexpected"    # Z

    .prologue
    .line 474
    const-string v0, "device management service disconnected"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$1;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$900(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Z)V

    .line 477
    return-void
.end method
