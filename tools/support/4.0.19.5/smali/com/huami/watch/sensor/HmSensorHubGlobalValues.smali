.class public Lcom/huami/watch/sensor/HmSensorHubGlobalValues;
.super Ljava/lang/Object;
.source "HmSensorHubGlobalValues.java"


# static fields
.field public static final ACTION_HM_SENSOR_APP_WAKEUP:Ljava/lang/String; = "com.huami.watch.action.SENSOR_WAKEUP"

.field public static final ACTION_HM_SENSOR_RESET:Ljava/lang/String; = "com.huami.watch.action.SENSOR_RESET"

.field public static final ALGORITHM_GPS_DISTANCE_CALIBRATION:I = 0x4

.field public static final ALGORITHM_SPORT_PAUSE:I = 0x1

.field public static final ALGORITHM_SPORT_RESTART:I = 0x2

.field public static final ALGORITHM_SPORT_START:I = 0x0

.field public static final ALGORITHM_SPORT_STOP:I = 0x3

.field public static final GPS_BATCH_MODE:I = 0x1

.field public static final GPS_NORMAL_MODE:I = 0x0

.field private static final SERVICE_ACTION:Ljava/lang/String; = "android.intent.action.SENSORHUB_SERVICE"

.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.huami.watch.hmcoreservice.HmSensorHubServer"

.field public static final SERVICE_NAME:Ljava/lang/String; = "hm_sensor_hub_service"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.huami.watch.hmcoreservice"

.field public static final TYPE_QUICK_WALKING:I = 0x2

.field public static final TYPE_RUNNING:I = 0x1

.field public static final VALUE_KEY_ACHIEVE_DAILY_STEP_TARGET:Ljava/lang/String; = "ACHIEVE_DAILY_STEP_TARGET"

.field public static final VALUE_KEY_CALORIE_HEART_RATE:Ljava/lang/String; = "CALORIE_HEART_RATE"

.field public static final VALUE_KEY_GPS_STATE:Ljava/lang/String; = "GPS_STATE"

.field public static final VALUE_KEY_HEART_RATE_UP:Ljava/lang/String; = "HEART_RATE_UP"

.field public static final VALUE_KEY_LIFE_TIME_STEP_TARGET:Ljava/lang/String; = "LIFE_TIME_STEP_TARGET"

.field public static final VALUE_KEY_LONG_SITTING:Ljava/lang/String; = "LONG_SITTING"

.field public static final VALUE_KEY_PACE:Ljava/lang/String; = "PACE"

.field public static final VALUE_KEY_REPEAT_DISTANCE:Ljava/lang/String; = "REPEAT_DISTANCE"

.field public static final VALUE_KEY_SPORT_STATE:Ljava/lang/String; = "SPORT_STATE"

.field public static final VALUE_KEY_TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field public static final VALUE_KEY_TOTAL_DISTANCE:Ljava/lang/String; = "TOTAL_DISTANCE"

.field public static final VALUE_KEY_WAKEUP_SOURCE:Ljava/lang/String; = "WAKEUP_SOURCE"

.field public static final WAKEUP_SOURCE_ACHIEVE_DAILY_STEP_TARGET:Ljava/lang/String; = "sensorhub.achieve.daily.step.target"

.field public static final WAKEUP_SOURCE_ACHIEVE_DAILY_STEP_TARGET_TYPE:I = 0x9

.field public static final WAKEUP_SOURCE_ALGORITHM_PACE_MIN:Ljava/lang/String; = "sensorhub.algorithm.pace.minimum"

.field public static final WAKEUP_SOURCE_ALGORITHM_PACE_MIN_TYPE:I = 0x6

.field public static final WAKEUP_SOURCE_ALGORITHM_SPORT_STATE_CHANGE:Ljava/lang/String; = "sensorhub.algorithm.sport_state_change"

.field public static final WAKEUP_SOURCE_ALGORITHM_SPORT_STATE_CHANGE_TYPE:I = 0x7

.field public static final WAKEUP_SOURCE_GPS_REPEAT_DISTANCE:Ljava/lang/String; = "sensorhub.gps.repeat_distance"

.field public static final WAKEUP_SOURCE_GPS_REPEAT_DISTANCE_TYPE:I = 0x3

.field public static final WAKEUP_SOURCE_GPS_STATE_CHANGE:Ljava/lang/String; = "sensorhub.gps.state_change"

.field public static final WAKEUP_SOURCE_GPS_STATE_CHANGE_TYPE:I = 0x1

.field public static final WAKEUP_SOURCE_GPS_TOTAL_DISTANCE:Ljava/lang/String; = "sensorhub.gps.total_distance"

.field public static final WAKEUP_SOURCE_GPS_TOTAL_DISTANCE_TYPE:I = 0x2

.field public static final WAKEUP_SOURCE_HEARTRATE_CALORIE_BURN_MAX:Ljava/lang/String; = "sensorhub.heartrate.calorie_burn.maximum"

.field public static final WAKEUP_SOURCE_HEARTRATE_CALORIE_BURN_MAX_TYPE:I = 0x5

.field public static final WAKEUP_SOURCE_HEARTRATE_EXCEED_TARGET_ZONE:Ljava/lang/String; = "sensorhub.heatrate.exceed_target_zone"

.field public static final WAKEUP_SOURCE_HEARTRATE_EXCEED_TARGET_ZONE_TYPE:I = 0x4

.field public static final WAKEUP_SOURCE_LIFE_TIME_STEP_TARGET:Ljava/lang/String; = "sensorhub.life.time.step.target"

.field public static final WAKEUP_SOURCE_LIFE_TIME_STEP_TARGET_TYPE:I = 0xa

.field public static final WAKEUP_SOURCE_LONG_SITTING:Ljava/lang/String; = "sensorhub.long.sitting.alert"

.field public static final WAKEUP_SOURCE_LONG_SITTING_TYPE:I = 0x8

.field public static final WAKEUP_SOURCE_SENSORHUB_RESET:Ljava/lang/String; = "sensorhub.recovery.ok"

.field public static final WAKEUP_SOURCE_SENSOR_REPORT_TYPE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorHubServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENSORHUB_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huami.watch.hmcoreservice"

    const-string v3, "com.huami.watch.hmcoreservice.HmSensorHubServer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 241
    return-object v0
.end method
