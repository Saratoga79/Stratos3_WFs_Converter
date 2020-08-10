.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 1
    .param p1, "unexpected"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Z)V

    .line 83
    return-void
.end method
