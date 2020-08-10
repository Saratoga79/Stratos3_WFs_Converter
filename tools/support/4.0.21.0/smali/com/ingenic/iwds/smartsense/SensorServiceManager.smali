.class public Lcom/ingenic/iwds/smartsense/SensorServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "SensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;
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
            "Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_service:Lcom/ingenic/iwds/smartsense/ISensorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)Lcom/ingenic/iwds/smartsense/ISensorService;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ingenic/iwds/smartsense/SensorServiceManager;Lcom/ingenic/iwds/smartsense/ISensorService;)Lcom/ingenic/iwds/smartsense/ISensorService;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceManager;
    .param p1, "x1"    # Lcom/ingenic/iwds/smartsense/ISensorService;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->unregisterAllListeners()V

    return-void
.end method

.method private unregisterAllListeners()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 320
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;

    .line 321
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/ingenic/iwds/smartsense/ISensorService;->unregisterListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in unregisterListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    return-void
.end method


# virtual methods
.method public getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 3
    .param p1, "sensorType"    # I

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/smartsense/ISensorService;->getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getDefaultSensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSensorList()Ljava/util/List;
    .locals 3
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
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/ISensorService;->getSensorList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getSensorList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

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

    .line 245
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Listener is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 246
    if-nez p2, :cond_2

    :goto_1
    const-string v0, "Sensor is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 249
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;

    .line 251
    iget-object v1, v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v1}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v1

    invoke-virtual {p2}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 270
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 245
    goto :goto_0

    :cond_2
    move v1, v2

    .line 246
    goto :goto_1

    .line 255
    :cond_3
    new-instance v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;-><init>(Lcom/ingenic/iwds/smartsense/SensorServiceManager;Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 257
    if-nez v0, :cond_4

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    iget-object v3, v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v0, v3, v1, p2, p3}, Lcom/ingenic/iwds/smartsense/ISensorService;->registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/ISensorEventCallback;Lcom/ingenic/iwds/smartsense/Sensor;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 267
    :catch_0
    move-exception v0

    .line 268
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

    goto :goto_2
.end method

.method public unregisterListener(Lcom/ingenic/iwds/smartsense/SensorEventListener;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 5
    .param p1, "listener"    # Lcom/ingenic/iwds/smartsense/SensorEventListener;
    .param p2, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Listener is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 284
    if-nez p2, :cond_2

    :goto_1
    const-string v0, "Sensor is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 288
    if-nez v0, :cond_3

    .line 310
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 283
    goto :goto_0

    :cond_2
    move v1, v2

    .line 284
    goto :goto_1

    .line 292
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;

    .line 295
    iget-object v3, v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    invoke-virtual {p2}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 296
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_service:Lcom/ingenic/iwds/smartsense/ISensorService;

    iget-object v1, v1, Lcom/ingenic/iwds/smartsense/SensorServiceManager$EventCallback;->uuid:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/ingenic/iwds/smartsense/ISensorService;->unregisterListener(Ljava/lang/String;)V

    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 304
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 307
    :catch_0
    move-exception v0

    .line 308
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
