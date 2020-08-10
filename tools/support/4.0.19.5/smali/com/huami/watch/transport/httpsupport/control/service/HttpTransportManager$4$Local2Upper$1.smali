.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;Lclc/utils/taskmanager/Task$RunningStatus;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;->this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 2
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;->this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->access$900(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;->this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    iget-object v1, v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->targetItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;->this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;->this$2:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    iget-object v1, v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->targetItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-static {v0, v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->access$1000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method
