.class public Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;,
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;,
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;,
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;
    }
.end annotation


# static fields
.field public static final RESULT_FAILED_CHANNEL_UNAVAILABLE:I = 0x1

.field public static final RESULT_FAILED_IWDS_CRASH:I = 0x3

.field public static final RESULT_FAILED_LINK_DISCONNECTED:I = 0x2

.field public static final RESULT_OK:I


# instance fields
.field private a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Lcom/ingenic/iwds/utils/SimpleIDAlloter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    .line 75
    invoke-static {}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->newInstance()Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->h:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    .line 76
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteBroadcast"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->h:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a()V

    .line 108
    invoke-static {p1}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    .line 109
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    new-instance v1, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;)V

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Z)V

    return-void
.end method

.method private a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V
    .locals 4

    .prologue
    .line 242
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    if-gtz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->h:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 254
    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(I)V

    .line 257
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    iget-object v3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->unregisterRemoteReceiver(II)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    const/4 v2, 0x6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    iget v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->unregisterRemoteBroadcastCallback(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 151
    iput-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->f:Landroid/os/HandlerThread;

    .line 153
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 128
    if-lez v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    iget v4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    invoke-interface {v3, v4, v2}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->unregisterRemoteReceiver(II)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-nez p1, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Are you missing a call to unregisterRemoteReceiver()?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b()V

    return-void
.end method

.method static synthetic d(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    .line 281
    return-void
.end method

.method public registerRemoteReceiver(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->registerRemoteReceiver(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public registerRemoteReceiver(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "requestPermission"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 209
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    if-gtz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->h:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->allocation()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->registerRemoteReceiver(IILandroid/content/IntentFilter;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public sendRemoteBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->sendRemoteBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public sendRemoteBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    .line 178
    iget v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    if-gtz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a:Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    iget v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c:I

    invoke-interface {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->sendRemoteBroadcast(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterRemoteReceiver(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method
