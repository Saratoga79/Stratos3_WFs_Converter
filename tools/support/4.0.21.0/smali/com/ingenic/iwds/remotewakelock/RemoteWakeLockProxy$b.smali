.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;
.super Ljava/lang/Object;
.source "RemoteWakeLockProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$1;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Z)Z

    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 460
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 450
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 480
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 477
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    return-void
.end method
