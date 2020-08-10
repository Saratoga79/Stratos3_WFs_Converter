.class Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;
.super Landroid/os/Handler;
.source "DuplexDataExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->initExchangeHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7fffffec

    if-ne v4, v5, :cond_0

    .line 293
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-static {v4, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$100(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-static {v4, v2}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$200(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    const-wide/16 v6, 0x7d0

    invoke-static {v4, v2, v6, v7}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$300(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;J)V

    .line 337
    :goto_0
    return-void

    .line 304
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 305
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "@@@inner-key[![[--][pkg]"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .restart local v2    # "pkg":Ljava/lang/String;
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_1

    .line 307
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===WearService \u6536\u5230\u4e00\u4e2a\u4ece: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' \u53d1\u6765\u7684\u8bf7\u6c42<<<<<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===WearService \u6536\u5230\u4e00\u4e2a\u4ece: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' \u53d1\u6765\u7684\u8bf7\u6c42<<<<<<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_2

    .line 318
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DataService] ==> NO PKG !! IGNORE. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DataService] ==> NO PKG !! IGNORE. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_3
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 331
    .local v0, "client":Landroid/os/Messenger;
    if-nez v0, :cond_4

    .line 332
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 333
    .local v3, "replyTo":Landroid/os/Messenger;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v3    # "replyTo":Landroid/os/Messenger;
    :cond_4
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-static {v4, v2, v1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->access$500(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
