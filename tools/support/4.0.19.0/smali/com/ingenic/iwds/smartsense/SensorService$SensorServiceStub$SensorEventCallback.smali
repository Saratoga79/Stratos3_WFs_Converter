.class Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorEventCallback"
.end annotation


# instance fields
.field private m_listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/smartsense/ISensorEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field sensor:Lcom/ingenic/iwds/smartsense/Sensor;

.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 1
    .param p2, "s"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->this$0:Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private onSensorEvent(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 97
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget v3, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->sensorType:I

    packed-switch v3, :pswitch_data_0

    .line 110
    :cond_0
    :goto_1
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;->onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onSensorEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 102
    :pswitch_0
    :try_start_3
    iget-object v3, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    iput v3, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->accuracy:I

    .line 103
    iget v3, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->accuracy:I

    if-lez v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    iget v4, p1, Lcom/ingenic/iwds/smartsense/SensorEvent;->accuracy:I

    invoke-interface {v0, v3, v4}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;->onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 118
    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    return-void

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->access$000(IZ)Z

    .line 135
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/ISensorEventCallback;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/ISensorEventCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 58
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 60
    :try_start_0
    invoke-interface {p2}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 61
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 64
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->access$000(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    :try_start_1
    monitor-exit v2

    .line 74
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;

    .line 82
    if-nez v0, :cond_0

    .line 83
    monitor-exit v1

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub$SensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/smartsense/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->access$000(IZ)Z

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
