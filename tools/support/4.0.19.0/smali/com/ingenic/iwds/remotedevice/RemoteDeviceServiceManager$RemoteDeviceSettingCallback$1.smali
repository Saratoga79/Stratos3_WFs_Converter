.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;
.super Landroid/os/Handler;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 735
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 736
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 738
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 750
    :goto_0
    return-void

    .line 740
    :pswitch_0
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;->onDoneSetting(II)V

    goto :goto_0

    .line 744
    :pswitch_1
    iget-object v2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    invoke-static {v2}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;->onGetSetting(II)V

    goto :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
