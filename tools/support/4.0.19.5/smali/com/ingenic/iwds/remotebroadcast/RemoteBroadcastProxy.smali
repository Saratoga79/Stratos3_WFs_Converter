.class public Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
.super Ljava/lang/Object;
.source "RemoteBroadcastProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;,
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;,
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field private final d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

.field private l:Lcom/ingenic/iwds/utils/SimpleIDAlloter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->i:Z

    .line 80
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->newInstance()Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->l:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    .line 82
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;

    .line 83
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;

    const-string v2, "94D8C7BC-0AFC-E5D4-D10A-1D381DF2CD72"

    invoke-direct {v0, p1, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 117
    iput-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    .line 120
    :cond_0
    iput-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    .line 121
    return-void
.end method

.method private a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p2, p3}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;->performReceive(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)V
    .locals 2

    .prologue
    .line 240
    if-nez p2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->getCallerId()I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->getIntent()Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 380
    :goto_0
    invoke-virtual {p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->getPermission()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-interface {v0, v1, v2, p1}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;->performSendResult(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 384
    :cond_0
    return-void

    .line 379
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 0

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-direct {p0, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    goto :goto_0
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V
    .locals 2

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local broadcast has received.But send to remote failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method private a(ILcom/ingenic/iwds/remotebroadcast/UnregisterInfo;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method private a(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v1

    .line 361
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v0

    .line 363
    instance-of v2, v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;

    if-eqz v2, :cond_1

    .line 364
    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    instance-of v2, v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    if-eqz v2, :cond_2

    .line 366
    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    goto :goto_0

    .line 367
    :cond_2
    instance-of v2, v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;

    if-eqz v2, :cond_3

    .line 368
    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V

    goto :goto_0

    .line 369
    :cond_3
    instance-of v2, v0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;

    if-eqz v2, :cond_0

    .line 370
    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;

    invoke-direct {p0, v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILcom/ingenic/iwds/remotebroadcast/UnregisterInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c(II)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;ILcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(ILcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 5

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getCallerId()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getId()I

    move-result v1

    .line 168
    new-instance v2, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$c;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;II)V

    .line 169
    iget-object v3, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-static {v3, v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getPermission()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->getIntent()Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->getCallerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;->getId()I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(IILandroid/content/Intent;)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;)V
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->getCallerId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b(II)V

    .line 451
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 405
    instance-of v0, p1, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;

    if-eqz v0, :cond_1

    .line 406
    check-cast p1, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    instance-of v0, p1, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    if-eqz v0, :cond_2

    .line 408
    check-cast p1, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    goto :goto_0

    .line 409
    :cond_2
    instance-of v0, p1, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;

    if-eqz v0, :cond_3

    .line 410
    check-cast p1, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V

    goto :goto_0

    .line 411
    :cond_3
    instance-of v0, p1, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;

    if-eqz v0, :cond_0

    .line 412
    check-cast p1, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;

    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v3

    .line 200
    :goto_1
    if-ge v4, v5, :cond_2

    .line 201
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 202
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v2, v3

    .line 203
    :goto_2
    if-ge v2, v6, :cond_1

    .line 204
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 205
    iget-object v7, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 209
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 210
    monitor-exit v1

    .line 200
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 215
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private b(II)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 178
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 181
    if-eqz v1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    monitor-enter v2

    .line 184
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 186
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 189
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->getIntent()Lcom/ingenic/iwds/content/RemoteIntent;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ingenic/iwds/content/RemoteIntent;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 420
    :goto_0
    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 423
    :cond_0
    const-string v1, "is_remote_broadcast"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->getPermission()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->isSticky()Z

    move-result v2

    .line 427
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;->isOrdered()Z

    move-result v3

    .line 429
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 430
    const-string v0, "Unsupport to send broadcast with sticky & ordered!"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    :goto_1
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 432
    :cond_2
    if-eqz v2, :cond_3

    .line 433
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 434
    :cond_3
    if-eqz v3, :cond_4

    .line 435
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_4
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getCallerId()I

    move-result v0

    .line 272
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getId()I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1, p1}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method private b(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentInfo;)V

    .line 447
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 280
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 284
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 286
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :cond_1
    return-void

    .line 280
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 286
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private c(II)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/utils/IwdsUtils;->deleteInArray(Landroid/util/SparseArray;II)V

    .line 292
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-static {v0, p1, p2}, Lcom/ingenic/iwds/utils/IwdsUtils;->deleteInArray(Landroid/util/SparseArray;II)V

    .line 293
    return-void
.end method

.method static synthetic c(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e()V

    return-void
.end method

.method private c(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->i:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 317
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 299
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    .line 300
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 301
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 302
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_3

    .line 303
    iget-boolean v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->i:Z

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    .line 306
    iget-object v4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 309
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 311
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 312
    iget-object v4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 314
    :cond_2
    monitor-exit v1

    .line 302
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d()V

    return-void
.end method

.method private d(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getCallerId()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;->getId()I

    move-result v1

    .line 334
    iget-object v2, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-static {v2, v0, v1, p1}, Lcom/ingenic/iwds/utils/IwdsUtils;->addInArray(Landroid/util/SparseArray;IILjava/lang/Object;)V

    .line 335
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 345
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 346
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 347
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 349
    iget-object v4, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    monitor-enter v4

    .line 350
    :try_start_0
    iget-object v5, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->h:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    monitor-exit v4

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    monitor-enter v1

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 356
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method static synthetic e(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->b()V

    return-void
.end method

.method private e(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    .line 443
    return-void
.end method

.method static synthetic f(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c()V

    return-void
.end method

.method static synthetic g(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v1, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    .line 76
    :cond_0
    sget-object v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
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
.method a(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I
    .locals 4

    .prologue
    .line 228
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->l:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->allocation()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->l:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->l:Lcom/ingenic/iwds/utils/SimpleIDAlloter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/utils/SimpleIDAlloter;->initialize()V

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;

    invoke-direct {v0, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/UnregisterInfo;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method a(IILandroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;-><init>(IILandroid/content/IntentFilter;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c(Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    .line 136
    return-void
.end method

.method a(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;

    invoke-direct {v0, p1, p2, p3}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;-><init>(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V

    .line 221
    return-void
.end method

.method a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcast;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->sendEmptyMessage(I)Z

    .line 129
    invoke-virtual {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->stopTransaction()V

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void
.end method

.method public startTransaction()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 96
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteBroadcast"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    .line 97
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    .line 99
    return-void
.end method

.method public stopTransaction()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->k:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method
