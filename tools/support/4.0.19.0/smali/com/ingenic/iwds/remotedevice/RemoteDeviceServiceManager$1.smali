.class Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "RemoteDeviceServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->access$000(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager$1;->this$0:Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;->access$002(Lcom/ingenic/iwds/remotedevice/RemoteDeviceServiceManager;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    .line 56
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 60
    return-void
.end method
