.class public final Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
.super Ljava/lang/Object;
.source "HolyBoard.java"


# static fields
.field private static volatile singleton:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;


# instance fields
.field private mContext:Landroid/content/Context;

.field private who2BabiesWeakRef:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->who2BabiesWeakRef:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->graduateTheChild(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
    .param p1, "x1"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "x2"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->coreWork(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
    .param p1, "x1"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "x2"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p3, "x3"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->finishSingleWorkAfterReqHttp(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->wentBackToGradleHead(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    return-void
.end method

.method private coreWork(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 7
    .param p1, "theGuardWithBabe"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "babyInstage"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p3, "nowHomeWork"    # Ljava/lang/String;
    .param p4, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 226
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lclc/utils/taskmanager/TaskManager;)V

    .line 459
    .local v0, "t":Lclc/utils/taskmanager/Task;
    invoke-virtual {p1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 461
    return-void
.end method

.method private declared-synchronized extractAllBabies(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 8
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    .line 97
    .local v0, "cacher":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->queryAllHolyBaby(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "holyBabyList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "itemsToFilter":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v4, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :try_start_1
    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v6

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "cacher":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "holyBabyList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v5    # "itemsToFilter":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 108
    .restart local v0    # "cacher":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .restart local v2    # "holyBabyList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "itemsToFilter":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    :cond_0
    :try_start_3
    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 110
    invoke-direct {p0, p1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->updateBabyOutOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->who2BabiesWeakRef:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method private finishSingleWorkAfterReqHttp(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    .locals 3
    .param p1, "gurader"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "babyInStage"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p3, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p4, "nowHomeWork"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->finishHomeWork(Landroid/content/Context;Ljava/lang/String;)Z

    .line 467
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->hasMoreHomeWork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->nextHomeWork()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->coreWork(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 491
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-direct {p0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->graduateTheChild(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    .line 473
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishHolyWho(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->pollHolyParentTarget()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "nextHoly":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    invoke-virtual {p0, p1, p3, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->kickToFly(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    new-instance v1, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    invoke-virtual {p1, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto :goto_0
.end method

.method private declared-synchronized getGradle(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 3
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "updateForced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->who2BabiesWeakRef:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 85
    .local v1, "babiesWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 87
    .local v0, "babies":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    .end local v1    # "babiesWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 88
    .restart local v1    # "babiesWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;>;"
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->who2BabiesWeakRef:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->extractAllBabies(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 92
    .end local v0    # "babies":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 83
    .end local v1    # "babiesWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private graduateTheChild(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 5
    .param p1, "child"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    .prologue
    .line 495
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************ Congratulate graduation for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  *********** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "************ Congratulate graduation for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  *********** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 503
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 504
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_1

    .line 505
    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "************WOWOWOWO*********** "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    const-string v3, "************WOWOWOWO*********** "

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 513
    :cond_2
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_3

    .line 514
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*WARNING ==>>> \u4f46\u662f\u8fd9\u4e2achild\u5e76\u6ca1\u6709\u5728\u6570\u636e\u5e93... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  *********** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*WARNING ==>>> \u4f46\u662f\u8fd9\u4e2achild\u5e76\u6ca1\u6709\u5728\u6570\u636e\u5e93... : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  *********** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized pollBabe(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateBabyOutOrder(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "originHolyBabyList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    new-instance v3, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$1;

    invoke-direct {v3, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$1;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)V

    invoke-static {p2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 144
    .local v2, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->from(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    move-result-object v0

    .line 145
    .local v0, "baby":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "baby":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .end local v2    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_0
    return-void
.end method

.method private declared-synchronized wentBackToGradleHead(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 2
    .param p1, "headBaby"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBaby(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 4
    .param p1, "baby"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u589e\u52a0\u4e86\u65b0\u7684HOLY BABY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  , parent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u589e\u52a0\u4e86\u65b0\u7684HOLY BABY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  , parent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 71
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized kickToFly(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    .locals 7
    .param p1, "theGuardWithBabe"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->pollNextBabyAndSendToStage(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    move-result-object v0

    .line 160
    .local v0, "babyInState":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BABE \u4e0b\u4e00\u4e2a ===> \u4e0b\u4e00\u4e2aBABE \u662f\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BABE \u4e0b\u4e00\u4e2a ===> \u4e0b\u4e00\u4e2aBABE \u662f\uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez v0, :cond_9

    .line 169
    :cond_1
    invoke-direct {p0, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 170
    invoke-direct {p0, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->pollBabe(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 176
    :cond_2
    if-nez v0, :cond_7

    .line 177
    invoke-virtual {p2, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishHolyWho(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v3, p3, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 180
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_3

    .line 181
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================\u770b\u4e0a\u53bb\u5df2\u7ecf\u6ca1\u6709\u4efb\u52a1\u4e86######\uff01 , for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "================\u770b\u4e0a\u53bb\u5df2\u7ecf\u6ca1\u6709\u4efb\u52a1\u4e86######\uff01 , for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->isAllHolyFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 189
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->pollHolyParentTarget()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "nextTarget":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    invoke-virtual {p0, p1, p2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->kickToFly(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v1    # "nextTarget":Ljava/lang/String;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p2, p3, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onFinish(Ljava/lang/String;I)V

    .line 197
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_6

    .line 198
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================\u6240\u6709\u5df2\u7ecf\u5b8c\u6210\u4e86\u4efb\u52a1######\uff01 , for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "================\u6240\u6709\u5df2\u7ecf\u5b8c\u6210\u4e86\u4efb\u52a1######\uff01 , for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "babyInState":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 209
    .restart local v0    # "babyInState":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    :cond_7
    :try_start_2
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_8

    .line 210
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BABE \u4e0b\u4e00\u4e2a ===> \u7ecf\u8fc7\u67e5\u8be2\u540e\uff0c\u627e\u5230 \u4e0b\u4e00\u4e2aBABE \u662f\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BABE \u4e0b\u4e00\u4e2a ===> \u7ecf\u8fc7\u67e5\u8be2\u540e\uff0c\u627e\u5230 \u4e0b\u4e00\u4e2aBABE \u662f\uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_9
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->nextHomeWork()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "nowHomeWork":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->coreWork(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public pollNextBabyAndSendToStage(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .locals 2
    .param p1, "targetParent"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getGradle(Ljava/lang/String;Z)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    .line 151
    .local v0, "holyBabies":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;"
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    goto :goto_0
.end method
