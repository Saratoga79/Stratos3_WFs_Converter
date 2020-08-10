.class Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;
.super Lclc/utils/taskmanager/Task;
.source "EnumCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->handleSingleAction(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

.field final synthetic val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 4
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 149
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ==> CMD report upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---> dataFromLower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ==> CMD report upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---> dataFromLower"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$1;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataFromLower(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method
