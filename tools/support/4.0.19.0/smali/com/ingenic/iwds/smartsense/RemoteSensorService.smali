.class public Lcom/ingenic/iwds/smartsense/RemoteSensorService;
.super Landroid/app/Service;
.source "RemoteSensorService.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;,
        Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;
    }
.end annotation


# instance fields
.field private m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

.field private m_service:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

.field private m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_service:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    .line 373
    return-void
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_service:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v0, "onBind"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_service:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    return-object v0
.end method

.method public onChannelAvailable(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 573
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_service:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->setSensorList(Ljava/util/ArrayList;)V

    .line 575
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->setRemoteServiceState(Z)V

    .line 577
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    const-string v1, "c1dc19e2-17a4-0797-0000-68a0dd4bfb68"

    invoke-direct {v0, p0, p0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 57
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;Lcom/ingenic/iwds/smartsense/RemoteSensorService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    .line 58
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 586
    instance-of v0, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_handler:Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    check-cast p1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->handleResponse(Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;)V

    .line 588
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 65
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 569
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 598
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 593
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 582
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "onUnbind"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
