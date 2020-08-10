.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
.super Ljava/lang/Object;
.source "WearHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;,
        Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;
    }
.end annotation


# instance fields
.field private mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBindedServiceComponent:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

.field private mHostReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mOnServiceStateChangeListener:Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

.field private mReadyOnnection:Landroid/content/ServiceConnection;

.field private mRemoteService:Landroid/os/Messenger;

.field private mReplyMessenger:Landroid/os/Messenger;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private onCustomCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

.field private onQueryCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReadyOnnection:Landroid/content/ServiceConnection;

    .line 62
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    .line 84
    new-instance v1, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$1;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mHostReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->initHandler()V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.huami.watch.httpsupport.EXCHANGEE_READY_TO ACCEPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mHostReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->doInitEnumCollector()V

    .line 105
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToBindService()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToBindService()V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->handshake()V

    return-void
.end method

.method static synthetic access$1100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->receiveRemoteMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->onQueryCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToSendCachedItemToService()V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->onCustomCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReadyOnnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mOnServiceStateChangeListener:Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->rezygote()V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private doInitEnumCollector()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    .line 188
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    const-string v1, "EC-WearHttpClient"

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->setName(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private declared-synchronized generateConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handshake()V
    .locals 8

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "pkg":Ljava/lang/String;
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "WH-APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t>>>>>> [client] \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' req hand shake ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-APP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>> [client] \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' req hand shake ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 464
    .local v2, "message":Landroid/os/Message;
    const v4, 0x7fffffec

    iput v4, v2, Landroid/os/Message;->what:I

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "@@@inner-key[![[--][pkg]"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 468
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 473
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToSendCachedItemToService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_0
    monitor-exit p0

    return-void

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 478
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToBindService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 454
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wear-http-client-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerThread:Landroid/os/HandlerThread;

    .line 356
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReplyMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReplyMessenger:Landroid/os/Messenger;

    .line 380
    :cond_2
    return-void
.end method

.method private receiveRemoteMsg(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 384
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 385
    const-string v2, "@@@inner-key[![[--][data]"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "dataRev":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->dataFromHost(Ljava/lang/String;)V

    .line 388
    .end local v1    # "dataRev":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private rezygote()V
    .locals 5

    .prologue
    .line 333
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v2, :cond_0

    .line 334
    const-string v2, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CLIENT] ==> ##########REZYGOTE REMOTE############ :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 342
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 344
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReadyOnnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToBindService()V

    .line 351
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToBindService()V
    .locals 7

    .prologue
    .line 263
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " try to rebind host data service <><><><>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " try to rebind host data service <><><><>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huami.watch.transport.exchangee.HOST_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "service":Landroid/content/Intent;
    const-string v3, "com.huami.watch.wearservices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v3, "@@@inner-key[![[--]"

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    .line 283
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mBindedServiceComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 284
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v3, :cond_1

    .line 285
    const-string v3, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CLIENT] ==>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start service \u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CLIENT] ==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start service \u5931\u8d25"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->generateConnection()Landroid/content/ServiceConnection;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 306
    .local v1, "res":Z
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v3, :cond_2

    .line 307
    const-string v3, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CLIENT] ==> ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] client bind service res================> : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CLIENT] ==> ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] client bind service res================> : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_6

    const-string v3, "SUCCESS"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v1    # "res":Z
    .end local v2    # "service":Landroid/content/Intent;
    :goto_2
    return-void

    .line 294
    .restart local v2    # "service":Landroid/content/Intent;
    :cond_3
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v3, :cond_4

    .line 295
    const-string v3, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CLIENT] ==>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "start service \u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CLIENT] ==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start service \u6210\u529f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 316
    .end local v2    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v3, :cond_5

    .line 319
    const-string v3, "WH-APP"

    const-string v4, "[CLIENT] ==> bind service failed : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-APP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CLIENT]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ==> bind service failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":Z
    .restart local v2    # "service":Landroid/content/Intent;
    :cond_6
    :try_start_1
    const-string v3, "FAILED"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private declared-synchronized tryToSendCachedItemToService()V
    .locals 2

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 522
    :goto_0
    monitor-exit p0

    return-void

    .line 487
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mHostReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    :cond_0
    return-void
.end method

.method data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 405
    .local v4, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "@@@inner-key[![[--][data]"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v5, "@@@inner-key[![[--][pkg]"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 412
    :try_start_0
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Exception;
    instance-of v5, v2, Landroid/os/TransactionTooLargeException;

    if-eqz v5, :cond_0

    .line 416
    const v5, 0x8000

    invoke-virtual {p2, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 417
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "data":Ljava/lang/String;
    const-string v5, "d-path"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->saveToFileAndManage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 421
    const-string v5, "@@@inner-key[![[--][data]"

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :try_start_1
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 424
    :catch_1
    move-exception v3

    .line 425
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToBindService()V

    .line 432
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mWorkerHandler:Landroid/os/Handler;

    new-instance v6, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;

    invoke-direct {v6, p0, p2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected dataFromHost(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataRev"    # Ljava/lang/String;

    .prologue
    .line 391
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "WH-APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' received data from host! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' received data from host! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public query(Ljava/lang/String;)I
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 527
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "@@@inner-key[![[--][uuid]"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v3, "@@@inner-key[![[--][schedule]"

    const/16 v4, -0x65

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 531
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 533
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnCustomCommandListener(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->onCustomCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

    .line 71
    return-void
.end method

.method public setOnQueryCommandListener(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->onQueryCommandListener:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;

    .line 80
    return-void
.end method

.method public setOnServiceStateChangeListener(Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;)V
    .locals 0
    .param p1, "onServiceStateChangeListener"    # Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->mOnServiceStateChangeListener:Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    .line 552
    return-void
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 192
    return-void
.end method
