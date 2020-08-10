.class Lcom/huami/watch/transport/TransporterClassic$3;
.super Lcom/huami/watch/transport/ITransportChannelListener$Stub;
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
    .line 95
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportChannelListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelChanged(Z)V
    .locals 5
    .param p1, "available"    # Z

    .prologue
    .line 98
    sget-boolean v2, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnChannelChanged Available : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2, p1}, Lcom/huami/watch/transport/TransporterClassic;->access$302(Lcom/huami/watch/transport/TransporterClassic;Z)Z

    .line 104
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$400(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$400(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$3;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$400(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/Transporter$ChannelListener;

    .line 107
    .local v1, "listener":Lcom/huami/watch/transport/Transporter$ChannelListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/Transporter$ChannelListener;->onChannelChanged(Z)V

    goto :goto_0

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/transport/Transporter$ChannelListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    return-void
.end method
