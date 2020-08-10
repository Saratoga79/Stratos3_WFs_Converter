.class Lcom/huami/watch/transport/DataTransportService$7;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Lcom/huami/watch/ble/listener/BLETransforListener;


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
    .line 650
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$7;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$7;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/DataTransportService;->access$000(Lcom/huami/watch/transport/DataTransportService;Z)V

    .line 706
    return-void
.end method

.method public onReceiveBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 660
    return-void
.end method

.method public onSendResult(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 2
    .param p1, "result"    # Lcom/huami/watch/transport/DataTransportResult;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$7;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0}, Lcom/huami/watch/transport/DataTransportService;->access$400(Lcom/huami/watch/transport/DataTransportService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/DataTransportService$7$1;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/DataTransportService$7$1;-><init>(Lcom/huami/watch/transport/DataTransportService$7;Lcom/huami/watch/transport/DataTransportResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public recevierBLEData(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 654
    const-string v0, "Trans-Service"

    const-string v1, "mBLETransforListener recevierBLEData."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportService$7;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/DataTransportService;->access$200(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V

    .line 656
    return-void
.end method
