.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;
.super Ljava/lang/Object;
.source "WearHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

.field final synthetic val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 435
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "WH-APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACHED in Client :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACHED in Client :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    .line 443
    .local v0, "cacher":Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 444
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$5;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 445
    return-void
.end method
