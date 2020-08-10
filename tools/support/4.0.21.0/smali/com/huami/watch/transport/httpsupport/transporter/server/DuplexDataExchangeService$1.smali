.class Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$1;
.super Ljava/lang/Object;
.source "DuplexDataExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 256
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "WH-SRV"

    const-string v1, "<><><><><>\u53d1\u51fa Service Ready..<><><><><>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    const-string v2, "<><><><><>Host Ready notify Service Ready..<><><><><>"

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$1;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huami.watch.httpsupport.EXCHANGEE_READY_TO ACCEPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    return-void
.end method
