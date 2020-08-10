.class Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;
.super Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;
.source "RemoteWakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;


# direct methods
.method private constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$1;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)V

    return-void
.end method


# virtual methods
.method public performAcquireResult(IIJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "resultCode"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 311
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    return-void
.end method

.method public performAvailableChanged(Z)V
    .locals 5
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v4, 0x5

    .line 316
    if-nez p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->c(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$RemoteWakeLock;

    .line 323
    iget-object v3, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager$a;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;

    invoke-static {v3}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;->b(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
