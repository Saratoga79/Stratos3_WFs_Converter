.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;
.super Ljava/lang/Object;
.source "WearHttpClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 206
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "WH-APP"

    const-string v1, "[CLIENT] ==>  HOST DEAD!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-APP"

    const-string v2, "[CLIENT] ==>  HOST DEAD!"

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$700(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$700(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;->onServiceOffline()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3$1;->this$1:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;

    iget-object v0, v0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$3;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$800(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)V

    .line 219
    return-void
.end method
