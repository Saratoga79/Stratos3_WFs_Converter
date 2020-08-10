.class Lcom/huami/watch/transport/TransporterClassic$4;
.super Ljava/lang/Object;
.source "TransporterClassic.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;


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
    .line 114
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    sget-boolean v2, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport Service Connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

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

    check-cast v1, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .line 126
    .local v1, "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceConnected(Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
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

    .line 130
    return-void
.end method

.method public onServiceConnectionFailed(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/huami/watch/transport/Transporter$ConnectionResult;

    .prologue
    .line 151
    sget-boolean v2, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport Service Connect Failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

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

    check-cast v1, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .line 158
    .local v1, "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceConnectionFailed(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V

    goto :goto_0

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
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

    .line 162
    return-void
.end method

.method public onServiceDisconnected(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/huami/watch/transport/Transporter$ConnectionResult;

    .prologue
    .line 134
    sget-boolean v2, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport Service Disconnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic$4;->this$0:Lcom/huami/watch/transport/TransporterClassic;

    invoke-static {v2}, Lcom/huami/watch/transport/TransporterClassic;->access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;

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

    check-cast v1, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .line 143
    .local v1, "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceDisconnected(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V

    goto :goto_0

    .line 146
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
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

    .line 147
    return-void
.end method
