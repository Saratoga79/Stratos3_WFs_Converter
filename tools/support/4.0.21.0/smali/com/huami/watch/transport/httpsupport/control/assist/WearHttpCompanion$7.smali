.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;
.super Lclc/utils/taskmanager/Task;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedRequestWhileNetWorkAvalible()V
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
    .line 1004
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 10
    .param p1, "arg0"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1007
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$800(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1053
    :goto_0
    return-object v8

    .line 1011
    :cond_0
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$800(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1013
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(I)Ljava/util/List;

    move-result-object v2

    .line 1014
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v3, :cond_1

    .line 1015
    const-string v5, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------> \u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728\u201c\u624b\u52a9\u201d\u7684\u8bf7\u6c42 \u6709 ==> [ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ] \u4e2a\u8bf7\u6c42\u9700\u8981\u91cd\u65b0\u53d1\u8d77...."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v5

    const-string v6, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------> \u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728\u201c\u624b\u52a9\u201d\u7684\u8bf7\u6c42 \u6709 ==> [ "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ] \u4e2a\u8bf7\u6c42\u9700\u8981\u91cd\u65b0\u53d1\u8d77...."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    if-nez v2, :cond_4

    .line 1025
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$800(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1015
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 1020
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    .line 1029
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 1030
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v1, :cond_5

    .line 1047
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 1048
    invoke-virtual {v1, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 1049
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-virtual {v3, v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sendDataToServer(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_3

    .line 1052
    .end local v1    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_6
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$800(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method
