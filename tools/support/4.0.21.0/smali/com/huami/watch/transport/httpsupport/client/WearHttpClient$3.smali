.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;
.super Ljava/lang/Object;
.source "WearHttpClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->generateConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$502(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 200
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v1, v2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$602(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$600(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;

    invoke-direct {v2, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$700(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$700(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;->onServiceOnline()V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$900(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 233
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$1000(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    .line 234
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "WH-APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CLIENT] ==> CLIENT onServiceDisconnected : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] DISCONNECT with host."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CLIENT] ==> CLIENT onServiceDisconnected : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] DISCONNECT with host."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$900(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$1100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$2;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$2;-><init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    return-void
.end method
