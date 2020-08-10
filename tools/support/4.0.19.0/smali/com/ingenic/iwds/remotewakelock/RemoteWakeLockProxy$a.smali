.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;
.super Landroid/os/Handler;
.source "RemoteWakeLockProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    .line 485
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 486
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 490
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 492
    :pswitch_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    invoke-static {v1, v2, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;ILcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;I)V

    goto :goto_0

    .line 500
    :pswitch_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    goto :goto_0

    .line 504
    :pswitch_3
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/CreateInfo;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/remotewakelock/CreateInfo;)V

    goto :goto_0

    .line 508
    :pswitch_4
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    goto :goto_0

    .line 512
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :pswitch_6
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V

    goto :goto_0

    .line 520
    :pswitch_7
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V

    goto :goto_0

    .line 524
    :pswitch_8
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;II)V

    goto :goto_0

    .line 528
    :pswitch_9
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->d(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V

    goto :goto_0

    .line 532
    :pswitch_a
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->e(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;)V

    goto :goto_0

    .line 536
    :pswitch_b
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;Z)V

    goto :goto_0

    .line 490
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
