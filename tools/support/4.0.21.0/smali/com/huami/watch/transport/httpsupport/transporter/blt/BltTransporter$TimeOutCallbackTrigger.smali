.class Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;
.super Ljava/lang/Object;
.source "BltTransporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeOutCallbackTrigger"
.end annotation


# instance fields
.field item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

.field onTheWay:Z

.field responseListener:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 1
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p3, "responseListener"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->onTheWay:Z

    .line 442
    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .line 443
    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->responseListener:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .line 444
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 450
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_1

    .line 451
    const-string v0, "WH-BLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Found Time Out Trigger For:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " . IGNORED."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not Found Time Out Trigger For:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " . IGNORED."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v0, :cond_3

    .line 464
    const-string v0, "WH-BLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackTrigger deployed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackTrigger deployed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->onTheWay:Z

    .line 473
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->responseListener:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$200(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    goto/16 :goto_0
.end method
