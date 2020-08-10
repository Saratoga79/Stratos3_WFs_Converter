.class Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;
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
    name = "RemoteSensorCallback"
.end annotation


# instance fields
.field private m_listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->this$1:Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    .line 97
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    iget-object v3, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 154
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

    .line 155
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
    .line 100
    .local p1, "sensorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ingenic/iwds/smartsense/Sensor;>;"
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    .line 102
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;->onSensorAvailable(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onSensorAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 112
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

    .line 113
    return-void
.end method

.method public registerRemoteSensorListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v2, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 119
    :try_start_0
    invoke-interface {p2}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 120
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v0, 0x1

    :try_start_1
    monitor-exit v2

    .line 129
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerRemoteSensorListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    monitor-exit v2

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterRemoteSensorListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorService$RemoteSensorServiceStub$RemoteSensorCallback;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;

    .line 137
    if-nez v0, :cond_0

    .line 138
    monitor-exit v1

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 141
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
