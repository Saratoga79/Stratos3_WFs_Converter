.class Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;
.super Lclc/utils/taskmanager/Task;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->kickUploadSerialMachine(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

.field final synthetic val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

.field final synthetic val$sWho2UploadSerial:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$sWho2UploadSerial:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 5
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$600(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$sWho2UploadSerial:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$700()Lclc/utils/taskmanager/TaskManager;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->zygoteAddAndFillHomeWorkAndKickToFly(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;Lclc/utils/taskmanager/TaskManager;)Ljava/util/HashSet;

    move-result-object v0

    .line 417
    .local v0, "babies":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onUpdateAssist2CloudState(B)V

    .line 432
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$2;->val$sWho2UploadSerial:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 433
    const/4 v1, 0x0

    return-object v1
.end method
