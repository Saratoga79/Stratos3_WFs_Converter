.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;
.super Ljava/lang/Object;
.source "WearHttpCompanion.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;->data2Upper(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector$OnReportResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

.field final synthetic val$autoMonitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

.field final synthetic val$target:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;[Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->this$1:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->val$target:[Ljava/lang/String;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->val$autoMonitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IZJ)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "newDataUploaded"    # Z
    .param p3, "startTime"    # J

    .prologue
    .line 222
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->val$autoMonitor:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->removeReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    .line 223
    return-void
.end method

.method public onUpdate(III)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "allInsum"    # I
    .param p3, "percent"    # I

    .prologue
    .line 218
    return-void
.end method

.method public targetAtAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->val$target:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public targetAtPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1$2;->val$target:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
