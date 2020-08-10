.class Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;
.super Ljava/lang/Object;
.source "DeviceManagerProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/common/api/ServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->connect()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)Lcom/ingenic/iwds/common/api/ServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->disconnect()V

    goto :goto_0
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 513
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    check-cast p1, Ljava/io/File;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1000(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/io/File;)V

    .line 577
    :goto_0
    return-void

    .line 518
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;

    .line 521
    .end local p1    # "object":Ljava/lang/Object;
    iget v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1600(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V

    goto :goto_0

    .line 523
    :pswitch_2
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    goto :goto_0

    .line 527
    :pswitch_3
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1200(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    goto :goto_0

    .line 531
    :pswitch_4
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1300(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;)V

    goto :goto_0

    .line 535
    :pswitch_5
    iget-object v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    .line 536
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1400(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_6
    iget-object v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    .line 541
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1500(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :pswitch_7
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1700(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    goto :goto_0

    .line 554
    :pswitch_8
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1800(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    goto :goto_0

    .line 558
    :pswitch_9
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$1900(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;)V

    goto :goto_0

    .line 562
    :pswitch_a
    iget-object v0, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->packageName:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$2000(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :pswitch_b
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->subType:I

    iget v2, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->value:I

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$2100(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;II)V

    goto :goto_0

    .line 571
    :pswitch_c
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy$2;->this$0:Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;

    iget v1, p1, Lcom/ingenic/iwds/remotedevice/RemoteDeviceManagerInfo$RemoteRequest;->subType:I

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;->access$2200(Lcom/ingenic/iwds/remotedevice/DeviceManagerProxy;I)V

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 492
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 587
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 582
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send failed, error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    :cond_0
    return-void
.end method
