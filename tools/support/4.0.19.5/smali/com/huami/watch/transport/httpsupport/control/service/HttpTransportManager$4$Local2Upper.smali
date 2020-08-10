.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Local2Upper"
.end annotation


# instance fields
.field targetItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->targetItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 434
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;Lclc/utils/taskmanager/Task$RunningStatus;)V

    .line 448
    .local v0, "t":Lclc/utils/taskmanager/Task;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    iget-object v1, v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$400(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 449
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;->targetItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    if-nez v1, :cond_0

    .line 452
    :cond_0
    return-void
.end method
