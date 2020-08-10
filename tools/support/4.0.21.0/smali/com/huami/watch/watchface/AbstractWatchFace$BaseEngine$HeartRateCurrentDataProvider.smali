.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartRateCurrentDataProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;
    }
.end annotation


# instance fields
.field private mGaugeStatus:I

.field private mGaugedResult:I

.field private mHeartrateListener:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

.field private mHeartrateSensor:Landroid/hardware/Sensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 3

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    iget-object v1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateSensor:Landroid/hardware/Sensor;

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateListener:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    invoke-direct {v1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0xa

    const-string v1, "watchface_heartrate_lock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$3400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    return p0
.end method

.method static synthetic access$3402(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    return p1
.end method

.method static synthetic access$3500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->switchState(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const-wide/16 v1, 0x55f0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private acquireWakeLock_14()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method private gaugeOp(Z)V
    .locals 3

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "REG"

    goto :goto_0

    :cond_0
    const-string v2, "UNreg"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " heartrate sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateListener:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;->resetAccuracy()V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateListener:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "heartrate sensor register"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->resetTimeout()V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    invoke-virtual {p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mHeartrateListener:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "heartrate sensor unregister"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    :goto_1
    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->switchState(I)V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "heart, resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    invoke-virtual {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mUiUpdateHandler:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->acquireWakeLock()V

    return-void
.end method

.method private switchState(I)V
    .locals 6

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handlerstatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/16 v3, 0x10

    invoke-static {p1, v3, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    iget p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->releaseWakeLock()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->gaugeOp(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->acquireWakeLock_14()V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->unregister()V

    return-void
.end method

.method register()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getLastHeartRato(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->gaugeOp(Z)V

    return-void
.end method

.method requestData()V
    .locals 0

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 0

    return-void
.end method

.method unregister()V
    .locals 2

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->mGaugedResult:I

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->saveLastHeartRato(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;->gaugeOp(Z)V

    return-void
.end method
