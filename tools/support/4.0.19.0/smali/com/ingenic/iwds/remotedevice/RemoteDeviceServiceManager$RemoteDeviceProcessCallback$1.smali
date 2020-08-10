.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;
.super Landroid/os/Handler;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 662
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 664
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;

    .line 665
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    move-result-object v1

    iget-wide v2, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;->availSize:J

    iget-wide v4, v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$MemoryInfoMsg;->totalSize:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;->onResponseSystemMemoryInfo(JJ)V

    goto :goto_0

    .line 670
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    iget-object v0, v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->processInfoList:Ljava/util/List;

    .line 672
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    move-result-object v1

    .line 673
    invoke-interface {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;->onResponseRunningAppProcessInfo(Ljava/util/List;)V

    goto :goto_0

    .line 677
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;->access$300(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceProcessCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceProcessListener;->onDoneKillProcess(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
