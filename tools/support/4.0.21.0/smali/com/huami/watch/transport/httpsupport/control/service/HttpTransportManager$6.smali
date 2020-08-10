.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->handleDataFromRemote(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

.field final synthetic val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 2
    .param p1, "operation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-static {v0, v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 727
    const/4 v0, 0x0

    return-object v0
.end method
