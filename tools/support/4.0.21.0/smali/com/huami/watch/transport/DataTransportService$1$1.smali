.class Lcom/huami/watch/transport/DataTransportService$1$1;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$1;->onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$1;

.field final synthetic val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$1;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$1$1;->this$1:Lcom/huami/watch/transport/DataTransportService$1;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$1$1;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 70
    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$1$1;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-virtual {v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/TransportDataItem;

    .line 71
    .local v2, "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    new-instance v4, Lcom/huami/watch/transport/DataTransportResult;

    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$1$1;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-virtual {v5}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/huami/watch/transport/DataTransportResult;-><init>(Lcom/huami/watch/transport/TransportDataItem;I)V

    .line 73
    .local v4, "transportResult":Lcom/huami/watch/transport/DataTransportResult;
    const-string v5, "Trans-Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnSendResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$1$1;->this$1:Lcom/huami/watch/transport/DataTransportService$1;

    iget-object v5, v5, Lcom/huami/watch/transport/DataTransportService$1;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v5}, Lcom/huami/watch/transport/DataTransportService;->access$100(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, "callbacks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportCallbackListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/ITransportCallbackListener;

    .line 79
    .local v0, "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    :try_start_0
    invoke-interface {v0, v4}, Lcom/huami/watch/transport/ITransportCallbackListener;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Trans-Service"

    const-string v6, "OnSendResultErr"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    instance-of v5, v3, Landroid/os/DeadObjectException;

    if-eqz v5, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 87
    .end local v0    # "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
