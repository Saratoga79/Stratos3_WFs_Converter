.class Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;
.super Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;
.source "RemoteSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSensorServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;,
        Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;
    }
.end annotation


# instance fields
.field private m_callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

.field private m_sensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private m_sensorListLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-direct {p0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorListLock:Ljava/lang/Object;

    .line 261
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    .line 263
    return-void
.end method


# virtual methods
.method public getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 5
    .param p1, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 306
    monitor-exit v2

    move-object v0, v1

    .line 313
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 309
    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 310
    monitor-exit v2

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 313
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getSensorList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRemoteSensorAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 5
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;

    .line 297
    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 298
    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    return-void
.end method

.method public onRemoteSensorEvent(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;

    .line 289
    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    iget v4, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->sensorType:I

    if-ne v3, v4, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->onSensorEvent(Lcom/ingenic/iwds/smartsense/SensorEvent;)V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    return-void
.end method

.method public onSensorAvailable(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "sensorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/smartsense/Sensor;>;"
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 269
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 270
    new-instance v4, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;

    .line 271
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-direct {v4, p0, v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;-><init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 272
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    :cond_1
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    .line 282
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_sensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->onSensorAvailable(Ljava/util/ArrayList;)V

    .line 283
    monitor-exit v2

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;Lcom/ingenic/iwds/smartsense/Sensor;I)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;
    .param p3, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p4, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;

    .line 330
    iget-object v3, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    invoke-virtual {p3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 331
    invoke-virtual {v0, p1, p2, p4}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;I)Z

    .line 333
    const/4 v0, 0x1

    monitor-exit v1

    .line 336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerRemoteSensorListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    .line 353
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->registerRemoteSensorListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;)Z

    move-result v0

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->requestSensorList()V

    .line 361
    return v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;

    .line 344
    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->unregisterListener(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    return-void
.end method

.method public unregisterRemoteSensorListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->m_remoteSensorCallback:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->unregisterRemoteSensorListener(Ljava/lang/String;)V

    .line 369
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
