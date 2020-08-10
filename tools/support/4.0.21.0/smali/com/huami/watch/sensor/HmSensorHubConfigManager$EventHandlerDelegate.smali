.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
    .locals 4

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iget-object v1, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 1172
    new-instance v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;

    const-string v2, "SensorHubThread"

    invoke-direct {v1, p0, v2, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;Ljava/lang/String;Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v1, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1181
    iget-object v1, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1182
    iget-object v2, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 1183
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$000(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    :try_start_1
    iget-object v1, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1190
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1192
    :cond_1
    iget-object v1, p1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1194
    .local v0, "looper":Landroid/os/Looper;
    const-string v1, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HmSensorHubManager use the thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to handle callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owner process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threads id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz v0, :cond_2

    .line 1200
    new-instance v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$2;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;Landroid/os/Looper;Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 1408
    :goto_1
    return-void

    .line 1190
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1406
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
