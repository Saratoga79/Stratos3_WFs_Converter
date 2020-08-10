.class Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "ConnectionServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;->a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;->a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)Lcom/ingenic/iwds/uniconnect/IConnectionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;->a:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/uniconnect/IConnectionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;Lcom/ingenic/iwds/uniconnect/IConnectionService;)Lcom/ingenic/iwds/uniconnect/IConnectionService;

    .line 56
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 61
    return-void
.end method
