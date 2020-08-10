.class public Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;
.super Ljava/lang/Object;
.source "AnalysisStage.java"


# static fields
.field public static final INTERVAL_OF_TWICE_TRIGGER:Ljava/lang/Long;

.field private static IS_FIRST_BOOT:Z = false

.field private static final NEED_FIRST_BOOT_FLAG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMEOUT_COLLECT_REPORT:J = 0x2710L

.field private static sHandler:Landroid/os/Handler;

.field private static sTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private static volatile singleton:Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;


# instance fields
.field mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

.field private mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/32 v0, 0x2bf20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->INTERVAL_OF_TWICE_TRIGGER:Ljava/lang/Long;

    .line 107
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "analysis-stage"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->sTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->sHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->NEED_FIRST_BOOT_FLAG:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private checkCollector()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v0

    .line 141
    .local v0, "assist":Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getCollector()Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    .line 144
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private needAddFirstBootFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->NEED_FIRST_BOOT_FLAG:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->NEED_FIRST_BOOT_FLAG:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDrawReportList(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 6
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    if-eqz v1, :cond_1

    .line 149
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v5, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 151
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_query_sync_list"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalEnumCollectAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 153
    .local v0, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v1, "ver"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->needAddFirstBootFlag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "is_clear"

    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->IS_FIRST_BOOT:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    invoke-virtual {v1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 164
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->setReportId(Ljava/lang/String;)V

    .line 168
    .end local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :goto_1
    return-void

    .line 159
    .restart local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_0
    const-string v1, "is_clear"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_1
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v5, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    goto :goto_1
.end method


# virtual methods
.method public addReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public declared-synchronized beginNewSync(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->isFirstBoot(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->IS_FIRST_BOOT:Z

    .line 113
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    .line 115
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 117
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->checkCollector()V

    .line 134
    invoke-virtual {p0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->addReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 136
    invoke-direct {p0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->queryDrawReportList(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findProcessStateMonitor(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .locals 10
    .param p1, "wholeWho"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 62
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    :cond_0
    const/4 v5, 0x0

    .line 80
    :cond_1
    :goto_0
    return-object v5

    .line 66
    :cond_2
    const-string v7, "#"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "things":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 68
    .local v4, "pkg":Ljava/lang/String;
    aget-object v0, v6, v9

    .line 69
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 70
    .local v5, "psm":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "keyPrefix":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v1, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    :cond_4
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "psm":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    check-cast v5, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .line 76
    .restart local v5    # "psm":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    goto :goto_0
.end method

.method public handleReportHub(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 188
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "who":Ljava/lang/String;
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_0

    .line 192
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch handle report hub for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Touch handle report hub for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_1

    .line 200
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Real handle report hub for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Real handle report hub for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .line 209
    .local v1, "reportArrivalListener":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    if-eqz v1, :cond_4

    .line 210
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_2

    .line 211
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u627e\u5230Report \u5904\u7406\u5668 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u627e\u5230Report \u5904\u7406\u5668 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, p1, v1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onReportArrival(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 230
    .end local v1    # "reportArrivalListener":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    :cond_3
    :goto_0
    return-void

    .line 219
    .restart local v1    # "reportArrivalListener":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    :cond_4
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_5

    .line 220
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672a\u80fd\u627e\u5230Report \u5904\u7406\u5668 for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672a\u80fd\u627e\u5230Report \u5904\u7406\u5668 for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeReportArrivalListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->mWho2ReportArrivalListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
