.class public final Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;
.super Ljava/lang/Object;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteWakeLock"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
    .param p2, "levelAndFlags"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p2, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->b:I

    .line 347
    iput-object p3, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->c:Ljava/lang/String;

    .line 348
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->b:I

    return v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;Z)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 412
    iput-boolean p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->d:Z

    .line 414
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 417
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 359
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->acquire(J)V

    .line 360
    return-void
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 373
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 374
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 375
    const-string v2, "timeout"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 378
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->d:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;->a(Z)V

    .line 391
    return-void
.end method
