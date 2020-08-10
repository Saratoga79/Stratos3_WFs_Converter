.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;
.super Landroid/os/Handler;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    .line 285
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;->onCallerError(I)V

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;ILcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V

    goto :goto_0

    .line 302
    :pswitch_3
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastReceiver;)V

    goto :goto_0

    .line 306
    :pswitch_4
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->b(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 310
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;->c(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
