.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback$1;
.super Landroid/os/Handler;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 629
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback$1;->this$1:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;

    invoke-static {v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;->access$200(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceStatusCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceStatusListener;->onRemoteDeviceReady(Z)V

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
