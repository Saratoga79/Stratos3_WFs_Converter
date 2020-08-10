.class public Lcom/ingenic/iwds/smartsense/SensorServiceProxy;
.super Ljava/lang/Object;
.source "SensorServiceProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

.field private m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

.field private m_sensorServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

.field private m_service:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

.field private m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field private m_wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_service:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_listener:Lcom/ingenic/iwds/smartsense/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->wakeLockRelease()V

    return-void
.end method

.method static synthetic access$500(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->wakeLockAcquire()V

    return-void
.end method

.method static synthetic access$600(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;)Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/ingenic/iwds/smartsense/SensorServiceProxy;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->sInstance:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->sInstance:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    .line 57
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->sInstance:Lcom/ingenic/iwds/smartsense/SensorServiceProxy;

    return-object v0
.end method

.method private wakeLockAcquire()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 88
    :cond_0
    return-void
.end method

.method private wakeLockRelease()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "initialize"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_context:Landroid/content/Context;

    .line 65
    const-string v0, "power"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_context:Landroid/content/Context;

    const-string v2, "c1dc19e2-17a4-0797-0000-68a0dd4bfb68"

    invoke-direct {v0, v1, p0, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 73
    new-instance v0, Lcom/ingenic/iwds/common/api/ServiceClient;

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_context:Landroid/content/Context;

    const-string v2, "service_sensor"

    invoke-direct {v0, v1, v2, p0}, Lcom/ingenic/iwds/common/api/ServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_sensorServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    .line 76
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceProxy;Lcom/ingenic/iwds/smartsense/SensorServiceProxy$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    .line 77
    return-void
.end method

.method public onChannelAvailable(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->setChannelState(Z)V

    .line 320
    const-string v0, "Try to connect sensor service"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_sensorServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->connect()V

    .line 331
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->setChannelState(Z)V

    .line 326
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->notifySensorServiceConnected(Z)V

    .line 328
    const-string v0, "Try to disconnect sensor service"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_sensorServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->disconnect()V

    goto :goto_0
.end method

.method public onConnectFailed(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V
    .locals 3
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "reason"    # Lcom/ingenic/iwds/common/api/ConnectFailedReason;

    .prologue
    .line 382
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to sensor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    invoke-virtual {p2}, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 384
    return-void
.end method

.method public onConnected(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 2
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;

    .prologue
    .line 366
    const-string v0, "Sensor service connected"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_sensorServiceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    .line 369
    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->getServiceManagerContext()Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_service:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    .line 371
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->notifySensorServiceConnected(Z)V

    .line 372
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 346
    instance-of v0, p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_handler:Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;

    check-cast p1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy$ServiceProxytHandler;->handleRequest(Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;)V

    .line 349
    :cond_0
    return-void
.end method

.method public onDisconnected(Lcom/ingenic/iwds/common/api/ServiceClient;Z)V
    .locals 1
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "unexpected"    # Z

    .prologue
    .line 376
    const-string v0, "Sensor service disconnected"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 359
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 354
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    iget v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 337
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->wakeLockRelease()V

    .line 342
    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "start"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceProxy;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 83
    return-void
.end method
