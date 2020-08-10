.class Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "SensorServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/smartsense/SensorServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->access$000(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)Lcom/ingenic/iwds/smartsense/ISensorService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/smartsense/ISensorService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/smartsense/ISensorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/ISensorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->access$002(Lcom/ingenic/iwds/smartsense/SensorServiceManager;Lcom/ingenic/iwds/smartsense/ISensorService;)Lcom/ingenic/iwds/smartsense/ISensorService;

    .line 136
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorServiceManager$1;->this$0:Lcom/ingenic/iwds/smartsense/SensorServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/SensorServiceManager;->access$100(Lcom/ingenic/iwds/smartsense/SensorServiceManager;)V

    .line 141
    return-void
.end method
