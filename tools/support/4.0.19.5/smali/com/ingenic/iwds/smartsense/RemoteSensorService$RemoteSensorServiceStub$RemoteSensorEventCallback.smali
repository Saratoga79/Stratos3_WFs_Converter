.class Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;
.super Ljava/lang/Object;
.source "RemoteSensorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSensorEventCallback"
.end annotation


# instance fields
.field private m_listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field sensor:Lcom/ingenic/iwds/smartsense/Sensor;

.field final synthetic this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;Lcom/ingenic/iwds/smartsense/Sensor;)V
    .locals 1
    .param p2, "s"    # Lcom/ingenic/iwds/smartsense/Sensor;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 166
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->requestUnregisterListener(Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 255
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    return-void
.end method

.method public onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .locals 5
    .param p1, "sensor"    # Lcom/ingenic/iwds/smartsense/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 211
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;->onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onAccuracyChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    return-void
.end method

.method public onSensorEvent(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/ingenic/iwds/smartsense/SensorEvent;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 194
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;->onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onSensorEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;I)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;
    .param p3, "rate"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 172
    :try_start_0
    invoke-interface {p2}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 173
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 176
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    iget-object v3, v3, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v3}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v3, v4, p3}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->requestRegisterListener(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    :try_start_1
    monitor-exit v2

    .line 186
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 188
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
    .line 226
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    .line 228
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;

    .line 229
    if-nez v0, :cond_0

    .line 230
    monitor-exit v1

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 234
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    monitor-exit v1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    iget-object v0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorService;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorService;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorService;)Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorEventCallback;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/smartsense/RemoteSensorService$ServiceHandler;->requestUnregisterListener(Lcom/ingenic/iwds/smartsense/Sensor;)V

    .line 238
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
