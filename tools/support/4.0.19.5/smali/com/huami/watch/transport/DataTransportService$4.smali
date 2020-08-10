.class Lcom/huami/watch/transport/DataTransportService$4;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService;->onChannelAvailableInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportService;

.field final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService;Z)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$4;->this$0:Lcom/huami/watch/transport/DataTransportService;

    iput-boolean p2, p0, Lcom/huami/watch/transport/DataTransportService$4;->val$isAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 467
    const-string v5, "Trans-Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnChannelAvailable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/huami/watch/transport/DataTransportService$4;->val$isAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, p0, Lcom/huami/watch/transport/DataTransportService$4;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v5}, Lcom/huami/watch/transport/DataTransportService;->access$600(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 470
    .local v4, "moduleListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 471
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/transport/ITransportChannelListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    .local v3, "listener":Lcom/huami/watch/transport/ITransportChannelListener;
    :try_start_1
    iget-boolean v5, p0, Lcom/huami/watch/transport/DataTransportService$4;->val$isAvailable:Z

    invoke-interface {v3, v5}, Lcom/huami/watch/transport/ITransportChannelListener;->onChannelChanged(Z)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 477
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 480
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    .end local v3    # "listener":Lcom/huami/watch/transport/ITransportChannelListener;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Trans-Service"

    const-string v6, "OnChannelChangedErr"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "moduleListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    :cond_1
    return-void
.end method
