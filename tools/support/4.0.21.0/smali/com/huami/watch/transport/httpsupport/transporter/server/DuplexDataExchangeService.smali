.class public Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;
.super Landroid/app/Service;
.source "DuplexDataExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;,
        Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$OnTransStateChangeListener;
    }
.end annotation


# static fields
.field private static sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

.field private static sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheClient2Me:I

.field private cacheMe2Assist:I

.field private dataSuccMe2Assist:I

.field private dataSuccMe2Client:I

.field private mContext:Landroid/content/Context;

.field private mHost2AssistReqMap:I

.field private mMessenger:Landroid/os/Messenger;

.field private mPiCollectDataIntent:Landroid/app/PendingIntent;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private reqAssist2MeCount:I

.field private reqClient2MeCount:I

.field private timeStartRunning:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->timeStartRunning:J

    .line 75
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->reqClient2MeCount:I

    .line 78
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->reqAssist2MeCount:I

    .line 81
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->dataSuccMe2Client:I

    .line 84
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->dataSuccMe2Assist:I

    .line 87
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->cacheClient2Me:I

    .line 90
    iput v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->cacheMe2Assist:I

    .line 108
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    .line 113
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mMessenger:Landroid/os/Messenger;

    .line 115
    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mContext:Landroid/content/Context;

    .line 560
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mapPkg2Client(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->linkToDeath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->tryToSendBackToClient(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->dataFromClient(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600()Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    return-object v0
.end method

.method private clearAllFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 234
    return-void
.end method

.method private dataFromClient(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 515
    const-string v2, "@@@inner-key[![[--][schedule]"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 516
    .local v0, "key":I
    if-eq v0, v3, :cond_0

    .line 517
    packed-switch v0, :pswitch_data_0

    .line 529
    :cond_0
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    if-eqz v2, :cond_1

    .line 530
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    const-string v3, "@@@inner-key[![[--][data]"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->onDataFromClient(Ljava/lang/String;)V

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 519
    :pswitch_0
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    if-eqz v2, :cond_1

    .line 520
    const-string v2, "@@@inner-key[![[--][uuid]"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "uuid":Ljava/lang/String;
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    invoke-virtual {v2, v1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->query(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized initExchangeHandler()V
    .locals 2

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wear-http-host-service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 280
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 283
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 286
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private linkToDeath(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 347
    .local v2, "m":Landroid/os/Messenger;
    if-nez v2, :cond_2

    .line 348
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v3, :cond_1

    .line 349
    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===\u6ca1\u6709\u4fe1\u4f7f\u4e8elink death with: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===\u6ca1\u6709\u4fe1\u4f7f\u4e8elink death with: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 361
    .local v0, "b":Landroid/os/IBinder;
    :try_start_0
    new-instance v3, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$3;

    invoke-direct {v3, p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$3;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private mapPkg2Client(Landroid/os/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 482
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "@@@inner-key[![[--][pkg]"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 510
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 487
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_0
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_1

    .line 488
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' \u8bf7\u6c42\u63e1\u624b..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "client: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' \u8bf7\u6c42\u63e1\u624b..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 496
    .local v0, "client":Landroid/os/Messenger;
    if-eqz v0, :cond_2

    sget-object v4, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v2, v3

    .line 497
    goto :goto_0

    .line 500
    :cond_3
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v3, :cond_4

    .line 503
    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' >>>>> \u63e1\u624b\u6210\u529f."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' >>>>> \u63e1\u624b\u6210\u529f."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->timeStartRunning:J

    .line 240
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->onDestroy()V

    .line 242
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->self()Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->changeTo(IZ)V

    .line 243
    return-void
.end method

.method public static setExchangee(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;)V
    .locals 0
    .param p0, "e"    # Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    sput-object p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sExchangee:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    goto :goto_0
.end method

.method private tryToSendBackToClient(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$4;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$4;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->initExchangeHandler()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 541
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mMessenger:Landroid/os/Messenger;

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 126
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->reset()V

    .line 128
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mContext:Landroid/content/Context;

    .line 130
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lclc/utils/debug/slog/SolidLogger;->withContext(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->doInit(Landroid/content/Context;)V

    .line 136
    const-wide/32 v2, 0x6ddd00

    invoke-static {p0, v2, v3}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->startAlarmDriver(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mPiCollectDataIntent:Landroid/app/PendingIntent;

    .line 138
    const-string v1, "WH-SRV"

    const-string v2, "-------------- Init Http-Support API -------ver 1.09.4 ---------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SRV"

    const-string v3, "-------------- Init Http-Support API -------ver 1.10 ---------"

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "wifiTransAutomaticAlarm":Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->getAutoAlarmList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->addAutoAlarms(Ljava/lang/String;Ljava/util/List;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    .line 191
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 789
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mPiCollectDataIntent:Landroid/app/PendingIntent;

    invoke-static {p0, v0}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->cancelAlarmDriver(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 791
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 793
    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 798
    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 801
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 802
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 803
    sput-object v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->sPkg2ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 806
    :cond_2
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->cleanUp()V

    .line 808
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->self()Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/global/SyncNodeSwitcher;->destory()V

    .line 810
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->clear()V

    .line 811
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->clearAll()V

    .line 812
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->initExchangeHandler()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$1;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;)V

    const-wide/16 v2, 0x184

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 549
    const/4 v0, 0x1

    return v0
.end method
