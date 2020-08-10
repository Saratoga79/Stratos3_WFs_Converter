.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;
.super Lcom/huami/watch/sensor/IDataDispatcher$Stub;
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
    .line 1424
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Lcom/huami/watch/sensor/IDataDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchData(JLcom/huami/watch/sensor/HealthSensorHistoryData;)V
    .locals 7
    .param p1, "sessionId"    # J
    .param p3, "data"    # Lcom/huami/watch/sensor/HealthSensorHistoryData;

    .prologue
    .line 1426
    const/4 v2, 0x0

    .line 1427
    .local v2, "localData":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    if-eqz p3, :cond_0

    .line 1428
    new-instance v2, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .end local v2    # "localData":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    iget v4, p3, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    iget-object v5, p3, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    invoke-direct {v2, v4, v5}, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;-><init>(I[B)V

    .line 1430
    .restart local v2    # "localData":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    :cond_0
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;

    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {v0, v4, p1, p2, v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;JLcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)V

    .line 1431
    .local v0, "dataInfo":Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1433
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1434
    const/4 v1, 0x0

    .line 1435
    .local v1, "dataListener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1436
    :try_start_0
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v4, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;

    move-result-object v1

    .line 1437
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    const-string v4, "HmSensorHubManager"

    const-string v5, "callback thread has exit when dispatch mHealthData"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    if-eqz v1, :cond_2

    .line 1440
    const-wide/16 v4, -0x2

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;->onDataReady(JLcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)V

    .line 1441
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-static {v4, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$600(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)V

    .line 1446
    .end local v1    # "dataListener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    :cond_1
    :goto_0
    return-void

    .line 1437
    .restart local v1    # "dataListener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1443
    :cond_2
    const-string v4, "HmSensorHubManager"

    const-string v5, "null listener!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
