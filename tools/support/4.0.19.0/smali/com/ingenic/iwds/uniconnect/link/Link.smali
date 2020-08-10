.class public Lcom/ingenic/iwds/uniconnect/link/Link;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/link/Link$a;,
        Lcom/ingenic/iwds/uniconnect/link/Link$b;,
        Lcom/ingenic/iwds/uniconnect/link/Link$LinkState;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/ingenic/iwds/DeviceDescriptor;

.field private g:Lcom/ingenic/iwds/DeviceDescriptor;

.field private h:Lcom/ingenic/iwds/uniconnect/Connection;

.field private i:Ljava/lang/String;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/HandlerThread;

.field private l:Lcom/ingenic/iwds/uniconnect/link/Link$b;

.field private m:Lcom/ingenic/iwds/uniconnect/link/Link$a;

.field private n:I

.field private o:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/link/LinkManager;Lcom/ingenic/iwds/DeviceDescriptor;Ljava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Lcom/ingenic/iwds/uniconnect/link/LinkManager;
    .param p2, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p3, "linkTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    .line 56
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    .line 62
    const-string v0, "{THIS-IS-GOD-MASTER}"

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->i:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->n:I

    .line 116
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/Link$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/link/Link$1;-><init>(Lcom/ingenic/iwds/uniconnect/link/Link;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->o:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    .line 135
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    .line 136
    iput-object p2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->f:Lcom/ingenic/iwds/DeviceDescriptor;

    .line 137
    iput-object p3, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/ingenic/iwds/uniconnect/Connection;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;

    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->o:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    invoke-direct {v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;-><init>(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)V

    invoke-direct {v0, v1, v2}, Lcom/ingenic/iwds/uniconnect/Connection;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/IConnection;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->h:Lcom/ingenic/iwds/uniconnect/Connection;

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->f:Lcom/ingenic/iwds/DeviceDescriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/Link;Lcom/ingenic/iwds/DeviceDescriptor;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->g:Lcom/ingenic/iwds/DeviceDescriptor;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/ingenic/iwds/IwdsApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 313
    const/4 v1, 0x1

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 315
    const-string v1, "Hold wake lock to avoid system sleeping when restart adapter."

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 318
    const-string v0, "Restarting adapter..."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d()Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/AdapterManager;->getAdapter(Ljava/lang/String;)Lcom/ingenic/iwds/uniconnect/link/Adapter;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->disable()V

    .line 322
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;->enable()Z

    .line 328
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 325
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 299
    monitor-enter p0

    .line 300
    if-ne p1, v0, :cond_0

    .line 301
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->n:I

    .line 304
    :goto_0
    monitor-exit p0

    .line 305
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->n:I

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/Link;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 604
    .line 606
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->m:Lcom/ingenic/iwds/uniconnect/link/Link$a;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 614
    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->l:Lcom/ingenic/iwds/uniconnect/link/Link$b;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ingenic/iwds/uniconnect/link/Link;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->j:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 620
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->m:Lcom/ingenic/iwds/uniconnect/link/Link$a;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->l:Lcom/ingenic/iwds/uniconnect/link/Link$b;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->g:Lcom/ingenic/iwds/DeviceDescriptor;

    return-object v0
.end method

.method static synthetic d(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/link/LinkManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    return-object v0
.end method

.method static synthetic e(Lcom/ingenic/iwds/uniconnect/link/Link;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ingenic/iwds/uniconnect/link/Link;)Lcom/ingenic/iwds/uniconnect/Connection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->h:Lcom/ingenic/iwds/uniconnect/Connection;

    return-object v0
.end method

.method static synthetic g(Lcom/ingenic/iwds/uniconnect/link/Link;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->a()V

    return-void
.end method

.method static synthetic h(Lcom/ingenic/iwds/uniconnect/link/Link;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ingenic/iwds/uniconnect/link/Link;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->k:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkStateChanged: State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 639
    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/link/Link$LinkState;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "client"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 645
    invoke-direct {p0, p2}, Lcom/ingenic/iwds/uniconnect/link/Link;->a(Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_1
    return-void

    .line 641
    :cond_1
    const-string v0, "server"

    goto :goto_0

    .line 647
    :cond_2
    if-nez p1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->b()V

    goto :goto_1
.end method

.method public bondAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Address is null or empty."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    const-string v3, "Client or server already started(Unboned or stop server first)"

    .line 176
    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .line 182
    :cond_2
    iput-boolean v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    .line 183
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->d:Ljava/lang/String;

    .line 184
    iput-boolean v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "client handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->k:Landroid/os/HandlerThread;

    .line 190
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/Link$a;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/uniconnect/link/Link$a;-><init>(Lcom/ingenic/iwds/uniconnect/link/Link;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->m:Lcom/ingenic/iwds/uniconnect/link/Link$a;

    move v1, v2

    .line 193
    goto :goto_1
.end method

.method public getBondedAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->d:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->n:I

    monitor-exit p0

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isBonded()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    goto :goto_0
.end method

.method public isRoleAsClientSide()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    return v0
.end method

.method public isServerStarted()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    goto :goto_0
.end method

.method public startServer()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    iget-boolean v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    const-string v3, "Client or server already started(Unboned or stop server first)"

    .line 244
    invoke-static {p0, v2, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return v0

    .line 250
    :cond_0
    iput-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->c:Z

    .line 251
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Server handler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->j:Landroid/os/HandlerThread;

    .line 257
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v0, Lcom/ingenic/iwds/uniconnect/link/Link$b;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->j:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ingenic/iwds/uniconnect/link/Link$b;-><init>(Lcom/ingenic/iwds/uniconnect/link/Link;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->l:Lcom/ingenic/iwds/uniconnect/link/Link$b;

    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    const-string v1, "Caller must role as server side."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->d(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->l:Lcom/ingenic/iwds/uniconnect/link/Link$b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    .line 278
    return-void
.end method

.method public unbond()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/Link;->isRoleAsClientSide()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Link must role as client side."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->a:Lcom/ingenic/iwds/uniconnect/link/LinkManager;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/uniconnect/link/LinkManager;->b(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->m:Lcom/ingenic/iwds/uniconnect/link/Link$a;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/Link;->e:Z

    .line 223
    return-void

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0
.end method
