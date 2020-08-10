.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/IBinder;)V

    .line 94
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Z)V

    .line 89
    return-void
.end method
