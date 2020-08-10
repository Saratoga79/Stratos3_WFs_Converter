.class Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;
.super Lclc/utils/taskmanager/Task;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->kickUploadNoSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

.field final synthetic val$_id:Ljava/lang/String;

.field final synthetic val$idList:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

.field final synthetic val$who:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$who:Ljava/lang/String;

    iput-object p5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iput-object p6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$idList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method

.method private relaxData2Server(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "realItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$idList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 471
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 472
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sendDataToServer(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 473
    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 6
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v5, 0x0

    .line 451
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$600(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 452
    .local v0, "realItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-nez v0, :cond_0

    .line 453
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e76\u6ca1\u6709\u627e\u5230 ==> REAL ITEM \u5e76\u6ca1\u6709\uff1a\u3000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , \u95ee\u9898\u4e25\u91cd\u4f46\u8fd8\u597d\u662f\u5e76\u53d1\u4f20...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$who:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 457
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishOneAssist2Cloud(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 466
    :goto_0
    return-object v5

    .line 460
    :cond_0
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REAL ITEM \u627e\u5230\u4e86\uff1a\u3000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->relaxData2Server(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 464
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishOneAssist2Cloud(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method
