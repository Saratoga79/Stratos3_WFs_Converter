.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;
.super Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchResponse(Lcom/huami/watch/klvp/KlvpResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/huami/watch/klvp/KlvpResponse;

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1454
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1455
    const-string v1, "HmSensorHubManager"

    const-string v2, "send message failed when dispatch klvp response data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_0
    return-void
.end method
