.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;
.super Lclc/utils/taskmanager/Task;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryProcessCachedRequestWhilePhoneAvalible(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 11
    .param p1, "paramTaskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 954
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v4

    invoke-virtual {v4, v9, v5}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v2

    .line 955
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_0

    .line 956
    const-string v6, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728service\u7684\u8bf7\u6c42 \u6709 ==> [ "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ] \u4e2a\u8bf7\u6c42\u9700\u8981\u91cd\u65b0\u53d1\u8d77...."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5c1d\u8bd5\u5904\u7406\u7f13\u5b58\u5728service\u7684\u8bf7\u6c42 \u6709 ==> [ "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ] \u4e2a\u8bf7\u6c42\u9700\u8981\u91cd\u65b0\u53d1\u8d77...."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    if-nez v2, :cond_4

    .line 990
    :cond_1
    return-object v10

    .line 956
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 961
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 969
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 970
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-eqz v1, :cond_5

    .line 973
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 974
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->IS_BLE:Z

    if-eqz v4, :cond_6

    .line 975
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "free_num"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 976
    .local v3, "val":I
    if-lez v3, :cond_5

    .line 982
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v4, v1, v9}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V

    goto :goto_2

    .line 985
    .end local v3    # "val":I
    :cond_6
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v4, v1, v9}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V

    goto :goto_2
.end method
