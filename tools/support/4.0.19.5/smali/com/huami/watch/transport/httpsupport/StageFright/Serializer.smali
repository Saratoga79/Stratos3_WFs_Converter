.class public Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# static fields
.field private static volatile INSTANCE:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

.field private static final INTERESTED_NODE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNoSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private static sSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;


# instance fields
.field private busy:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INTERESTED_NODE:Ljava/util/HashSet;

    .line 45
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INTERESTED_NODE:Ljava/util/HashSet;

    const-string v1, "com.huami.watch.wearservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INTERESTED_NODE:Ljava/util/HashSet;

    const-string v1, "com.huami.watch.hmwatchmanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INTERESTED_NODE:Ljava/util/HashSet;

    const-string v1, "com.huami.watch.test"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "s-machine"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 54
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "p-machine"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sNoSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->busy:Z

    .line 76
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->busy:Z

    return p1
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->drawReportFrom(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 35
    sput-object p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Ljava/util/HashSet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->checkIfDataNeedSyncFromLower(Ljava/util/HashSet;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->kickUploadPoorMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->startUpload(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Lclc/utils/taskmanager/TaskManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    return-object v0
.end method

.method private checkIfDataNeedSyncFromLower(Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "reports":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    .line 576
    .local v1, "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    iget-boolean v2, v1, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->isKey:Z

    if-eqz v2, :cond_0

    .line 580
    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->hasData(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const/4 v2, 0x1

    .line 585
    .end local v1    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private drawReportFrom(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const-string v2, "report-list"

    invoke-virtual {p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "report":Ljava/lang/String;
    const-string v2, "keyf"

    invoke-virtual {p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->from(Ljava/lang/String;Z)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v0

    .line 320
    .local v0, "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    goto :goto_0

    .line 319
    .end local v0    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INSTANCE:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    if-nez v0, :cond_1

    .line 65
    const-class v2, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INSTANCE:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INSTANCE:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    .line 69
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_1
    :try_start_2
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->INSTANCE:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private kickUploadNoSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 10
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p2, "sWho2UploadNOSerial":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 443
    .local v9, "whoInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 444
    .local v4, "who":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 445
    .local v6, "idList":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->appendSumOfNeedAssist2Cloud(I)V

    .line 446
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    .local v3, "_id":Ljava/lang/String;
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 475
    .local v0, "t":Lclc/utils/taskmanager/Task;
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sNoSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    goto :goto_0

    .line 479
    .end local v0    # "t":Lclc/utils/taskmanager/Task;
    .end local v3    # "_id":Ljava/lang/String;
    .end local v4    # "who":Ljava/lang/String;
    .end local v6    # "idList":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sNoSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 480
    return-void
.end method

.method private kickUploadPoorMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/HashSet;)V
    .locals 10
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "currReportSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    invoke-direct {p0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->toItemIdSet(Ljava/util/HashSet;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    .line 485
    .local v6, "who2Ids":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 487
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->startUpload(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 492
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 493
    .local v3, "thisIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 494
    .local v4, "total":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 495
    .local v5, "who":Ljava/lang/String;
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v7, :cond_2

    .line 496
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kickUploadPoorMachine \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hash:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 502
    .end local v5    # "who":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 504
    if-eqz p1, :cond_4

    .line 505
    invoke-virtual {p1, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->appendSumOfNeedRom2Assist(I)V

    .line 506
    invoke-virtual {p1, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->startWaitForDataItems(Ljava/util/HashSet;)V

    .line 507
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onUpdateRom2AssistState(B)V

    .line 510
    :cond_4
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_come_on"

    invoke-virtual {v7, v8, v9}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalSyncAction(Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v2

    .line 511
    .local v2, "poorKick":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getCollector()Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method

.method private kickUploadSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, "sWho2UploadSerial":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 437
    .local v0, "t":Lclc/utils/taskmanager/Task;
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 438
    return-void
.end method

.method private letsDance(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentLinkedQueue;)I
    .locals 25
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;>;>;)I"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "results":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;>;"
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 330
    .local v15, "sWho2UploadSerial":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 332
    .local v14, "sWho2UploadNOSerial":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 334
    .local v3, "countAll":I
    if-eqz p2, :cond_8

    .line 336
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/ConcurrentHashMap;

    .line 337
    .local v13, "r":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    if-eqz v13, :cond_0

    .line 341
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 345
    .local v21, "whos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v19

    .line 346
    .local v19, "targetPkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->extractTargetActions()Ljava/util/HashSet;

    move-result-object v18

    .line 347
    .local v18, "targetActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "*"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 348
    .local v8, "inAllAction":Z
    const-string v22, "*"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 349
    .local v9, "inAllPackage":Z
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 350
    .local v20, "who":Ljava/lang/String;
    const-string v22, "WH-SERIAL_MODE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "===> \u8fd9\u4e2aitem action\u7684list: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , \u5373\u5c06\u88ab\u5904\u7406."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 352
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 353
    .local v10, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v10, :cond_2

    .line 358
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v12

    .line 359
    .local v12, "pkg":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    if-nez v9, :cond_3

    .line 361
    const-string v22, "WH-SERIAL_MODE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "letsDance ===> \u6254\u6389\uff1a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , for \uff1a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    if-nez v8, :cond_4

    .line 366
    const-string v22, "WH-SERIAL_MODE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "letsDance ===> xx\u6254\u6389\uff1a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " , for \uff1a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_4
    invoke-static {v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->isItemNeedSerial(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 373
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "id":Ljava/lang/String;
    const-string v22, "."

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 376
    add-int/lit8 v3, v3, 0x1

    .line 378
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 379
    .local v17, "specifiedSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    if-nez v17, :cond_5

    .line 380
    new-instance v17, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v17    # "specifiedSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 381
    .restart local v17    # "specifiedSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    .end local v7    # "id":Ljava/lang/String;
    .end local v17    # "specifiedSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 388
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 389
    .local v16, "specifiedNoSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    if-nez v16, :cond_7

    .line 390
    new-instance v16, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v16    # "specifiedNoSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 391
    .restart local v16    # "specifiedNoSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_7
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 401
    .end local v2    # "action":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "inAllAction":Z
    .end local v9    # "inAllPackage":Z
    .end local v10    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    .end local v16    # "specifiedNoSerialWhoItems":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    .end local v18    # "targetActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "targetPkg":Ljava/lang/String;
    .end local v20    # "who":Ljava/lang/String;
    .end local v21    # "whos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->kickUploadSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 405
    :cond_9
    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->kickUploadNoSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 409
    :cond_a
    return v3
.end method

.method private static removeTimeOutTimer()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method private static settleTimeOutTimer()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method private startUpload(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    .locals 9
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p2, "who"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    sget-object v3, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_0

    .line 209
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->getReportId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 234
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v3, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->getReportId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 215
    .local v1, "infoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->wholeFuseAndSort(Ljava/util/HashSet;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    .line 217
    .local v2, "results":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;>;"
    invoke-direct {p0, p1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->letsDance(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentLinkedQueue;)I

    move-result v0

    .line 219
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 220
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v3

    const/16 v4, 0x8

    new-array v5, v7, [I

    aput v0, v5, v6

    invoke-virtual {v3, p2, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 221
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v7, [I

    aput v0, v5, v6

    invoke-virtual {v3, p2, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->setSumOfNeedAssist2Cloud(I)V

    .line 224
    invoke-virtual {p1, v8}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onUpdateAssist2CloudState(B)V

    .line 233
    :cond_2
    :goto_1
    sget-object v3, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->getReportId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_3
    if-nez v0, :cond_2

    .line 226
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v3

    new-array v4, v6, [I

    invoke-virtual {v3, p2, v8, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 228
    invoke-virtual {p1, p2, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onFinish(Ljava/lang/String;I)V

    .line 230
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->removeReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    goto :goto_1
.end method

.method private toItemIdSet(Ljava/util/HashSet;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "currReportSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 520
    .local v12, "res":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    .line 521
    .local v14, "sum":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    .line 522
    .local v10, "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getWhomMapThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 523
    .local v13, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 525
    .local v3, "i":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 532
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getWhomMapThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashSet;

    .line 533
    .local v16, "whomList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 534
    .local v15, "who":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 535
    .local v2, "currList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 536
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "currList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 537
    .restart local v2    # "currList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_3
    invoke-virtual {v10}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 541
    .local v11, "item":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 542
    .local v9, "ii":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "id":Ljava/lang/String;
    const-string v17, "."

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 546
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 547
    add-int/lit8 v14, v14, 0x1

    .line 548
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v17, :cond_4

    .line 549
    const-string v17, "WH-SERIAL_MODE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "arrival --> add targetWho to WAIT: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " \u5f53\u524d\u6570\u76ee\uff1a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_4
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v2    # "currList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "i":Ljava/lang/Integer;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "ii":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v10    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .end local v11    # "item":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v13    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v15    # "who":Ljava/lang/String;
    .end local v16    # "whomList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v17, :cond_7

    .line 561
    sget-boolean v17, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v17, :cond_6

    .line 562
    const-string v17, "WH-SRV"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "toItemIdSet : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v17

    const-string v18, "WH-SRV"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "toItemIdSet : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_7
    return-object v12
.end method


# virtual methods
.method public declared-synchronized beginRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "reportId"    # Ljava/lang/String;

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    .line 288
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 289
    .local v0, "sets":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v0    # "sets":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->mId2CurrentReportListSetMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized feedRecord()V
    .locals 0

    .prologue
    .line 299
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->busy:Z

    return v0
.end method

.method public declared-synchronized onEventOfDanceWith(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->startUpload(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEventProcessReportItem(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 2
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p2, "reportItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 199
    .local v0, "t":Lclc/utils/taskmanager/Task;
    sget-object v1, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->sSerialMachineTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 86
    .end local v0    # "t":Lclc/utils/taskmanager/Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized wholeFuseAndSort(Ljava/util/HashSet;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "infoList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 245
    const/4 v8, 0x0

    .line 283
    :cond_0
    monitor-exit p0

    return-object v8

    .line 248
    :cond_1
    :try_start_0
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 250
    .local v8, "res":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    .line 251
    .local v4, "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    if-eqz v4, :cond_2

    .line 255
    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getThings()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 258
    .local v6, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 259
    .local v5, "item":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v5, :cond_3

    .line 263
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 264
    .local v10, "who2ThingsItemMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 265
    .local v0, "cell":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v0, :cond_4

    .line 268
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "who":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    .line 270
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v7, "node":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v10, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 244
    .end local v0    # "cell":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .end local v5    # "item":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v6    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    .end local v7    # "node":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v8    # "res":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;>;"
    .end local v9    # "who":Ljava/lang/String;
    .end local v10    # "who2ThingsItemMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 274
    .restart local v0    # "cell":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .restart local v5    # "item":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v6    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    .restart local v8    # "res":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;>;"
    .restart local v9    # "who":Ljava/lang/String;
    .restart local v10    # "who2ThingsItemMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 275
    .restart local v7    # "node":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    .end local v0    # "cell":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v7    # "node":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v9    # "who":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
