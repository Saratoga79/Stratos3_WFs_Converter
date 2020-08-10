.class Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$2;
.super Ljava/lang/Object;
.source "AutoTransTriggerTransporter.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$DataSendResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->sendTriggerSyncToAssist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter$2;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    .locals 5
    .param p1, "result"    # Lcom/huami/watch/transport/DataTransportResult;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v1, "trans_data"

    const-string v2, "trigger sync data send null result..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/DataTransportResult;->getResultCode()I

    move-result v0

    .line 102
    .local v0, "code":I
    const-string v2, "trans_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger sync data send result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "OK"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILED ,CODE:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/DataTransportResult;->getResultCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
