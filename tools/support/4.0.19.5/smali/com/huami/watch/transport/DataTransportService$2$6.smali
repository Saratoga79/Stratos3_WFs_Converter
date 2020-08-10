.class Lcom/huami/watch/transport/DataTransportService$2$6;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/DataTransportService$2;->unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/DataTransportService$2;

.field final synthetic val$callback:Lcom/huami/watch/transport/ITransportCallbackListener;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService$2;Lcom/huami/watch/transport/ITransportCallbackListener;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->val$callback:Lcom/huami/watch/transport/ITransportCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v0, v0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$700(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->val$callback:Lcom/huami/watch/transport/ITransportCallbackListener;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "Trans-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister SendResultCallback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->val$callback:Lcom/huami/watch/transport/ITransportCallbackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->this$1:Lcom/huami/watch/transport/DataTransportService$2;

    iget-object v0, v0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$700(Lcom/huami/watch/transport/DataTransportService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportService$2$6;->val$callback:Lcom/huami/watch/transport/ITransportCallbackListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    return-void
.end method
