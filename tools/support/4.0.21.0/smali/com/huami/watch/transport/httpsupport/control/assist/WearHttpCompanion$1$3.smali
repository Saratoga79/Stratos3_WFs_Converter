.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;
.super Lclc/utils/taskmanager/Task;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

.field final synthetic val$customCommand:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->val$customCommand:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 6
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v5, 0x0

    .line 322
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$200(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    move-result-object v2

    const-string v3, "_query_token"

    invoke-interface {v2, v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;->callBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "token":Ljava/lang/String;
    new-instance v0, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 324
    .local v0, "dataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v2, "_arrival_token"

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->val$customCommand:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 326
    const-string v2, "target"

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->val$customCommand:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const-string v4, "target"

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 328
    const-string v2, "wifi_trans"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trans---sendToRom--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;->this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    invoke-virtual {v2, v0, v5}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 330
    return-object v5
.end method
