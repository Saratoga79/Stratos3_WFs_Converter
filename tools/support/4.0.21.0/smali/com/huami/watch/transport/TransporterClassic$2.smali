.class Lcom/huami/watch/transport/TransporterClassic$2;
.super Lcom/huami/watch/transport/ITransportDataListener$Stub;
.source "TransporterClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/TransporterClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/TransporterClassic;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/TransporterClassic;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic$2;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 6
    .param p1, "dataItem"    # Lcom/huami/watch/transport/TransportDataItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$2;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnDataReceived Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$2;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$2;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$2;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/Transporter$DataListener;

    .line 88
    .local v2, "listener":Lcom/huami/watch/transport/Transporter$DataListener;
    invoke-interface {v2, p1}, Lcom/huami/watch/transport/Transporter$DataListener;->onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V

    goto :goto_0

    .line 91
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/huami/watch/transport/Transporter$DataListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void
.end method
