.class Lcom/huami/watch/transport/DataTransportService$6;
.super Ljava/lang/Object;
.source "DataTransportService.java"

# interfaces
.implements Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;


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
    .line 599
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportService$6;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 642
    return-void
.end method

.method public onMtuChanged(I)V
    .locals 0
    .param p1, "mtu"    # I

    .prologue
    .line 647
    return-void
.end method

.method public onReceivedData(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 602
    const-string v3, "Trans-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnReceived McuData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_0
    invoke-static {p2}, Lcom/huami/watch/util/BLEDataSplit;->receiveData([B)[B

    move-result-object v2

    .line 605
    .local v2, "receivedData":[B
    if-eqz v2, :cond_0

    .line 606
    invoke-static {v2}, Lcom/huami/watch/util/ZipUtil;->unGZip([B)[B

    move-result-object v2

    .line 608
    sget-object v3, Lcom/huami/watch/transport/TransportDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/ingenic/iwds/utils/serializable/ParcelableUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/TransportDataItem;

    .line 609
    .local v0, "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    const-string v4, "Trans-Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnReceived TransportDataItem: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/huami/watch/util/BytesUtil;->log([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz v0, :cond_0

    .line 612
    iget-object v3, p0, Lcom/huami/watch/transport/DataTransportService$6;->this$0:Lcom/huami/watch/transport/DataTransportService;

    invoke-static {v3, v0}, Lcom/huami/watch/transport/DataTransportService;->access$200(Lcom/huami/watch/transport/DataTransportService;Ljava/lang/Object;)V

    .line 637
    .end local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    .end local v2    # "receivedData":[B
    :cond_0
    :goto_1
    return-void

    .line 609
    .restart local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    .restart local v2    # "receivedData":[B
    :cond_1
    const-string v3, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    .end local v0    # "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    .end local v2    # "receivedData":[B
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
