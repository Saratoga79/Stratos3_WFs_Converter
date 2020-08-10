.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->triggerOnceReportTypedUploadCache(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->val$targetAction:Ljava/lang/String;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 4
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 510
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;->val$targetAction:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->run()V

    .line 511
    const/4 v0, 0x0

    return-object v0
.end method
