.class Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBtAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v1}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->b(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->clearRemoteDevices()V

    .line 64
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;->onDiscoveryStarted()V

    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0, v3}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;I)I

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 76
    new-instance v1, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;

    invoke-direct {v1, v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->addRemoteDevice(Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;)V

    .line 79
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;->onDeviceFound(Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;)V

    .line 81
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0, v3}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;I)I

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;->onDiscoveryFinished()V

    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0, v2}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;Z)Z

    .line 88
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;->a:Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;

    invoke-static {v0, v2}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;I)I

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
