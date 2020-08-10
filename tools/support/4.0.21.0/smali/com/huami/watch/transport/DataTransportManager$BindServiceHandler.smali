.class Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;
.super Landroid/os/Handler;
.source "DataTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataTransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceHandler"
.end annotation


# static fields
.field public static final MSG_SERVICE_CONNECT:I = 0x13

.field public static final MSG_SERVICE_CONNECTED:I = 0x14

.field public static final MSG_SERVICE_CONNECT_FAILED:I = 0x9

.field public static final MSG_SERVICE_DISCONNECT:I = 0x57

.field public static final MSG_SERVICE_DISCONNECTED:I = 0xe

.field public static final S_CONNECTED:I = 0x3

.field public static final S_DISCONNECTED:I


# instance fields
.field private mState:I

.field private mTransportServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportManager;


# direct methods
.method private constructor <init>(Lcom/huami/watch/transport/DataTransportManager;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    .line 191
    new-instance v0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler$1;-><init>(Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mTransportServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/DataTransportManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huami/watch/transport/DataTransportManager;
    .param p2, "x1"    # Lcom/huami/watch/transport/DataTransportManager$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;-><init>(Lcom/huami/watch/transport/DataTransportManager;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 160
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 166
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x57

    iput v1, v0, Landroid/os/Message;->what:I

    .line 168
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget v0, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    monitor-exit p0

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 206
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    const/4 v1, 0x0

    .line 210
    .local v1, "ok":Z
    :try_start_0
    const-string v2, "Trans-Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HmApiClient ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mTransportServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Transport service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$400(Lcom/huami/watch/transport/DataTransportManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v3}, Lcom/huami/watch/transport/DataTransportManager;->access$300(Lcom/huami/watch/transport/DataTransportManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mTransportServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_1
    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0, v7}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->notifyConnectFailed(I)V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Trans-Manager"

    const-string v3, "Failed binding to DataTransportService."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ok":Z
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$200(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v3}, Lcom/huami/watch/transport/DataTransportManager;->access$500(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/huami/watch/transport/ITransportDataService;->unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 224
    const-string v2, "Trans-Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HmApiClient ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mTransportServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "disconnect to Transport service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :goto_2
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$400(Lcom/huami/watch/transport/DataTransportManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mTransportServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 231
    invoke-virtual {p0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->notifyServiceDisconnected()V

    goto/16 :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Trans-Manager"

    const-string v3, "register callback listener error : "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_2
    monitor-enter p0

    .line 235
    const/4 v2, 0x3

    :try_start_2
    iput v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    .line 236
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$600(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3}, Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;->onServicesConnected(Landroid/os/Bundle;)V

    .line 244
    :try_start_3
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$200(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/ITransportDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v3}, Lcom/huami/watch/transport/DataTransportManager;->access$500(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/huami/watch/transport/ITransportDataService;->registersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 245
    :catch_2
    move-exception v0

    .line 246
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    const-string v2, "Trans-Manager"

    const-string v3, "register callback list error!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 251
    :sswitch_3
    monitor-enter p0

    .line 252
    :try_start_5
    iget v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    if-ne v2, v4, :cond_1

    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    .line 255
    :cond_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$600(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    move-result-object v2

    new-instance v3, Lcom/huami/watch/transport/ConnectionResult;

    invoke-direct {v3, v4}, Lcom/huami/watch/transport/ConnectionResult;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;->onServicesDisConnected(Lcom/huami/watch/transport/ConnectionResult;)V

    goto/16 :goto_0

    .line 255
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 263
    :sswitch_4
    monitor-enter p0

    .line 264
    const/4 v2, 0x0

    :try_start_7
    iput v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->mState:I

    .line 265
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 266
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->this$0:Lcom/huami/watch/transport/DataTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportManager;->access$700(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    move-result-object v3

    new-instance v4, Lcom/huami/watch/transport/ConnectionResult;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v2}, Lcom/huami/watch/transport/ConnectionResult;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;->onServicesConnectionFailed(Lcom/huami/watch/transport/ConnectionResult;)V

    goto/16 :goto_0

    .line 265
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xe -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x57 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyConnectFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 172
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public notifyServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 179
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 181
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method public notifyServiceDisconnected()V
    .locals 2

    .prologue
    .line 186
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method
