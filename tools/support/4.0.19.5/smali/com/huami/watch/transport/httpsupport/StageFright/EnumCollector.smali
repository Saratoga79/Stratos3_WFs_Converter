.class public abstract Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
.super Ljava/lang/Object;
.source "EnumCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;
    }
.end annotation


# static fields
.field public static final KEY_ENUM_COLLECT_ITEM_ACTION:Ljava/lang/String; = "item_action"

.field private static sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;


# instance fields
.field private mData2LowerResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

.field private mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "def"

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "enum-collector"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 48
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized handleActionQueue()V
    .locals 6

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 121
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v1, :cond_0

    .line 125
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 126
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ==> handleActionQueue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> to handleSingleAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ==> handleActionQueue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> to handleSingleAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->handleSingleAction(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v2}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void
.end method

.method private handleSingleAction(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v2, "_report_sync_list"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v1, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 163
    .local v1, "t":Lclc/utils/taskmanager/Task;
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v2, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    .line 202
    .end local v1    # "t":Lclc/utils/taskmanager/Task;
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v2, "_query_sync_list"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    new-instance v1, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 182
    .restart local v1    # "t":Lclc/utils/taskmanager/Task;
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v2, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    goto :goto_0

    .line 183
    .end local v1    # "t":Lclc/utils/taskmanager/Task;
    :cond_1
    const-string v2, "_come_on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    new-instance v1, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$3;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$3;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 198
    .restart local v1    # "t":Lclc/utils/taskmanager/Task;
    sget-object v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sInnerCommandHandleTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v2, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    goto :goto_0

    .line 200
    .end local v1    # "t":Lclc/utils/taskmanager/Task;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method


# virtual methods
.method public addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 91
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "WH-SRV"

    const-string v1, "add action \uff1aNULL !!!!!!! IGNORE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SRV"

    const-string v2, "add action \uff1aNULL !!!!!!! IGNORE"

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add action \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , AT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const-string v0, "WH-SERIAL_MODE"

    const-string v1, "==> list is : \" + sActionList.toString()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add action \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , AT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "==> list is : \" + sActionList.toString()"

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->sActionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->handleActionQueue()V

    goto :goto_0
.end method

.method protected abstract data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
.end method

.method protected abstract data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
.end method

.method protected dataFromLower(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "itemAction"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 212
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ==> dataFromLower "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> to data2Upper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ==> dataFromLower "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> to data2Upper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$4;

    invoke-direct {v0, p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$4;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 245
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    goto :goto_0
.end method

.method protected dataFromUpper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 6
    .param p1, "actionItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 253
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ==> dataFromUpper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> to data2Lower"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ==> dataFromUpper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> to data2Lower"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2LowerResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    if-nez v2, :cond_3

    new-instance v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$5;

    invoke-direct {v2, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$5;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)V

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 289
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_1

    .line 290
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ==> data2Lower "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> to dataLocal2Upper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ==> data2Lower "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> to dataLocal2Upper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "target":[Ljava/lang/String;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "_report_sync_list"

    invoke-virtual {v2, v3, v4, v5}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalEnumCollectAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 303
    .local v0, "localDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 309
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_2

    .line 310
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ==> dataLocal2Upper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> to data2Upper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ==> dataLocal2Upper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> to data2Upper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    if-nez v2, :cond_4

    new-instance v2, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$6;

    invoke-direct {v2, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$6;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)V

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 343
    return-void

    .line 262
    .end local v0    # "localDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v1    # "target":[Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2LowerResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    goto/16 :goto_0

    .line 317
    .restart local v0    # "localDataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v1    # "target":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    goto :goto_1
.end method

.method protected abstract dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "customCommand"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 353
    return-void
.end method

.method protected onQueryCommandArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "command"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 140
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setOnReportData2LowerResultListener(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2LowerResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .line 81
    return-void
.end method

.method public setOnReportData2UpperResultListener(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->mData2UpperResultListener:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .line 85
    return-void
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 206
    return-void
.end method
