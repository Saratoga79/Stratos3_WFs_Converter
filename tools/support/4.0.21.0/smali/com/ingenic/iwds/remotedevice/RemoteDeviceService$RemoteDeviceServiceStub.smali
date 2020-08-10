.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;
.super Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;
.source "RemoteDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDeviceServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;
    .param p2, "x1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)V

    return-void
.end method


# virtual methods
.method public registerAppListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->registerAppListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    .line 210
    :goto_1
    return v0

    .line 208
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public registerProcessListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->registerProcessListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    .line 241
    :goto_1
    return v0

    .line 239
    :cond_0
    monitor-exit v1

    .line 241
    const/4 v0, 0x1

    goto :goto_1

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public registerSettingListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->registerSettingListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    .line 330
    :goto_1
    return v0

    .line 328
    :cond_0
    monitor-exit v1

    .line 330
    const/4 v0, 0x1

    goto :goto_1

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public registerStatusListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->registerStatusListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    :try_start_2
    monitor-exit v1

    .line 179
    :goto_1
    return v0

    .line 177
    :cond_0
    monitor-exit v1

    .line 179
    const/4 v0, 0x1

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestClearAllAppDataAndCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestClearAllAppDataAndCache(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public requestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public requestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public requestDoSetting(Ljava/lang/String;II)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestDoSetting(Ljava/lang/String;II)V

    .line 357
    return-void
.end method

.method public requestGetAppList(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " request to get AppList, uuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestGetAppList(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public requestGetSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestGetSetting(Ljava/lang/String;I)V

    .line 351
    return-void
.end method

.method public requestGetStorageInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestGetStorageInfo(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public requestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "isInstalledInExternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public requestKillProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestKillProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public requestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public requestRunningAppProcessInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestRunningAppProcessInfo(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public requestSystemMemoryInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->requestSystemMemoryInfo(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public unregisterAppListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->unregisterAppListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterProcessListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->unregisterProcessListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterSettingListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->unregisterSettingListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterStatusListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ServiceHandler;->unregisterStatusListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;->isListenerRegistered(ILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$RemoteDeviceServiceStub;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceService$ListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
