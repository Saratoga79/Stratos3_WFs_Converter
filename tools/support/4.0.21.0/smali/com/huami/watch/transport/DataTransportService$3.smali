.class Lcom/huami/watch/transport/DataTransportService$3;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService;->onDataArrivedInternal(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportService;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$3;->this$0:Lcom/huami/watch/transport/DataTransportService;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$3;->val$object:Ljava/lang/Object;

    check-cast v0, Lcom/huami/watch/transport/TransportDataItem;

    .line 421
    .local v0, "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getModuleName()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "moduleName":Ljava/lang/String;
    iget-object v6, p0, Lcom/huami/watch/transport/DataTransportService$3;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v6}, Lcom/huami/watch/transport/DataTransportService;->access$300(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 427
    .local v4, "moduleListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportDataListener;>;"
    const-string v6, "Trans-Service"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    const-string v6, "Trans-Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnDataArrived : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Listeners : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v6, "Trans-Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getData()Lcom/huami/watch/transport/DataBundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 432
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportDataListener;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/transport/ITransportDataListener;

    .line 435
    .local v3, "listener":Lcom/huami/watch/transport/ITransportDataListener;
    const-string v6, "Trans-Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnDataArrived Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 438
    :try_start_1
    invoke-interface {v3, v0}, Lcom/huami/watch/transport/ITransportDataListener;->onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 441
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 446
    .end local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportDataListener;>;"
    .end local v3    # "listener":Lcom/huami/watch/transport/ITransportDataListener;
    .end local v4    # "moduleListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportDataListener;>;"
    .end local v5    # "moduleName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Trans-Service"

    const-string v7, "OnDataArrivedErr"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
