.class public Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;,
        Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;
    }
.end annotation


# static fields
.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2


# instance fields
.field private m_listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ingenic/iwds/smartsense/SensorEventListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_remoteAvaliable:Z

.field private m_remoteSensorListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorListener;",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteSensorListener:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/IRemoteSensorService;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;
    .param p1, "x1"    # Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->unregisterAllListeners()V

    return-void
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteAvaliable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteAvaliable:Z

    return p1
.end method

.method private unregisterAllListeners()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 383
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 384
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 388
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    .line 389
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->unregisterListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in unregisterListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 398
    return-void
.end method


# virtual methods
.method public getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 4
    .param p1, "sensorType"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-boolean v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteAvaliable:Z

    if-nez v1, :cond_0

    .line 125
    const-string v1, "Sensor service on remote device unavailable"

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getDefaultSensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSensorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-boolean v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteAvaliable:Z

    if-nez v1, :cond_0

    .line 103
    const-string v1, "Sensor service on remote device unavailable"

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    invoke-interface {v1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->getSensorList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getSensorList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;I)Z
    .locals 5
    .param p1, "listener"    # Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .param p2, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p3, "rate"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget-boolean v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteAvaliable:Z

    if-nez v0, :cond_0

    .line 309
    const-string v0, "Sensor service on remote device unavailable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :goto_0
    return v2

    .line 313
    :cond_0
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Listener is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 314
    if-nez p2, :cond_3

    :goto_2
    const-string v0, "Sensor is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 317
    if-eqz v0, :cond_4

    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    .line 319
    iget-object v1, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v1}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v1

    invoke-virtual {p2}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 313
    goto :goto_1

    :cond_3
    move v1, v2

    .line 314
    goto :goto_2

    .line 323
    :cond_4
    new-instance v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 325
    if-nez v0, :cond_5

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    iget-object v3, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v0, v3, v1, p2, p3}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;Lcom/ingenic/iwds/smartsense/Sensor;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerListener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerRemoteListener(Lcom/ingenic/iwds/smartsense/RemoteSensorListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Listener is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteSensorListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    .line 248
    if-eqz v0, :cond_1

    .line 249
    const-string v0, "Unable to register listener: Did you froget to call unregisterRemoteSensorListener?"

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 263
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    invoke-direct {v0, p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/RemoteSensorListener;)V

    .line 255
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteSensorListener:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->uuid:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->registerRemoteSensorListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in registerRemoteListener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 5
    .param p1, "listener"    # Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .param p2, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Listener is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 352
    if-nez p2, :cond_2

    :goto_1
    const-string v0, "Sensor is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 356
    if-nez v0, :cond_3

    .line 378
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 351
    goto :goto_0

    :cond_2
    move v1, v2

    .line 352
    goto :goto_1

    .line 360
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 361
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 362
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;

    .line 363
    iget-object v3, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    invoke-virtual {p2}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 364
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    iget-object v1, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->unregisterListener(Ljava/lang/String;)V

    .line 366
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 372
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public unregisterRemoteListener(Lcom/ingenic/iwds/smartsense/RemoteSensorListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/ingenic/iwds/smartsense/RemoteSensorListener;

    .prologue
    .line 275
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Remote sensor listener is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteSensorListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;

    .line 279
    if-nez v0, :cond_1

    .line 290
    :goto_1
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$RemoteSensorCallback;->uuid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->unregisterRemoteSensorListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_2
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->m_remoteSensorListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in unregisterRemoteListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method
