.class Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;
.super Lclc/utils/taskmanager/Task;
.source "HolyBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->finishSingleWorkAfterReqHttp(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

.field final synthetic val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 3
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->isAllHolyFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$3;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onFinish(Ljava/lang/String;I)V

    .line 486
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
