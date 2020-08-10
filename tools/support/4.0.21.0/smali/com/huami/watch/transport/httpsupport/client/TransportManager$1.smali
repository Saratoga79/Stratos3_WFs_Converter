.class Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;
.super Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/TransportManager;->initClient(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    invoke-direct {p0, p2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dataFromHost(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataRev"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->dataFromHost(Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->from(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v1

    .line 136
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    invoke-virtual {v2, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->addActionAndExecute(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v2, "d-path"

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "dpath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    invoke-static {v2, v0, v1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/client/TransportManager;)Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v2, :cond_3

    .line 151
    const-string v2, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataArrival for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-APP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataArrival for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->access$100(Lcom/huami/watch/transport/httpsupport/client/TransportManager;)Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;->onDataArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 165
    new-instance v2, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;-><init>(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->getImportanceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;->this$0:Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 171
    return-void
.end method
