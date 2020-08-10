.class Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;
.super Lclc/utils/taskmanager/Task;
.source "HolyBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->coreWork(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

.field final synthetic val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

.field final synthetic val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

.field final synthetic val$nowHomeWork:Ljava/lang/String;

.field final synthetic val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lclc/utils/taskmanager/TaskManager;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    iput-object p5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iput-object p6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method

.method private handleRequestResult(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "guarder"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "itemResult"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 308
    if-nez p2, :cond_6

    .line 309
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_0

    .line 310
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa\u8bf7\u6c42\u7684\u65f6\u5019\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u3002\u8be5\u6b21\u8bf7\u6c42\u5c06\u88ab\u5ffd\u7565\uff01%%%%%%%%%%%%%% : targetWho : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521b\u5efa\u8bf7\u6c42\u7684\u65f6\u5019\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u3002\u8be5\u6b21\u8bf7\u6c42\u5c06\u88ab\u5ffd\u7565\uff01%%%%%%%%%%%%%% : targetWho : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 322
    .local v0, "res":Z
    if-eqz v0, :cond_4

    .line 323
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_2

    .line 324
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_3

    .line 329
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_3
    :goto_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 361
    .end local v0    # "res":Z
    :goto_1
    return-void

    .line 333
    .restart local v0    # "res":Z
    :cond_4
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_5

    .line 334
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5931\u8d25\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5931\u8d25\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v0    # "res":Z
    :cond_6
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_7

    .line 351
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r\u5df2\u8fd4\u56de\uff0c Wear Componion By HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_7
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_8

    .line 356
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r\u5df2\u8fd4\u56de\uff0cAfter send data to server from Wear Componion By HTTP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_8
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->handleResultCodeInternal(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    goto/16 :goto_1
.end method

.method private handleResultCodeInternal(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 8
    .param p1, "gurader"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "itemResult"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "babyInStage"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p4, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    .prologue
    const/4 v7, 0x0

    .line 371
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 372
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_1

    .line 373
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP \u8bf7\u6c42  \u6210\u529f\u4e86 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP \u8bf7\u6c42  \u6210\u529fx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP \u8bf7\u6c42  \u6210\u529f\u4e86 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_1
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v3

    invoke-virtual {p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    new-array v6, v7, [I

    invoke-virtual {v3, v4, v5, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 385
    invoke-virtual {p2, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 387
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 389
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sendDataToApp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lclc/utils/taskmanager/Task;

    move-result-object v1

    .line 391
    .local v1, "sendBack":Lclc/utils/taskmanager/Task;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v3, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    .line 393
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-static {v3, p1, p3, p4, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$300(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    .line 456
    .end local v1    # "sendBack":Lclc/utils/taskmanager/Task;
    :goto_0
    return-void

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-static {v3, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$400(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    .line 403
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->isOverSea()Z

    move-result v0

    .line 404
    .local v0, "oversea":Z
    if-eqz v0, :cond_4

    .line 405
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v3, "-us"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "-us"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 409
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_3

    .line 410
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROPPED !\u8d26\u53f7\u662f\u6d77\u5916\u7684\uff0c\u4f46\u8fd9\u4e2a\u6570\u636e\u662f\u56fd\u5185\u7684\uff0c\u4f46\u662furl\u662f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROPPED !\u8d26\u53f7\u662f\u6d77\u5916\u7684\uff0c\u4f46\u8fd9\u4e2a\u6570\u636e\u662f\u56fd\u5185\u7684\uff0c\u4f46\u662furl\u662f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-static {v3, p1, p3, p4, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$300(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 424
    .restart local v2    # "url":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v3, "-us"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "-us"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 426
    :cond_5
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_6

    .line 427
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROPPED !\u8d26\u53f7\u662f\u56fd\u5185\u7684\uff0c\u4f46\u8fd9\u4e2a\u6570\u636e\u662f\u6d77\u5916\u7684\uff0c\u4f46\u662furl\u662f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROPPED !\u8d26\u53f7\u662f\u56fd\u5185\u7684\uff0c\u4f46\u8fd9\u4e2a\u6570\u636e\u662f\u6d77\u5916\u7684\uff0c\u4f46\u662furl\u662f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-static {v3, p1, p3, p4, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$300(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_7
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v3, :cond_8

    .line 441
    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP \u8bf7\u6c42\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u9700\u8981\u91cd\u8bd5 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP \u8bf7\u6c42\u5e76\u6ca1\u6709\u6210\u529f\uff0c\u9700\u8981\u91cd\u8bd5 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    new-instance v4, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2$1;

    sget-object v5, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v4, p0, v5, p4, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2$1;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    invoke-virtual {v3, v4}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto/16 :goto_0
.end method

.method private random()Z
    .locals 4

    .prologue
    .line 364
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    .line 366
    .local v0, "res":Z
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ed3\u679crandom  \u6210\u529fx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0
.end method

.method private serialData2Server(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 6
    .param p1, "guarder"    # Lclc/utils/taskmanager/TaskManager;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 280
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_0

    .line 281
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0a\u4f20 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before send data to server from Wear Componion By HTTP : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_2

    .line 294
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before send data to server from Wear Componion By HTTP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getHttpTransporter()Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p2, v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->request(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Ljava/util/Map;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v1

    .line 303
    .local v1, "result":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-direct {p0, p1, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->handleRequestResult(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 304
    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 9
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v8, 0x0

    .line 230
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(Ljava/lang/String;I)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v3

    .line 231
    .local v3, "realItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-nez v3, :cond_4

    .line 232
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_0

    .line 233
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BABE CRY~~~~ \u5e76\u6ca1\u6709\u627e\u5230 ==> REAL ITEM \u5e76\u6ca1\u6709\uff1a\u3000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , \u95ee\u9898\u4e25\u91cd\u4e86...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BABE CRY~~~~ \u5e76\u6ca1\u6709\u627e\u5230 ==> REAL ITEM \u5e76\u6ca1\u6709\uff1a\u3000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , \u95ee\u9898\u4e25\u91cd\u4e86...."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-static {v5}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$nowHomeWork:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->finishHomeWork(Landroid/content/Context;Ljava/lang/String;)Z

    .line 241
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->nextHomeWork()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "next":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-static {v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$100(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    .line 244
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "parent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PARENT is NULL !!!!!!!!!!!!!!!!!!!!!!!!! === IGNORE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0    # "next":Ljava/lang/String;
    .end local v2    # "parent":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 250
    .restart local v0    # "next":Ljava/lang/String;
    .restart local v2    # "parent":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->pollHolyParentTarget()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "nextParent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v4, v5, v6, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->kickToFly(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v1    # "nextParent":Ljava/lang/String;
    .end local v2    # "parent":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-static {v4, v5, v6, v0, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->access$200(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    goto :goto_0

    .line 259
    .end local v0    # "next":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 260
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v4, :cond_5

    .line 261
    const-string v4, "WH-SERIAL_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REAL ITEM \u627e\u5230\u4e86\uff1a\u3000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REAL ITEM \u627e\u5230\u4e86\uff1a\u3000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SERIAL_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u987a\u5e8f\uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$babyInstage:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iget-object v7, v7, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$theGuardWithBabe:Lclc/utils/taskmanager/TaskManager;

    invoke-direct {p0, v4, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->serialData2Server(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 273
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v4, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishOneAssist2Cloud(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto/16 :goto_0
.end method
