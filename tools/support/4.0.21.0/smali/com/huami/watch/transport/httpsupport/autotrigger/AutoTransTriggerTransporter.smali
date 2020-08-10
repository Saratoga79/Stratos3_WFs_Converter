.class public Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;
.super Ljava/lang/Object;
.source "AutoTransTriggerTransporter.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$ChannelListener;
.implements Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
.implements Lcom/huami/watch/transport/Transporter$DataListener;


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "TargetPackages"

.field private static final SEND_ACTION:Ljava/lang/String; = "com.huami.watch.companion.RequestSyncData"

.field private static final TAG:Ljava/lang/String; = "trans_data"

.field private static final TRANSPORT_MOUDLE_NAME:Ljava/lang/String; = "com.huami.watch.companion.syncdata"

.field private static final apps:[Ljava/lang/String;

.field private static instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private transporter:Lcom/huami/watch/transport/Transporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.huami.watch.health"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.huami.watch.sport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->apps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->initTransporter()V

    .line 48
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->initReceiver()V

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$1;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->receiver:Landroid/content/BroadcastReceiver;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.huami.watch.http_support.TRANS_AUTOMATIC"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const-string v0, "trans_data"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private initTransporter()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->mContext:Landroid/content/Context;

    const-string v1, "com.huami.watch.companion.syncdata"

    invoke-static {v0, v1}, Lcom/huami/watch/transport/Transporter;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/transport/Transporter;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    .line 69
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->addDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V

    .line 70
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->addChannelListener(Lcom/huami/watch/transport/Transporter$ChannelListener;)V

    .line 71
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->addServiceConnectionListener(Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;)V

    .line 72
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/Transporter;->connectTransportService()V

    .line 73
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->removeServiceConnectionListener(Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;)V

    .line 78
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->removeDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V

    .line 79
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->removeChannelListener(Lcom/huami/watch/transport/Transporter$ChannelListener;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const-string v0, "trans_data"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    .line 86
    return-void
.end method

.method public onChannelChanged(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 110
    const-string v0, "trans_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 130
    const-string v0, "trans_data"

    const-string v1, "onDataReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onServiceConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 115
    const-string v0, "trans_data"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onServiceConnectionFailed(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/huami/watch/transport/Transporter$ConnectionResult;

    .prologue
    .line 125
    const-string v0, "trans_data"

    const-string v1, "onServiceConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onServiceDisconnected(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
    .locals 2
    .param p1, "cause"    # Lcom/huami/watch/transport/Transporter$ConnectionResult;

    .prologue
    .line 120
    const-string v0, "trans_data"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public sendTriggerSyncToAssist()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v1}, Lcom/huami/watch/transport/Transporter;->isTransportServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v0}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    .line 93
    .local v0, "dataBundle":Lcom/huami/watch/transport/DataBundle;
    const-string v1, "TargetPackages"

    sget-object v2, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->apps:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/DataBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->transporter:Lcom/huami/watch/transport/Transporter;

    const-string v2, "com.huami.watch.companion.RequestSyncData"

    new-instance v3, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$2;

    invoke-direct {v3, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$2;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/huami/watch/transport/Transporter;->send(Ljava/lang/String;Lcom/huami/watch/transport/DataBundle;Lcom/huami/watch/transport/Transporter$DataSendResultCallback;)V

    goto :goto_0
.end method
