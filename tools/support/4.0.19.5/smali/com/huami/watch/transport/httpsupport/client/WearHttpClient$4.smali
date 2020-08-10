.class Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;
.super Landroid/os/Handler;
.source "WearHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "WH-APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' received msg !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$100(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' received msg !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$4;->this$0:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-static {v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->access$1200(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;Landroid/os/Message;)V

    .line 373
    return-void
.end method
