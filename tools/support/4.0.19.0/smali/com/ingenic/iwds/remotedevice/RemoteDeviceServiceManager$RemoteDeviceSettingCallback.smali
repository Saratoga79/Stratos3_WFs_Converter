.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;
.super Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback$Stub;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDeviceSettingCallback"
.end annotation


# instance fields
.field private m_SettingListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

.field private m_handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback$Stub;-><init>()V

    .line 732
    new-instance v0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback$1;-><init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->m_handler:Landroid/os/Handler;

    .line 729
    iput-object p2, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->m_SettingListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    .line 730
    return-void
.end method

.method static synthetic access$400(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;)Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;
    .locals 1
    .param p0, "x0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->m_SettingListener:Lcom/ingenic/iwds/remotedevice/RemoteDeviceSettingListener;

    return-object v0
.end method


# virtual methods
.method public onDoneSetting(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 758
    return-void
.end method

.method public onGetSetting(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$RemoteDeviceSettingCallback;->m_handler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 765
    return-void
.end method
