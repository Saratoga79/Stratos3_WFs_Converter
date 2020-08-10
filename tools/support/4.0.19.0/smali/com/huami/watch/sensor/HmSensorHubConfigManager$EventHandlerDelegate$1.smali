.class Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;
.super Landroid/os/HandlerThread;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

.field final synthetic val$this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;Ljava/lang/String;Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    iput-object p3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;->val$this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 1174
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 1175
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    iget-object v1, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->access$002(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Z)Z

    .line 1177
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate$1;->this$1:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;->this$0:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    iget-object v0, v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1178
    monitor-exit v1

    .line 1179
    return-void

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
