.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;
.super Lclc/utils/taskmanager/Task;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedResponseWhileChannelAvalible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 10
    .param p1, "paramTaskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1070
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v2

    .line 1071
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_0

    .line 1072
    const-string v6, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------> \u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728\u201c\u624b\u52a9\u201d\u7684 \"SERVER\u8fd4\u56de\u7ed3\u679c\" \u6709 ==> [ "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ] \u4e2aSERVER \u8fd4\u56de\u7ed3\u679c\u9700\u8981\u56de\u4f20...."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------> \u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728\u201c\u624b\u52a9\u201d\u7684 \"SERVER\u8fd4\u56de\u7ed3\u679c\" \u6709 ==> [ "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ] \u4e2aSERVER \u8fd4\u56de\u7ed3\u679c\u9700\u8981\u56de\u4f20...."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    if-nez v2, :cond_3

    .line 1104
    :goto_2
    return-object v9

    .line 1072
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 1077
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 1086
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 1087
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v1, :cond_4

    .line 1091
    invoke-virtual {v1, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 1092
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 1093
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-virtual {v4, v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sendDataToApp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lclc/utils/taskmanager/Task;

    move-result-object v3

    .line 1094
    .local v3, "t":Lclc/utils/taskmanager/Task;
    if-eqz v3, :cond_4

    .line 1096
    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$900(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1097
    :catch_0
    move-exception v4

    goto :goto_3

    .line 1103
    .end local v1    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v3    # "t":Lclc/utils/taskmanager/Task;
    :cond_5
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$900(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto :goto_2
.end method
