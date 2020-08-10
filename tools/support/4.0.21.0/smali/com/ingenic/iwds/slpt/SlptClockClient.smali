.class public Lcom/ingenic/iwds/slpt/SlptClockClient;
.super Ljava/lang/Object;
.source "SlptClockClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.huami.watchface.SlptClockService"

.field private static final TAG:Ljava/lang/String; = "SLPT-clockClient"


# instance fields
.field private debugIsEnable:Z

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/slpt/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private final m_connection:Landroid/content/ServiceConnection;

.field private m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

.field private m_uuid:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

.field private final serviceCallback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;

.field private service_is_bind:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    .line 23
    iput-boolean v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    .line 27
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->pm:Landroid/os/PowerManager;

    .line 28
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/slpt/SlptClockClient$1;-><init>(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_connection:Landroid/content/ServiceConnection;

    .line 137
    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient$2;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/slpt/SlptClockClient$2;-><init>(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceCallback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;

    .line 577
    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    .line 789
    iput-boolean v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->debugIsEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/ingenic/iwds/slpt/SlptClockClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ingenic/iwds/slpt/SlptClockClient;Lcom/ingenic/iwds/slpt/ISlptClockService;)Lcom/ingenic/iwds/slpt/ISlptClockService;
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p1, "x1"    # Lcom/ingenic/iwds/slpt/ISlptClockService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ingenic/iwds/slpt/SlptClockClient;)Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/slpt/SlptClockClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->warning(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/slpt/SlptClockClient;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->registerCallback()Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 647
    return-void
.end method

.method private assertService()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "SLPT-clockClient"

    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "service is not connected yet!"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->debugIsEnable:Z

    if-eqz v0, :cond_0

    .line 793
    const-string v0, "SLPT-clockClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    return-void
.end method

.method private registerCallback()Z
    .locals 4

    .prologue
    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceCallback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;

    invoke-interface {v1, v2, v3}, Lcom/ingenic/iwds/slpt/ISlptClockService;->registerCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 776
    :goto_0
    return v1

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 776
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 651
    return-void
.end method

.method private unregisterCallback()Z
    .locals 4

    .prologue
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceCallback:Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;

    invoke-interface {v1, v2, v3}, Lcom/ingenic/iwds/slpt/ISlptClockService;->unregisterCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 785
    :goto_0
    return v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 785
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string v0, "SLPT-clockClient"

    const-string v1, "------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v0, "SLPT-clockClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v0, "SLPT-clockClient"

    const-string v1, "------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 803
    return-void
.end method

.method private writePictureInner()V
    .locals 2

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "infos":[Lcom/ingenic/iwds/slpt/PictureInfo;
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/ingenic/iwds/slpt/PictureInfo;

    .line 658
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 663
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/RleBuffer;->getBuffer()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePictureRle([Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z

    .line 664
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    .prologue
    const/4 v2, 0x1

    .line 88
    const-string v3, "SLPT-clockClient"

    iget-boolean v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Do not bindService more than once!"

    invoke-static {v3, v1, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 91
    const-string v1, "SLPT-clockClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " service_is_bind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-boolean v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    .line 93
    iput-object p3, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    .line 94
    iput-object p2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.watchface.SlptClockService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.huami.watch.wearservices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 100
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->pm:Landroid/os/PowerManager;

    .line 101
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->pm:Landroid/os/PowerManager;

    const-string v3, "SLPT-clockClient"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    return-void

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllClock()Z
    .locals 3

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 532
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->acquireWakeLock()V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->clearAllClock(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v1, 0x1

    .line 547
    :goto_0
    return v1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 546
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V

    .line 547
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearPictureGroup()Z
    .locals 3

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->clearPictureGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 722
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectionIsAlive()Z
    .locals 2

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->isAlive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLowBattery()Z
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->disableLowBattery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 v1, 0x1

    .line 475
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableSlpt()Z
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->disableSlpt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableSportMode()Z
    .locals 2

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->disableSportMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLowBattery()Z
    .locals 2

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->enableLowBattery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v1, 0x1

    .line 457
    :goto_0
    return v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 457
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableOneClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z
    .locals 4
    .param p1, "clock"    # Lcom/ingenic/iwds/slpt/SlptClock;

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 591
    const-string v2, "SLPT-clockClient"

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v3, "clock can not be null!"

    invoke-static {v2, v1, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->acquireWakeLock()V

    .line 599
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    if-nez v1, :cond_0

    .line 600
    new-instance v1, Lcom/ingenic/iwds/slpt/RleBuffer;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/RleBuffer;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    .line 602
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ingenic/iwds/slpt/SlptClock;->writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z

    move-result v0

    .line 604
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V

    .line 607
    return v0

    .line 591
    .end local v0    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSlpt()Z
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->enableSlpt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSportMode()Z
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->enableSportMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    const/4 v1, 0x1

    .line 420
    :goto_0
    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flushPicture()Z
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePictureInner()V

    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public lockService()Z
    .locals 3

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 504
    :try_start_0
    const-string v1, "SLPT-clockClient"

    const-string v2, "lockService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->lockService(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 508
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectClockIndex(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 557
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->acquireWakeLock()V

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->selectClockIndex(Ljava/lang/String;I)V

    .line 566
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    const/4 v1, 0x1

    .line 572
    :goto_0
    return v1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 571
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V

    .line 572
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public serviceIsConnected()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClockPeriod(I)Z
    .locals 2
    .param p1, "periodSeconds"    # I

    .prologue
    .line 202
    if-gtz p1, :cond_0

    .line 203
    const p1, 0xdbba0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setClockPeriod(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v1, 0x1

    .line 212
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClockSlptMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setClockSlptMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const/4 v1, 0x1

    .line 493
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 493
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHourFormat(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setHourFormat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v1, 0x1

    .line 332
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setKeyWakeupStatus(I)Z
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setKeyWakeupStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    const/4 v1, 0x1

    .line 384
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 384
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLastHeartrate(I)Z
    .locals 2
    .param p1, "heartrate"    # I

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setLastHeartrate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v1, 0x1

    .line 281
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLongUpKeyStatus(I)Z
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setLongUpKeyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/4 v1, 0x1

    .line 367
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMeasurement(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setMeasurement(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSafeHeartrate(I)Z
    .locals 2
    .param p1, "heartrate"    # I

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setSafeHeartrate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSportStopTime(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1, p2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setSportStopTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v1, 0x1

    .line 349
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTargetSportStep(I)Z
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setTargetSportStep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v1, 0x1

    .line 229
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTodayDistance(F)Z
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setTodayDistance(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTotalDistance(F)Z
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setTotalDistance(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v1, 0x1

    .line 264
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWakeUpVibratorStatus(I)Z
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->setWakeUpVibratorStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    const/4 v1, 0x1

    .line 401
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public slptIsEnabled()Z
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    invoke-interface {v1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->slptIsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryEnableClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z
    .locals 6
    .param p1, "clock"    # Lcom/ingenic/iwds/slpt/SlptClock;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 619
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 620
    const-string v4, "SLPT-clockClient"

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    const-string v5, "clock can not be null!"

    invoke-static {v4, v1, v5}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->clearAllClock()Z

    .line 623
    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    .line 629
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->acquireWakeLock()V

    .line 631
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    if-nez v1, :cond_0

    .line 632
    new-instance v1, Lcom/ingenic/iwds/slpt/RleBuffer;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/RleBuffer;-><init>()V

    iput-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    .line 634
    :cond_0
    invoke-virtual {p1, p0}, Lcom/ingenic/iwds/slpt/SlptClock;->writeToSlptService(Lcom/ingenic/iwds/slpt/SlptClockClient;)Z

    move-result v0

    .line 637
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->disableSportMode()Z

    .line 638
    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    .line 640
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->releaseWakeLock()V

    .line 642
    return v0

    .end local v0    # "ret":Z
    :cond_1
    move v1, v3

    .line 620
    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    if-nez v0, :cond_0

    .line 109
    const-string v0, "service is already unbinded!"

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->warning(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->service_is_bind:Z

    .line 115
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unregisterCallback()Z

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    goto :goto_0
.end method

.method public unlockService()Z
    .locals 3

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->assertService()V

    .line 518
    :try_start_0
    const-string v1, "SLPT-clockClient"

    const-string v2, "unlockService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->unlockService(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    :goto_0
    return v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writePicture(Ljava/lang/String;II[II)V
    .locals 4
    .param p1, "pictureName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "mem"    # [I
    .param p5, "backgroundColor"    # I

    .prologue
    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "offset":I
    mul-int v0, p2, p3

    .line 674
    .local v0, "length":I
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->infoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/ingenic/iwds/slpt/PictureInfo;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/ingenic/iwds/slpt/PictureInfo;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_0
    if-nez p4, :cond_1

    .line 689
    :cond_0
    return-void

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    invoke-virtual {v2, p4, v1, v0}, Lcom/ingenic/iwds/slpt/RleBuffer;->add([III)I

    move-result v1

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " compress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->rleBuffer:Lcom/ingenic/iwds/slpt/RleBuffer;

    invoke-virtual {v3}, Lcom/ingenic/iwds/slpt/RleBuffer;->getOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->debug(Ljava/lang/String;)V

    .line 684
    if-eq v1, v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->writePictureInner()V

    goto :goto_0
.end method

.method public writePictureGroup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->writePictureGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 736
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writePictureRle([Lcom/ingenic/iwds/slpt/PictureInfo;[I)Z
    .locals 3
    .param p1, "infoList"    # [Lcom/ingenic/iwds/slpt/PictureInfo;
    .param p2, "array"    # [I

    .prologue
    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/ingenic/iwds/slpt/ISlptClockService;->writePictureRle(Ljava/lang/String;[Lcom/ingenic/iwds/slpt/PictureInfo;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 750
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writePreDrawedPicture(Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->writePreDrawedPicture(Ljava/lang/String;Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 762
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeSview([B)Z
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_service:Lcom/ingenic/iwds/slpt/ISlptClockService;

    iget-object v2, p0, Lcom/ingenic/iwds/slpt/SlptClockClient;->m_uuid:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/ingenic/iwds/slpt/ISlptClockService;->writeSview(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 708
    const/4 v1, 0x0

    goto :goto_0
.end method
