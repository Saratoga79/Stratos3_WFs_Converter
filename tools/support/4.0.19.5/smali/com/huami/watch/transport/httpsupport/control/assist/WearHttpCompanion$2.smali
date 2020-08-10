.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;
.super Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->doInit(Landroid/content/Context;)V
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
    .line 424
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 446
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tell-internal-for-assist"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rev internal CMD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rev internal CMD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$500(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$600(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 464
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 rev internal CMD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected plainItemDataIn(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 3
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->lookSideBlt()V

    .line 430
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "who":Ljava/lang/String;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->findProcessStateMonitor(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;

    move-result-object v0

    .line 432
    .local v0, "monitor":Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    if-eqz v0, :cond_0

    .line 434
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onFeedSingleLazyGirl(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$400(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 440
    return-void
.end method
