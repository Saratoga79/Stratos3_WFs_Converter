.class Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;
.super Lclc/utils/taskmanager/Task;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->onEventProcessReportItem(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

.field final synthetic val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

.field final synthetic val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 9
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v2, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$002(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Z)Z

    .line 123
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-static {v2, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$100(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v0

    .line 124
    .local v0, "report":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    if-nez v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v2, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$002(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Z)Z

    .line 195
    :goto_0
    return-object v8

    .line 129
    :cond_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 130
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$202(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    :cond_1
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 133
    .local v1, "reportListInfos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    if-nez v1, :cond_2

    .line 134
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "reportListInfos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .restart local v1    # "reportListInfos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;>;"
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const-string v3, "keyf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 141
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v6, [I

    invoke-virtual {v2, v3, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 143
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_3

    .line 144
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrival \uff0c\u6536\u5230\u4e86\"\u4e3b\u952e\" \uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrival \uff0c\u6536\u5230\u4e86\"\u4e3b\u952e\" \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$300(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v5, v6, [I

    invoke-virtual {v2, v3, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 157
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_4

    .line 158
    const-string v2, "WH-SRV"

    const-string v3, "KEYF\u8bf4#####\u9700\u8981\u89e6\u53d1\u6570\u636e\u4e0a\u62a5\u7684action\uff0c\u56e0\u4e3a\u6709\u6570\u636e\u5b58\u5728"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "KEYF\u8bf4#####\u9700\u8981\u89e6\u53d1\u6570\u636e\u4e0a\u62a5\u7684action\uff0c\u56e0\u4e3a\u6709\u6570\u636e\u5b58\u5728"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-static {v2, v3, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$400(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/HashSet;)V

    .line 174
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    invoke-static {v2, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$002(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Z)Z

    goto/16 :goto_0

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$monitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->access$500(Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :cond_6
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_7

    .line 188
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrival \uff0c\u6536\u5230\u4e86\u975e\u4e3b\u952e \uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_7
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrival \uff0c\u6536\u5230\u4e86\u975e\u4e3b\u952e \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer$1;->val$reportItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
