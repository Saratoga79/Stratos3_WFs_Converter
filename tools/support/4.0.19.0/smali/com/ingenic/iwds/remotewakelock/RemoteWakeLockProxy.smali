.class public Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
.super Ljava/lang/Object;
.source "RemoteWakeLockProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;,
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;


# instance fields
.field private final b:Landroid/os/PowerManager;

.field private final c:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;

.field private final d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field private volatile e:Z

.field private f:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/CreateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotewakelock/CreateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->newInstance()Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->f:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    .line 66
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b:Landroid/os/PowerManager;

    .line 68
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;

    .line 69
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;

    const-string v2, "5B354F08-DE47-7918-B0C1-13280E013FEE"

    invoke-direct {v0, p1, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<TT;>;>;II)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 347
    if-nez p0, :cond_0

    move-object v0, v1

    .line 352
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 350
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteWakeLock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;

    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method private a(III)V
    .locals 2

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release remote wakelock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed.Result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method private a(IIIJ)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p3, p1, p4, p5}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;->performAcquireResult(IIJ)V

    goto :goto_0
.end method

.method private a(IILandroid/os/PowerManager$WakeLock;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2, p3}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method private a(ILcom/ingenic/iwds/remotewakelock/CMDInfo;)V
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCmd()I

    move-result v0

    .line 235
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCallerId()I

    move-result v2

    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getTimeout()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(IIIJ)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCallerId()I

    move-result v0

    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(III)V

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 2

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotewakelock/DeleteInfo;)V
    .locals 4

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->getId()I

    move-result v0

    .line 261
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->getCallerId()I

    move-result v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete remote wakelock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "of caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed.Result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method private a(ILcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v0

    .line 215
    instance-of v2, v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    if-eqz v2, :cond_1

    .line 216
    check-cast v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(ILcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    instance-of v2, v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    if-eqz v2, :cond_2

    .line 218
    check-cast v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(ILcom/ingenic/iwds/remotewakelock/CMDInfo;)V

    goto :goto_0

    .line 219
    :cond_2
    instance-of v2, v0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;

    if-eqz v2, :cond_0

    .line 220
    check-cast v0, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(ILcom/ingenic/iwds/remotewakelock/DeleteInfo;)V

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/CMDInfo;)V
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCmd()I

    move-result v0

    .line 317
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCallerId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getTimeout()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(IIJ)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getCallerId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d(II)V

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotewakelock/DeleteInfo;)V
    .locals 5

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->getCallerId()I

    move-result v2

    .line 295
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 296
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;->getId()I

    move-result v3

    .line 299
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 300
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    monitor-enter v1

    .line 307
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 308
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 311
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c(II)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;ILcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(ILcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 268
    instance-of v0, p1, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    if-eqz v0, :cond_1

    .line 269
    check-cast p1, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    instance-of v0, p1, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    if-eqz v0, :cond_2

    .line 271
    check-cast p1, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/CMDInfo;)V

    goto :goto_0

    .line 272
    :cond_2
    instance-of v0, p1, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/DeleteInfo;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 440
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 441
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .line 443
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;->performAvailableChanged(Z)V

    .line 440
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->f:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->f:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(IIJ)V
    .locals 5

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 326
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_2

    .line 330
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private b(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getCallerId()I

    move-result v0

    .line 192
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getId()I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1, p1}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c()V

    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 363
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 364
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 365
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 367
    iget-object v4, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    monitor-enter v4

    .line 368
    :try_start_0
    iget-object v5, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    monitor-exit v4

    .line 363
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    monitor-enter v1

    .line 373
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 374
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private c(II)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/utils/IwdsUtils;->deleteInArray(Landroid/util/SparseArray;II)V

    .line 208
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/utils/IwdsUtils;->deleteInArray(Landroid/util/SparseArray;II)V

    .line 209
    return-void
.end method

.method private c(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getCallerId()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getId()I

    move-result v1

    .line 203
    iget-object v2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->l:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1, p1}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method static synthetic c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 402
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 381
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    .line 382
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 384
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 385
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_3

    .line 386
    iget-boolean v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    .line 391
    iget-object v4, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    monitor-enter v4

    .line 392
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 394
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 395
    iget-object v5, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->k:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 397
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v4, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 397
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 381
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0
.end method

.method private d(II)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 339
    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private d(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b:Landroid/os/PowerManager;

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getLevelAndFlags()I

    move-result v1

    .line 279
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getCallerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;->getId()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(IILandroid/os/PowerManager$WakeLock;)V

    .line 281
    return-void
.end method

.method static synthetic d(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e()V

    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v3

    .line 408
    :goto_1
    if-ge v4, v5, :cond_4

    .line 409
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 410
    if-nez v0, :cond_2

    .line 408
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v2, v3

    .line 413
    :goto_2
    if-ge v2, v6, :cond_1

    .line 414
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 416
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 417
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 413
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 430
    iput-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->g:Landroid/os/HandlerThread;

    .line 433
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    .line 434
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v1, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    .line 77
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->f:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->allocation()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return v0
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->h:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 138
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;

    invoke-direct {v1, p1, p2}, Lcom/ingenic/iwds/remotewakelock/DeleteInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method

.method a(IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotewakelock/CreateInfo;-><init>(IIILjava/lang/String;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    .line 125
    return-void
.end method

.method a(IIJ)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 144
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;-><init>(IIIJ)V

    .line 146
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    :cond_0
    move-object v2, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    .line 148
    invoke-direct/range {v2 .. v7}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(IIIJ)V

    goto :goto_0
.end method

.method b(II)V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/remotewakelock/CMDInfo;

    invoke-direct {v1, p1, p2}, Lcom/ingenic/iwds/remotewakelock/CMDInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "DataTransactor is invailable.Donot need to release."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->stopTransaction()V

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    return-void
.end method

.method public startTransaction()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a()V

    .line 86
    return-void
.end method

.method public stopTransaction()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b()V

    .line 94
    return-void
.end method
