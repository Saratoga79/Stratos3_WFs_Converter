.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;
.super Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
.source "WearHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->doInitEnumCollector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 121
    return-void
.end method

.method protected data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v2, v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I

    move-result v1

    .line 115
    .local v1, "res":I
    invoke-interface {p2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;->onReportResult(I)V

    .line 116
    return-void
.end method

.method protected dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 7
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v5}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    .line 129
    .local v0, "cache":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    new-instance v3, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    invoke-direct {v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;-><init>()V

    .line 133
    .local v3, "infoList":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v6}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v4

    .line 135
    .local v4, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v4, :cond_0

    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 137
    .local v1, "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 143
    .end local v1    # "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v5, "report-list"

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v5}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method protected onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 3
    .param p1, "customCommand"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v1, "sync-internal-for-assist"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "new-sync"

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "-------------\u611f\u89c9\u5bf9\u65b9\u662f\u4e2a\u201c\u65b0\u7684\u201d\u52a9\u624b"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->saveSyncSupport(Z)V

    .line 182
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$400(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$400(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;->onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 185
    :cond_1
    return-void

    .line 176
    :cond_2
    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "-------------\u611f\u89c9\u5bf9\u65b9\u662f\u4e2a\u201c\u65e7\u7684\u201d\u52a9\u624b"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->saveSyncSupport(Z)V

    goto :goto_0
.end method

.method protected onQueryCommandArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "command"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->onQueryCommandArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 152
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$200(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$200(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;->onQueryCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 161
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$300(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    .line 163
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$2;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 164
    return-void
.end method
