.class Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "RemoteSensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$000(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$002(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;Lcom/ingenic/iwds/smartsense/IRemoteSensorService;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    .line 81
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;->access$100(Lcom/ingenic/iwds/smartsense/RemoteSensorServiceManager;)V

    .line 86
    return-void
.end method
