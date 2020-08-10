.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;
.super Landroid/os/Handler;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    .line 422
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 423
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 427
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    goto :goto_0

    .line 433
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 434
    const-string v1, "timeout"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 436
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    invoke-static {v1, v0, v2, v3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;J)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;IIJ)V

    goto :goto_0

    .line 449
    :pswitch_4
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    invoke-static {v1, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)V

    goto :goto_0

    .line 453
    :pswitch_5
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->d(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V

    goto :goto_0

    .line 457
    :pswitch_6
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$c;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->e(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
