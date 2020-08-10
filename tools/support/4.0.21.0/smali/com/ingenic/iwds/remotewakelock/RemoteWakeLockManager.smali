.class public Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;,
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;,
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;,
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;,
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;
    }
.end annotation


# static fields
.field public static final RESULT_FAILED_CHANNEL_UNAVAILABLE:I = 0x1

.field public static final RESULT_FAILED_IWDS_CRASH:I = 0x3

.field public static final RESULT_FAILED_LINK_DISCONNECTED:I = 0x2

.field public static final RESULT_OK:I


# instance fields
.field private a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

.field private b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;

.field private c:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/HandlerThread;

.field private g:I

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ingenic/iwds/utils/SimpleIDAlloter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .line 81
    invoke-static {}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->newInstance()Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->i:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    .line 82
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->d:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 101
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 271
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 274
    if-ltz v1, :cond_0

    .line 276
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteWakeLock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    .line 127
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;

    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method private a(IIJ)V
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    .line 250
    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->d:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 253
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v3, "timeout"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 255
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 258
    if-nez p2, :cond_2

    .line 259
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;Z)V

    .line 261
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 266
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;Z)V

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_0
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a()V

    .line 106
    invoke-static {p1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    .line 108
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Caller is invalid."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 113
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 2

    .prologue
    .line 198
    invoke-static {p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)I

    move-result v0

    invoke-static {p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(ILjava/lang/String;)I

    move-result v0

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(ILcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    .line 200
    return-void
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;J)V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    .line 236
    if-gez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->acquireWakeLock(IIJ)V

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;JI)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;->onAcquireResult(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;JI)V

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;IIJ)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(IIJ)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;J)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;JI)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;JI)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c()V

    .line 118
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->unregisterRemoteWakeLockCallback(I)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b()V

    .line 123
    return-void
.end method

.method private b(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->i:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->allocation()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->newRemoteWakeLock(IIILjava/lang/String;)V

    .line 205
    return v0
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

.method private b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    .line 243
    if-gez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    invoke-interface {v1, v2, v0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->releaseWakeLock(II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    return-void
.end method

.method static synthetic c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method private c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;Z)V

    .line 283
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 191
    iput-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->f:Landroid/os/HandlerThread;

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    .line 195
    return-void
.end method

.method static synthetic d(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 222
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    if-nez v2, :cond_2

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_1
    return-void

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a:Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    iget v3, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->g:I

    iget-object v4, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->destroyRemoteWakeLock(II)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->d()V

    return-void
.end method


# virtual methods
.method public newRemoteWakeLock(ILjava/lang/String;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;
    .locals 3
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(ILjava/lang/String;)V

    .line 161
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    invoke-direct {v0, p0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;ILjava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-object v0
.end method

.method public registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLockCallback;

    .line 142
    return-void
.end method
