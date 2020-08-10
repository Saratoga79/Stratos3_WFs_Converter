.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;
.super Landroid/os/Handler;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 326
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :pswitch_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_1

    const-string v2, "permission"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v1, v3}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;->onSendResult(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 331
    goto :goto_1

    .line 338
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 340
    if-ltz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->d(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;

    .line 343
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$c;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-virtual {v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
