.class Lcom/huami/watch/transport/DataTransportService$2$3;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$2;->registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$2;

.field final synthetic val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$module:Ljava/lang/String;

    iput-object p3, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    const-string v1, "Trans-Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register ChannelListener, Module : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v2, v2, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v2}, Lcom/huami/watch/transport/DataTransportService;->access$500(Lcom/huami/watch/transport/DataTransportService;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportChannelListener;->onChannelChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v1, v1, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v1}, Lcom/huami/watch/transport/DataTransportService;->access$600(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$module:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    .local v0, "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v0    # "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v1, v1, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v1}, Lcom/huami/watch/transport/DataTransportService;->access$600(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$module:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$3;->val$listener:Lcom/huami/watch/transport/ITransportChannelListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportChannelListener;>;"
    :cond_1
    return-void

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method
