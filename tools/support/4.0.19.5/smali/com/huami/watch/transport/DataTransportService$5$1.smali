.class Lcom/huami/watch/transport/DataTransportService$5$1;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$5;->onSendResult(Lcom/huami/watch/transport/DataTransportResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$5;

.field final synthetic val$result:Lcom/huami/watch/transport/DataTransportResult;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$5;Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->this$1:Lcom/huami/watch/transport/DataTransportService$5;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 466
    const-string v3, "Trans-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLE Send Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-virtual {v5}, Lcom/huami/watch/transport/DataTransportResult;->getDataItem()Lcom/huami/watch/transport/TransportDataItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->this$1:Lcom/huami/watch/transport/DataTransportService$5;

    iget-object v3, v3, Lcom/huami/watch/transport/DataTransportService$5;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v3}, Lcom/huami/watch/transport/DataTransportService;->access$100(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    .local v1, "callbacks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportCallbackListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/ITransportCallbackListener;

    .line 472
    .local v0, "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$5$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-interface {v0, v3}, Lcom/huami/watch/transport/ITransportCallbackListener;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v2

    .line 474
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 475
    const-string v3, "Trans-Service"

    const-string v4, "OnSendResultException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 481
    .end local v0    # "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
