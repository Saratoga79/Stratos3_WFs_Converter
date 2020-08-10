.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportTriggerForCacheRunnable"
.end annotation


# instance fields
.field public targetAction:Ljava/lang/String;

.field public targetPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->targetPkg:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->targetAction:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 70
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->targetPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->targetAction:Ljava/lang/String;

    const-string v4, "_query_sync_list"

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalEnumCollectAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 77
    .local v0, "actionReport":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v1, "ver"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "self"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method
