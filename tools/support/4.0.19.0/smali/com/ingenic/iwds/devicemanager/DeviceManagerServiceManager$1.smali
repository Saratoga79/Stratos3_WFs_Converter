.class Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "DeviceManagerServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;->a:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;->a:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;->a:Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/devicemanager/IDeviceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;)Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    .line 50
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 54
    return-void
.end method
