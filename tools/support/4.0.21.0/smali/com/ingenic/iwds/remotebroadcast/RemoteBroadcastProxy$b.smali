.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;
.super Ljava/lang/Object;
.source "RemoteBroadcastProxy.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$1;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    return-void
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Z)Z

    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->sendEmptyMessage(I)Z

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->sendEmptyMessage(I)Z

    .line 466
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 0
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 456
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 484
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 481
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 2
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    return-void
.end method
