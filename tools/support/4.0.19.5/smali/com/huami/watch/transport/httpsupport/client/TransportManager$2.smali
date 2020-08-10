.class Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;
.super Lclc/utils/taskmanager/Task;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/TransportManager;->fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 2
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
