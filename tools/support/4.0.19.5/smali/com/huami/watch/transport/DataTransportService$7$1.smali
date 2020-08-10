.class Lcom/huami/watch/transport/DataTransportService$7$1;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$7;->onSendResult(Lcom/huami/watch/transport/DataTransportResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$7;

.field final synthetic val$result:Lcom/huami/watch/transport/DataTransportResult;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$7;Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->this$1:Lcom/huami/watch/transport/DataTransportService$7;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 676
    const-string v3, "Trans-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLE Send Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-virtual {v5}, Lcom/huami/watch/transport/DataTransportResult;->getDataItem()Lcom/huami/watch/transport/TransportDataItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->this$1:Lcom/huami/watch/transport/DataTransportService$7;

    iget-object v3, v3, Lcom/huami/watch/transport/DataTransportService$7;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v3}, Lcom/huami/watch/transport/DataTransportService;->access$700(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 679
    .local v1, "callbacks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportCallbackListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/ITransportCallbackListener;

    .line 682
    .local v0, "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$7$1;->val$result:Lcom/huami/watch/transport/DataTransportResult;

    invoke-interface {v0, v3}, Lcom/huami/watch/transport/ITransportCallbackListener;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    const-string v3, "Trans-Service"

    const-string v4, "OnSendResultException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 691
    .end local v0    # "callback":Lcom/huami/watch/transport/ITransportCallbackListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
