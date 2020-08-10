.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryToSendDataItemToAssist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

.field final synthetic val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

.field final synthetic val$needLookAsideDB:Z


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iput-boolean p3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$needLookAsideDB:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x3e8

    .line 747
    new-instance v0, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;-><init>(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    .line 748
    .local v0, "dataParser":Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->getImportanceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    .line 749
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "item":Ljava/lang/String;
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c1d\u8bd5\u5c06\u4e0b\u9762\u6570\u636e\u53d1\u9001\u5230\u624b\u52a9\u7aef>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,\u662f\u5426\u5927\u6570\u636e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const v5, 0x8000

    invoke-virtual {v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v1

    .line 758
    .restart local v1    # "item":Ljava/lang/String;
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5c1d\u8bd5\u5c06\u4e0b\u9762\u6570\u636e\u53d1\u9001\u5230\u624b\u52a9\u7aef>>>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***ble\u53d1\u9001****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    new-instance v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;

    invoke-direct {v4, p0, v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;)V

    invoke-static {v2, v3, v4}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1400(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    .line 855
    return-void
.end method
