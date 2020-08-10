.class Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;
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
    .line 165
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 3
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->onQueryCommandArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 170
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "ver":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v0, "0"

    .line 175
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->CURR_REPORT_LIST_VER:I

    .line 177
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$2;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataFromUpper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 178
    const/4 v1, 0x0

    return-object v1
.end method
