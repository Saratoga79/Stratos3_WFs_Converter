.class public Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$ClearSportReceiver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$lastHeartrateObserver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$todayDistanceObserver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$totalDistanceObserver;,
        Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;
    }
.end annotation


# static fields
.field public static final CONTENT_HEART_URI:Landroid/net/Uri;

.field public static final MEASUREMENT_UNIT:Landroid/net/Uri;

.field public static final STEP_URI:Landroid/net/Uri;

.field public static final TODAY_DISTANCE_URI:Landroid/net/Uri;

.field public static final TOTAL_DISTANCE_URI:Landroid/net/Uri;

.field private static currentHeartRate:I

.field private static currentSafeHeartRate:I

.field private static currentTargetStep:I

.field private static currentTodayDistance:F

.field private static currentTotalDistance:F

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field private mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;

.field private mlastHeartrateOberver:Landroid/database/ContentObserver;

.field private mmeasurementObserver:Landroid/database/ContentObserver;

.field private mstepOberver:Landroid/database/ContentObserver;

.field private mtodayDistanceOberver:Landroid/database/ContentObserver;

.field private mtotalDistanceOberver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.huami.watch.companion.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->STEP_URI:Landroid/net/Uri;

    const-string v0, "content://settings/secure/sport_total_distance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->TOTAL_DISTANCE_URI:Landroid/net/Uri;

    const-string v0, "content://settings/secure/sport_today_distance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->TODAY_DISTANCE_URI:Landroid/net/Uri;

    const-string v0, "content://settings/secure/measurement"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->MEASUREMENT_UNIT:Landroid/net/Uri;

    const-string v0, "content://com.huami.watch.health.heartdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->CONTENT_HEART_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mstepOberver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$todayDistanceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$todayDistanceObserver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtodayDistanceOberver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$totalDistanceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$totalDistanceObserver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtotalDistanceOberver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$lastHeartrateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$lastHeartrateObserver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mlastHeartrateOberver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mmeasurementObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-void
.end method

.method static synthetic access$100()F
    .locals 1

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    return v0
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getDistanceValue()V

    return-void
.end method

.method static synthetic access$102(F)F
    .locals 0

    sput p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    return p0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->createNewAlarm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()F
    .locals 1

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0

    sput p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    return v0
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getTargetStep(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    return p0
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getCurrentSafeHeartRate(Landroid/content/Context;)V

    return-void
.end method

.method private static createNewAlarm(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$ClearSportReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string p0, "HmSlptLockScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send to start update broadcase next time  :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCurrentSafeHeartRate(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "huami.watch.sport.config"

    invoke-static {v0, v1}, Lcom/huami/watch/companion/settings/WatchSettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb4

    if-nez v0, :cond_0

    sput v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "init current safe heartrate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setSafeHeartrate(I)Z

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    :goto_0
    invoke-static {p1, v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setCurrentSafeHeartrate(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "safe_heartrate_high"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    if-gez v0, :cond_1

    sput v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "get config current safe heartrate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "init current safe heartrate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setSafeHeartrate(I)Z

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private getDistanceValue()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_total_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_today_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "request todayDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentTotalDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->setSportValue(FF)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getTodaySportDistance(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getTotalSportDistance(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    const-string v0, "HmSlptLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request sport value error get preference todayDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentTotalDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getHeartRato(Landroid/content/Context;)I
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->CONTENT_HEART_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "utc_time DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "heart_rate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTargetStep(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "huami.watch.health.config"

    invoke-static {v0, v1}, Lcom/huami/watch/companion/settings/WatchSettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f40

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "init current step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    :goto_0
    invoke-static {p1, v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setTargetStept(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "step_target"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "get current target step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "set current target step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createSlptLayout(FF)V
    .locals 1

    const-string p1, "HmSlptLockScreen"

    const-string p2, "createSlptLayout!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result p1

    sget-object p2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-static {p2, v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setTotalSportDistance(Landroid/content/Context;F)V

    sget-object p2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-static {p2, v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setTodaySportDistance(Landroid/content/Context;F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "HmSlptLockScreen"

    const-string v0, "createSlptLayout service already connected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->getSportfaceValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTodayDistance(F)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTotalDistance(F)Z

    const-string p1, "HmSlptLockScreen"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update currentTodayDistance="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentTotalDistance="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "HmSlptLockScreen"

    const-string p2, "createSlptLayout service disconnected , rebind service again"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string p2, "HmSlptLockScreen"

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "HmSlptLockScreen"

    const-string p2, "already bind servic!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "HmSlptLockScreen"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;)V

    sput-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mHandler:Landroid/os/Handler;

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v1, "HmSlptLockScreen"

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v0, p0, v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HmSlptLockScreen"

    const-string v1, "can\'t bind service something error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->STEP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mstepOberver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->TOTAL_DISTANCE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtotalDistanceOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->TODAY_DISTANCE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtodayDistanceOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->CONTENT_HEART_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mlastHeartrateOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->MEASUREMENT_UNIT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mmeasurementObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getTargetStept(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getCurrentSafeHeartrate(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    const-string v0, "HmSlptLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current currentTargetStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentSafeHeartRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentSafeHeartRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_total_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_today_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getHeartRato(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HmSlptLockScreen"

    const-string v2, "request todayDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentTotalDistance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    const/4 v0, 0x0

    sput v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    const-string v0, "HmSlptLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request sport value error get preference todayDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentTotalDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->createNewAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HmSlptLockScreen"

    const-string v1, "onDestroy!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unbindService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptWatchFaceReceiver:Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mstepOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtotalDistanceOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mtodayDistanceOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mlastHeartrateOberver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mmeasurementObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "HmSlptLockScreen"

    const-string p2, "onStartCommand!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setHeartrate(I)V
    .locals 2

    sget-object p1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setCurrentHeartrate(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setLastHeartrate(I)Z

    const-string p1, "HmSlptLockScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update currentHeartRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentHeartRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "HmSlptLockScreen"

    const-string v0, "createSlptLayout service disconnected , rebind service again"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string v0, "HmSlptLockScreen"

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "HmSlptLockScreen"

    const-string v0, "already bind servic!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSportValue(FF)V
    .locals 1

    sget-object p1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    sget p2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setTotalSportDistance(Landroid/content/Context;F)V

    sget-object p1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    sget p2, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->setTodaySportDistance(Landroid/content/Context;F)V

    sget-object p1, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {p2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTargetStep:I

    invoke-virtual {p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTodayDistance(F)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTotalDistance(F)Z

    const-string p1, "HmSlptLockScreen"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update currentTodayDistance="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTodayDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentTotalDistance="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->currentTotalDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "HmSlptLockScreen"

    const-string p2, "createSlptLayout service disconnected , rebind service again"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string p2, "HmSlptLockScreen"

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "HmSlptLockScreen"

    const-string p2, "already bind servic!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
