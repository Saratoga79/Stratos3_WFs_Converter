.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 2
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 297
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method
