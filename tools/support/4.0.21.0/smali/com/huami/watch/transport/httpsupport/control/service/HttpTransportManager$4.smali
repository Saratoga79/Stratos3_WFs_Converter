.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;
.super Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->initEnumCollector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;
    }
.end annotation


# instance fields
.field private mId2UpperTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)V
    .locals 1

    .prologue
    .line 306
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;-><init>()V

    .line 308
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->mId2UpperTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->realReport2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->mId2UpperTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private real2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$2;

    invoke-direct {v1, p0, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$2;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z

    goto :goto_0
.end method

.method private realReport2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 11
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 397
    iget-object v8, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v8}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    .line 398
    .local v1, "cache":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    new-instance v4, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;

    sget v8, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->CURR_REPORT_LIST_VER:I

    invoke-direct {v4, v8}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;-><init>(I)V

    .line 400
    .local v4, "infoList":Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;
    invoke-virtual {v1, v9, v10}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v5

    .line 402
    .local v5, "list1":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    if-eqz v5, :cond_4

    .line 403
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "target":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 405
    .local v7, "targetPackage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetActionSet()Ljava/util/HashSet;

    move-result-object v0

    .line 407
    .local v0, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 408
    .local v2, "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v8, "*"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    sget v8, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->CURR_REPORT_LIST_VER:I

    if-nez v8, :cond_2

    .line 410
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "*"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 414
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->addItem(Ljava/lang/Integer;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 420
    .end local v0    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "target":[Ljava/lang/String;
    .end local v7    # "targetPackage":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v8}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 422
    const-string v8, "report-list"

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;->flatten()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v8, "keyf"

    const-string v9, "1"

    invoke-virtual {p1, v8, v9}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->real2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 427
    return-void
.end method


# virtual methods
.method protected data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 5
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$700(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->hasClient()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "WH-SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709client ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ca1\u6709client ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$700(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->dispatchToAllClient(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v0

    .line 341
    .local v0, "res":Z
    if-eqz p2, :cond_1

    .line 342
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;->onReportResult(I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "l"    # Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u81ea\u5df1\u4e0d\u518d\u8fd9\u91cc\u4e0a\u4f20: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;

    invoke-direct {v1, p0, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z

    goto :goto_0
.end method

.method protected dataFromUpper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "actionItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 312
    sget v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->CURR_REPORT_LIST_VER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 314
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    const-string v2, "*"

    const-string v3, "sync-internal-for-assist"

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalSyncAction(Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 315
    .local v0, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 318
    .end local v0    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->dataFromUpper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 319
    return-void
.end method

.method protected dataLocal2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 6
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->mId2UpperTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    .line 388
    .local v1, "task":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;
    if-nez v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->mId2UpperTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;

    .end local v1    # "task":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;
    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .restart local v1    # "task":Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4$Local2Upper;
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$800()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$800()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xcd0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method protected onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 9
    .param p1, "customCommand"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "action":Ljava/lang/String;
    const-string v4, "sync-internal-for-assist"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    const-string v4, "new-sync"

    invoke-virtual {p1, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 470
    const-string v4, "WH-SERIAL_MODE"

    const-string v5, "---xx----------\u611f\u89c9\u5bf9\u65b9\u662f\u4e2a\u201c\u65b0\u7684\u201d\u52a9\u624b"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {v8}, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->saveSyncSupport(Z)V

    .line 479
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    .line 494
    :cond_0
    :goto_1
    return-void

    .line 474
    :cond_1
    const-string v4, "WH-SERIAL_MODE"

    const-string v5, "---xx----------\u611f\u89c9\u5bf9\u65b9\u662f\u4e2a\u201c\u65e7\u7684\u201d\u52a9\u624b"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {v7}, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->saveSyncSupport(Z)V

    goto :goto_0

    .line 480
    :cond_2
    const-string v4, "tell-internal-for-assist"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    goto :goto_1

    .line 482
    :cond_3
    const-string v4, "_client_trigger_report"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 484
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackTargetPackageAndAction()[Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "target":[Ljava/lang/String;
    aget-object v4, v1, v7

    if-nez v4, :cond_4

    const-string v3, "\u6ca1\u6709target"

    .line 487
    .local v3, "targetPackage":Ljava/lang/String;
    :goto_2
    aget-object v4, v1, v8

    if-nez v4, :cond_5

    const-string v2, "\u6ca1\u6709target"

    .line 488
    .local v2, "targetAction":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-virtual {v4, v3, v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->triggerOnceReportTypedUploadCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 486
    .end local v2    # "targetAction":Ljava/lang/String;
    .end local v3    # "targetPackage":Ljava/lang/String;
    :cond_4
    aget-object v3, v1, v7

    goto :goto_2

    .line 487
    .restart local v3    # "targetPackage":Ljava/lang/String;
    :cond_5
    aget-object v2, v1, v8

    goto :goto_3

    .line 489
    .end local v1    # "target":[Ljava/lang/String;
    .end local v3    # "targetPackage":Ljava/lang/String;
    :cond_6
    const-string v4, "_query_token"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    goto :goto_1

    .line 491
    :cond_7
    const-string v4, "_arrival_token"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->data2Lower(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V

    goto :goto_1
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryProcessCachedRequestWhilePhoneAvalible(Landroid/content/Context;)V

    .line 461
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$700(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->dispatchToAllClient(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 462
    return-void
.end method
