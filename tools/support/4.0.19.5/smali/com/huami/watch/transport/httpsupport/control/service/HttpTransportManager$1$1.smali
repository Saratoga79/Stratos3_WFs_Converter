.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;->realSendData2Assist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;

.field final synthetic val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

.field final synthetic val$needLooksideDB:Z


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iput-boolean p4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->val$needLooksideDB:Z

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 3
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iget-boolean v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1$1;->val$needLooksideDB:Z

    invoke-static {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method
