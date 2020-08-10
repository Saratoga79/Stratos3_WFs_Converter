.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;
.super Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->doInitEnumCollector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 1
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$000(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 169
    return-void
.end method

.method protected data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 10
    .param p1, "reportListItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 174
    const-string v6, "self"

    invoke-virtual {p1, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 175
    .local v1, "isAuto":Z
    const-string v6, "keyf"

    invoke-virtual {p1, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 176
    .local v2, "isKey":Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 177
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->findProcessStateMonitor(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    move-result-object v4

    .line 178
    .local v4, "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    if-eqz v4, :cond_1

    .line 179
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v6, :cond_0

    .line 180
    const-string v6, "WH-ASSIST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u7ecf\u5728\u540c\u6b65\u4e86\uff0c\u6240\u4ee5\u6b64\u6b21\u5ffd\u7565"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5df2\u7ecf\u5728\u540c\u6b65\u4e86\uff0c\u6240\u4ee5\u6b64\u6b21\u5ffd\u7565 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v4    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    :goto_0
    return-void

    .line 191
    .restart local v4    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    :cond_1
    new-instance v4, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$1;

    .end local v4    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    invoke-direct {v4, p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;)V

    .line 198
    .restart local v4    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->addReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 200
    move-object v0, v4

    .line 201
    .local v0, "autoMonitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->setReportId(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "target":[Ljava/lang/String;
    new-instance v6, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;

    invoke-direct {v6, p0, v5, v0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;[Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    invoke-virtual {v4, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->inJack(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;)V

    .line 225
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->addReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 227
    new-instance v3, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>()V

    .line 228
    .local v3, "localReport":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v6, "_report_sync_list"

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v6}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setExtraData(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 233
    const-string v6, "keyf"

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removeExtraPairByKey(Ljava/lang/String;)Z

    .line 234
    const-string v6, "report-list"

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removeExtraPairByKey(Ljava/lang/String;)Z

    .line 235
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setIdentifier(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v7}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->handleReportHub(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 238
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v6, :cond_2

    .line 239
    const-string v6, "WH-ASSIST"

    const-string v7, " AUTO MODE \u6dfb\u52a0\u4e86local data report "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-SERIAL_MODE"

    const-string v8, "AUTO MODE \u6dfb\u52a0\u4e86local data report "

    invoke-virtual {v6, v7, v8}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0    # "autoMonitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .end local v3    # "localReport":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v4    # "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .end local v5    # "target":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v7}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->handleReportHub(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto/16 :goto_0
.end method

.method protected dataFromLower(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "itemAction"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_report_sync_list"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string v3, "report-list"

    invoke-virtual {p1, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "reportlist":Ljava/lang/String;
    const-string v3, "keyf"

    invoke-virtual {p1, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->from(Ljava/lang/String;Z)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v1

    .line 295
    .local v1, "reportInfo":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->getVersion()I

    move-result v3

    if-nez v3, :cond_0

    .line 297
    const-string v3, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->translateV0TOV1(Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;I)Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    move-result-object v0

    .line 298
    .local v0, "newReportInfo":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    const-string v3, "report-list"

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .end local v0    # "newReportInfo":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .end local v1    # "reportInfo":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    .end local v2    # "reportlist":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataFromLower(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 303
    return-void

    .line 294
    .restart local v2    # "reportlist":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 13
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v11, 0x0

    .line 253
    iget-object v10, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v10}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    .line 254
    .local v2, "cache":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    new-instance v6, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    invoke-direct {v6}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;-><init>()V

    .line 256
    .local v6, "infoList":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    const/4 v10, 0x4

    invoke-virtual {v2, v10, v11}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v7

    .line 258
    .local v7, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v7, :cond_3

    .line 259
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "pkgAndAction":[Ljava/lang/String;
    aget-object v8, v9, v11

    .line 261
    .local v8, "pkg":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v0, v9, v10

    .line 262
    .local v0, "action":Ljava/lang/String;
    const-string v10, "*"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 263
    .local v3, "careAllAction":Z
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetActionSet()Ljava/util/HashSet;

    move-result-object v1

    .line 264
    .local v1, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 265
    .local v4, "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 266
    sget-boolean v10, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v10, :cond_0

    .line 267
    const-string v10, "WH-ASSIST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9700\u8981: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , \u5ffd\u7565\u4e86\u8fd9\u4e2a\u5bb6\u4f19\uff1a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 273
    sget-boolean v10, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v10, :cond_2

    .line 274
    const-string v10, "WH-ASSIST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u9700\u8981: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5ffd\u7565\u4e86\u8fd9\u4e2aaction\uff1a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 282
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "careAllAction":Z
    .end local v4    # "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "pkgAndAction":[Ljava/lang/String;
    :cond_3
    const-string v10, "report-list"

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flatten()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v10, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v10}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 286
    const-string v10, "_report_sync_list"

    invoke-virtual {p1, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setAction(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method protected onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "customCommand"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 308
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "action":Ljava/lang/String;
    const-string v2, "sync-internal-for-assist"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v2, "_client_trigger_report"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 315
    :cond_2
    const-string v2, "_query_token"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string v2, "wifi_trans"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rom--cmd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--customCommand--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$200(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$3;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 333
    .local v1, "task":Lclc/utils/taskmanager/Task;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$300(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$300(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto :goto_0
.end method
