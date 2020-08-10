.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StepDataProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;
    }
.end annotation


# instance fields
.field private mCurStepCount:I

.field private mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mManager:Landroid/hardware/SensorManager;

.field private mStepSensor:Landroid/hardware/Sensor;

.field private mTotalStepTarget:I

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 3

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mStepSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    const/4 v1, 0x0

    iput v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mCurStepCount:I

    const/16 v1, 0x1f40

    iput v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mTotalStepTarget:I

    iget-object v1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mStepSensor:Landroid/hardware/Sensor;

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    invoke-direct {v1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.huami.watch.action.SENSOR_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$2200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mCurStepCount:I

    return p0
.end method

.method static synthetic access$2202(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mTotalStepTarget:I

    return p0
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "huami.watch.health.config"

    invoke-static {v0, v1}, Lcom/huami/watch/companion/settings/WatchSettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "step_target"

    const/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mTotalStepTarget:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->unregister()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method register()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mStepSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->updateTotalStepCount()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mStepSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "registerStepListener step sensor"

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerStepListener error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mStepSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method requestData()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mCurStepCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mTotalStepTarget:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mCurStepCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mTotalStepTarget:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v1, v0}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "unregisterStepListener step sensor"

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterStepListener error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
