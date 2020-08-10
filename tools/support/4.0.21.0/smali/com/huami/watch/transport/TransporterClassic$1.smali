.class Lcom/huami/watch/transport/TransporterClassic$1;
.super Lcom/huami/watch/transport/ITransportCallbackListener$Stub;
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
    .line 59
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic$1;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportCallbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 6
    .param p1, "result"    # Lcom/huami/watch/transport/DataTransportResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/huami/watch/transport/DataTransportResult;->getDataItem()Lcom/huami/watch/transport/TransportDataItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huami/watch/transport/TransportDataItem;->getCreateTime()J

    move-result-wide v0

    .line 64
    .local v0, "key":J
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$1;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$000(Lcom/huami/watch/transport/TransporterClassic;)Landroid/util/LongSparseArray;

    move-result-object v4

    monitor-enter v4

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$1;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$000(Lcom/huami/watch/transport/TransporterClassic;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/Transporter$DataSendResultCallback;

    .line 66
    .local v2, "listener":Lcom/huami/watch/transport/Transporter$DataSendResultCallback;
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$1;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$000(Lcom/huami/watch/transport/TransporterClassic;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 67
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v2, :cond_1

    .line 69
    sget-boolean v3, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic$1;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v3}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnResultBack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-interface {v2, p1}, Lcom/huami/watch/transport/Transporter$DataSendResultCallback;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V

    .line 74
    :cond_1
    return-void

    .line 67
    .end local v2    # "listener":Lcom/huami/watch/transport/Transporter$DataSendResultCallback;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
