.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;
.super Landroid/os/Handler;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    .line 468
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 469
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 475
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 476
    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 478
    iget-object v1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$b;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;JI)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
