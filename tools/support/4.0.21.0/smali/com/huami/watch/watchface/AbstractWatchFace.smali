.class public abstract Lcom/huami/watch/watchface/AbstractWatchFace;
.super Landroid/support/wearable/watchface/CanvasWatchFaceService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$AlarmDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CaloriesDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CustomDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$FloorDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TimeDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$XdripDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;,
        Lcom/huami/watch/watchface/AbstractWatchFace$FrameUpdateListener;,
        Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;
    }
.end annotation


# static fields
.field protected static final INTERACTIVE_UPDATE_RATE_MS:J

.field private static final QUAD:Landroid/view/animation/Interpolator;

.field private static final QUART:Landroid/view/animation/Interpolator;

.field protected static final TAG:Ljava/lang/String;

.field private static sCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlptService:Landroid/content/Intent;

.field private mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;

.field private slptScreenManager:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lcom/huami/watch/watchface/AbstractWatchFace;->sCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmWatchFace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huami/watch/watchface/AbstractWatchFace;->sCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/huami/watch/watchface/AbstractWatchFace;->sCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/huami/watch/watchface/AbstractWatchFace;->INTERACTIVE_UPDATE_RATE_MS:J

    new-instance v0, Lcom/huami/watch/watchface/AbstractWatchFace$1;

    invoke-direct {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$1;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->QUART:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/huami/watch/watchface/AbstractWatchFace$2;

    invoke-direct {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$2;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->QUAD:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptService:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/AbstractWatchFace;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->slptScreenManager:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    return-object p0
.end method

.method static synthetic access$4700()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->QUART:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$5300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->QUAD:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method protected notifyStatusBarPosition(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/util/Util;->notifyStatusBarPositionUpdated(Landroid/content/Context;F)V

    return-void
.end method

.method protected notifyStatusBarPosition(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/huami/watch/watchface/util/Util;->notifyStatusBarPositionUpdated(Landroid/content/Context;FF)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService;->onCreate()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.watchface.SlptWatchService.leave_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.watchface.SlptWatchService.enable.otherScreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.watchface.SlptWatchService.disable.otherScreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.intent.action.WATCHFACE_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->slptScreenManager:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    sget v0, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    add-int/2addr v0, v1

    sput v0, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->slptClockClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptService:Landroid/content/Intent;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->slptScreenManager:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->bindService()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->slptClockClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->setCurrentSlpt(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start SLPT Service [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->slptClockClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    sget v0, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptService:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->slptClockClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->getCurrentSlpt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->stopService(Landroid/content/Intent;)Z

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop SLPT Service [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;->slptClockClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->notifyStatusBarPosition(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected abstract slptClockClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huami/watch/watchface/AbstractSlptClock;",
            ">;"
        }
    .end annotation
.end method
