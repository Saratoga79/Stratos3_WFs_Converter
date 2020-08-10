.class Lcom/huami/watch/transport/DataTransportService$5;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService;->onSendResultInternal(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportService;

.field final synthetic val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$5;->this$0:Lcom/huami/watch/transport/DataTransportService;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$5;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$5;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-virtual {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/huami/watch/transport/TransportDataItem;

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$5;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-virtual {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getTransferedObject()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    check-cast v0, Lcom/huami/watch/transport/TransportDataItem;

    .line 496
    .restart local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    :cond_0
    if-nez v0, :cond_1

    .line 497
    const-string v2, "Trans-Service"

    const-string v3, "OnSendResult : DataItem is Null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v1, Lcom/huami/watch/transport/DataTransportResult;

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$5;->val$result:Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-virtual {v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/huami/watch/transport/DataTransportResult;-><init>(Lcom/huami/watch/transport/TransportDataItem;I)V

    .line 503
    .local v1, "transportResult":Lcom/huami/watch/transport/DataTransportResult;
    const-string v2, "Trans-Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSendResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$5;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v2, v1}, Lcom/huami/watch/transport/DataTransportService;->access$800(Lcom/huami/watch/transport/DataTransportService;Lcom/huami/watch/transport/DataTransportResult;)V

    goto :goto_0
.end method
