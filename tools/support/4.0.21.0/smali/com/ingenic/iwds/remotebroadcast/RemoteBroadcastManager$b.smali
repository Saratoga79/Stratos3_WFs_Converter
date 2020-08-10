.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;
.super Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$1;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V

    return-void
.end method


# virtual methods
.method public performReceive(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    return-void
.end method

.method public performSendResult(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "resultCode"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$b;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->e(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 360
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 361
    const-string v2, "permission"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 363
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    return-void
.end method
