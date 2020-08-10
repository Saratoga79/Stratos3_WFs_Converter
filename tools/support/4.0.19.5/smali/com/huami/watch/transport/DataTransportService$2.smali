.class Lcom/huami/watch/transport/DataTransportService$2;
.super Lcom/huami/watch/transport/ITransportDataService$Stub;
.source "DataTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/DataTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/DataTransportService;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/DataTransportService;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-direct {p0}, Lcom/huami/watch/transport/ITransportDataService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huami/watch/transport/ITransportChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/huami/watch/transport/DataTransportService$2$3;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public registerComponentName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "actionName"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

.method public registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huami/watch/transport/ITransportDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huami/watch/transport/DataTransportService$2$1;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public registersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/huami/watch/transport/ITransportCallbackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$5;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$2$5;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Lcom/huami/watch/transport/ITransportCallbackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$7;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$2$7;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Lcom/huami/watch/transport/TransportDataItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public unregisterChannelListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$4;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$2$4;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public unregisterDataListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$2;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$2$2;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/huami/watch/transport/ITransportCallbackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$2;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$2$6;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$2$6;-><init>(Lcom/huami/watch/transport/DataTransportService$2;Lcom/huami/watch/transport/ITransportCallbackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
