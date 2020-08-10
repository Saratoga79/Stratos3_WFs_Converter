.class Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;
.super Ljava/lang/Object;
.source "BltTransporter.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$DataSendResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

.field final synthetic val$callbackTrigger:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

.field final synthetic val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

.field final synthetic val$response:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$callbackTrigger:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

    iput-object p4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$response:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 6
    .param p1, "dataTransportResult"    # Lcom/huami/watch/transport/DataTransportResult;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/huami/watch/transport/DataTransportResult;->getResultCode()I

    move-result v0

    .line 214
    .local v0, "code":I
    new-instance v1, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;-><init>(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    .line 215
    .local v1, "dataParser":Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1, v2, v0}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->bleSendResText(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$callbackTrigger:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

    iget-boolean v2, v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;->onTheWay:Z

    if-nez v2, :cond_2

    .line 217
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbackTrigger.onTheWay NOT on the way:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackTrigger.onTheWay NOT on the way:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$100()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$callbackTrigger:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$response:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    invoke-static {v2, v3, v0, v4}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$200(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    .line 249
    :goto_0
    if-nez v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->lookSideBlt()V

    .line 252
    :cond_1
    return-void

    .line 231
    :cond_2
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$100()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$callbackTrigger:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_3

    .line 234
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbackTrigger.onTheWay ON the way.....SHIT.....:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackTrigger.onTheWay ON the way.....SHIT.....:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$dataItem:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;->val$response:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    invoke-static {v2, v3, v0, v4}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->access$200(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    goto :goto_0
.end method
