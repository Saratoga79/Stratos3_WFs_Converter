.class Lcom/huami/watch/transport/DataTransportService$2$1;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$2;->registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$2;

.field final synthetic val$listener:Lcom/huami/watch/transport/ITransportDataListener;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$module:Ljava/lang/String;

    iput-object p3, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$listener:Lcom/huami/watch/transport/ITransportDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    const-string v1, "Trans-Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register DataListener, Module : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$listener:Lcom/huami/watch/transport/ITransportDataListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v1, v1, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v1}, Lcom/huami/watch/transport/DataTransportService;->access$300(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$module:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    .local v0, "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportDataListener;>;"
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportDataListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local v0    # "modulesListeners":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/ITransportDataListener;>;"
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v1, v1, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v1}, Lcom/huami/watch/transport/DataTransportService;->access$300(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$module:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$1;->val$listener:Lcom/huami/watch/transport/ITransportDataListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method
