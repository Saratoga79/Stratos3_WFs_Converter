.class Lcom/huami/watch/transport/DataTransportService$1;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


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
    .line 74
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$1;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$1;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/DataTransportService;->access$000(Lcom/huami/watch/transport/DataTransportService;Z)V

    .line 88
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$1;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/DataTransportService;->access$200(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 5
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const-string v0, "Trans-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLinkConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz p2, :cond_0

    .line 79
    const-string v0, "0013"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "connected"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/huami/watch/wearubc/UbcInterface;->recordPropertyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "0013"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "disconnected"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/huami/watch/wearubc/UbcInterface;->recordPropertyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 1
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$1;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/DataTransportService;->access$100(Lcom/huami/watch/transport/DataTransportService;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 93
    return-void
.end method
