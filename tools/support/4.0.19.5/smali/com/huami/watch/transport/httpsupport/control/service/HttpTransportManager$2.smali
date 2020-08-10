.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;
.super Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 275
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 278
    :cond_0
    return-void
.end method

.method protected plainItemDataIn(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->hasMark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->removeMark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 260
    new-instance v0, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;-><init>(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->bleReceiveResText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    .line 261
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>>> \u52a9\u624b\u4f20\u6765\u4e86\u6570\u636e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===>>> \u52a9\u624b\u4f20\u6765\u4e86\u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>>> \u52a9\u624b\u4f20\u6765\u4e86\u6570\u636e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$600(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method
