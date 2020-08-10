.class Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;
.super Landroid/os/Handler;
.source "RemoteBroadcastProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    .line 509
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 516
    :pswitch_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    invoke-static {v1, v2, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;ILcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)V

    goto :goto_0

    .line 520
    :pswitch_1
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/remotebroadcast/RemoteIntentFilterInfo;)V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;II)V

    goto :goto_0

    .line 528
    :pswitch_3
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->c(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    goto :goto_0

    .line 532
    :pswitch_4
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->d(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    goto :goto_0

    .line 536
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->e(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    goto :goto_0

    .line 540
    :pswitch_6
    iget-object v1, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    goto :goto_0

    .line 544
    :pswitch_7
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;Ljava/lang/Object;)V

    goto :goto_0

    .line 548
    :pswitch_8
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->f(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    goto :goto_0

    .line 552
    :pswitch_9
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy$a;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->g(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;)V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
