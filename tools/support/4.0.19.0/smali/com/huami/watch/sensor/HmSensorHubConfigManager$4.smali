.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;
.super Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;
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
    .line 1507
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchConfigFinish(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1510
    new-instance v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;

    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 1511
    .local v1, "obj":Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1513
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1514
    return-void
.end method
