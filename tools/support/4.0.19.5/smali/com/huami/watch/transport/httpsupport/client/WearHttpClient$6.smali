.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;
.super Ljava/lang/Object;
.source "WearHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->tryToSendCachedItemToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 490
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    .line 491
    .local v0, "cacher":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    const/4 v4, 0x0

    invoke-virtual {v0, v9, v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(II)Ljava/util/List;

    move-result-object v3

    .line 492
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/model/DataItem;>;"
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v4, :cond_0

    .line 493
    const-string v6, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t>>>>>cached client things will launch : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_1

    move-object v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v6, "WH-APP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t\t>>>>>cached client things will launch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz v3, :cond_4

    .line 502
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 513
    .local v2, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 514
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I

    goto :goto_2

    .line 493
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 518
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$6;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->deleteByState(I)Z

    .line 520
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method
