.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;
.super Ljava/lang/Object;
.source "RemoteDeviceService.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTransactorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->onRemoteDeviceStatusChanged(Z)V

    .line 370
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 384
    instance-of v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    check-cast p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->handleAppResponse(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 365
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 396
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->onSendFileProgress(I)V

    .line 391
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 4
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$AppTransactorCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;

    const/4 v2, 0x5

    const/16 v3, -0x69

    invoke-direct {v1, v2, v3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$ResponseWithName;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->handleAppResponse(Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteResponse;)V

    .line 380
    :cond_0
    return-void
.end method
