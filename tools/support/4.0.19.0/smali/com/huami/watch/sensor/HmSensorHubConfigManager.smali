.class public Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$DataInfo;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$ConfigFinishInfo;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;,
        Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;
    }
.end annotation


# static fields
.field public static final ACTION_HM_SENSOR_APP_WAKEUP:Ljava/lang/String; = "com.huami.watch.action.SENSOR_WAKEUP"

.field public static final ALGORITHM_GPS_DISTANCE_CALIBRATION:I = 0x4

.field public static final ALGORITHM_MIXED_SPORT_CONFIG:I = 0x4

.field public static final ALGORITHM_SPORT_PAUSE:I = 0x1

.field public static final ALGORITHM_SPORT_RESTART:I = 0x2

.field public static final ALGORITHM_SPORT_START:I = 0x0

.field public static final ALGORITHM_SPORT_STOP:I = 0x3

.field private static final DEBUG:Z

.field public static final ERROR_NO_CALLBACK_THREAD:J = -0x2L

.field public static final GPS_BATCH_MODE_DISABLE:I = 0x0

.field public static final GPS_BATCH_MODE_ENABLE:I = 0x1

.field public static final GPS_STATE_AVAILABLE:Ljava/lang/String; = "gps_available"

.field public static final GPS_STATE_UNAVAILABLE:Ljava/lang/String; = "gps_unavailable"

.field public static final HM_SENSOR_HUB_SERVICE_NAME:Ljava/lang/String; = "hm_sensor_hub_service"

.field public static final KEY_CHANGE_ITEM_TO:Ljava/lang/String; = "sport_change_to"

.field public static final KEY_MULTI_SPORTS:Ljava/lang/String; = "key_multi_sport"

.field public static final KEY_SLPT_SPORT_CLOCK_PERIOD:Ljava/lang/String; = "clockperiod"

.field public static final KEY_SLPT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final MIXED_SPORT_TYPE_MASK:I = 0x10000

.field private static final MSG_BLE_KLVP_DATA_CALLBACK:I = 0x3

.field private static final MSG_CONFIG_CALLBACK:I = 0x0

.field private static final MSG_DATA_REQUEST_CALLBACK:I = 0x1

.field private static final MSG_KLVP_DATA_CALLBACK:I = 0x2

.field public static final SOURCE_DAY_STRESS_DATA_READY:Ljava/lang/String; = "day_stress_data_ready"

.field public static final SPORT_SET_CONFIG_START:I = 0x2

.field public static final SPORT_SET_CONFIG_STOP:I = 0x8

.field public static final SPORT_STATE_PAUSE:Ljava/lang/String; = "sport_auto_pause"

.field public static final SPORT_STATE_PAUSED:I = 0x2

.field public static final SPORT_STATE_RESUME:Ljava/lang/String; = "sport_auto_resume"

.field public static final SPORT_STATE_RUNNING:I = 0x1

.field public static final SPORT_STATE_STOPPED:I = 0x0

.field private static final SPORT_VIEW_DISABLE_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.disable.sportView"

.field private static final SPORT_VIEW_ENABLE_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.enable.sportView"

.field private static final SPORT_VIEW_TYPE_DISABLE_KEY:Ljava/lang/String; = "disable_view_type"

.field private static final SPORT_VIEW_TYPE_ENABLE_KEY:Ljava/lang/String; = "enable_view_type"

.field private static final SPORT_VIEW_TYPE_KEY:Ljava/lang/String; = "sport_view_type"

.field private static final TAG:Ljava/lang/String; = "HmSensorHubManager"

.field public static final TYPE_CROSS_COUNTRY_RACE:I = 0x7

.field public static final TYPE_HEALTH_CALAURE:I = 0x0

.field public static final TYPE_HEALTH_DISTANCE:I = 0x1

.field public static final TYPE_IN_DOOR:I = 0x8

.field public static final TYPE_IN_DOOR_RIDING:I = 0xa

.field public static final TYPE_OUT_DOOR_RIDING:I = 0x9

.field public static final TYPE_QUICK_WALKING:I = 0x6

.field public static final TYPE_RUNNING:I = 0x1

.field public static final TYPE_SKIING:I = 0xb

.field public static final TYPE_SPORT_DATA:I = 0x2

.field public static final TYPE_SPORT_ELLIPTICAL_MACHINE:I = 0xc

.field public static final TYPE_SPORT_EXERCISE:I = 0x10

.field public static final TYPE_SPORT_GOLF_RANGE:I = 0x14

.field public static final TYPE_SPORT_GOLF_ROUND:I = 0x13

.field public static final TYPE_SPORT_MOUNTAINEER:I = 0xd

.field public static final TYPE_SPORT_OPEN_WATER_SWIMMING:I = 0xf

.field public static final TYPE_SPORT_ROPE_SKIPPING:I = 0x15

.field public static final TYPE_SPORT_SET_START:I = 0x10002

.field public static final TYPE_SPORT_SET_STOP:I = 0x10008

.field public static final TYPE_SPORT_SOCCER:I = 0x12

.field public static final TYPE_SPORT_SWIMMING:I = 0xe

.field public static final TYPE_SPORT_TENNIS:I = 0x11

.field public static final TYPE_TO_NEXT_SPORT_ITEM:I = -0x1

.field private static final UPDATE_DEFAULT:I = 0x0

.field private static final UPDATE_EVERY_ONE_SECOND:I = 0x1

.field public static final VALUE_KEY_ACHIEVE_DAILY_STEP_TARGET:Ljava/lang/String; = "ACHIEVE_DAILY_STEP_TARGET"

.field public static final VALUE_KEY_ASCEND_METER:Ljava/lang/String; = "ascend_meter"

.field public static final VALUE_KEY_AVG_PACE:Ljava/lang/String; = "AVG_PACE"

.field public static final VALUE_KEY_BATTERY_MODE:Ljava/lang/String; = "sport_battery_life_mode"

.field public static final VALUE_KEY_CADENCE_PER_LAP:Ljava/lang/String; = "cadence_per_lap"

.field public static final VALUE_KEY_CALORIES_PER_LAP:Ljava/lang/String; = "calories_per_lap"

.field public static final VALUE_KEY_CALORIES_TARGET:Ljava/lang/String; = "CALORIES_TARGET"

.field public static final VALUE_KEY_CALORIE_HEART_RATE:Ljava/lang/String; = "CALORIE_HEART_RATE"

.field public static final VALUE_KEY_CLIMB_DISTANCE:Ljava/lang/String; = "climb_distance"

.field public static final VALUE_KEY_CURRENT_SPORT_ID:Ljava/lang/String; = "autosport_sport_id"

.field public static final VALUE_KEY_DAILY_PERFORMANCE:Ljava/lang/String; = "daily_performance"

.field public static final VALUE_KEY_DESCEND_METER:Ljava/lang/String; = "descend_meter"

.field public static final VALUE_KEY_DISABLE_TOUCH:Ljava/lang/String; = "disable_touch"

.field public static final VALUE_KEY_ETE_PH_VARIABLE:Ljava/lang/String; = "phrase_variable"

.field public static final VALUE_KEY_ETE_RT_PH_NUM_INFO:Ljava/lang/String; = "phrase_number_info"

.field public static final VALUE_KEY_FORCE_AIRPLANE_MODE:Ljava/lang/String; = "force_airplane_mode"

.field public static final VALUE_KEY_FORCE_NO_BACK_LIGHT:Ljava/lang/String; = "force_no_bl"

.field public static final VALUE_KEY_GPS_STATE:Ljava/lang/String; = "GPS_STATE"

.field public static final VALUE_KEY_HEART_RATE_UP:Ljava/lang/String; = "HEART_RATE_UP"

.field public static final VALUE_KEY_LAP_MAX_FALL:Ljava/lang/String; = "lap_max_fall"

.field public static final VALUE_KEY_LAP_NUMBER:Ljava/lang/String; = "LAP_NUMBER"

.field public static final VALUE_KEY_LAP_PACE:Ljava/lang/String; = "LAP_PACE"

.field public static final VALUE_KEY_LAP_TIME:Ljava/lang/String; = "LAP_TIME"

.field public static final VALUE_KEY_LAST_KM_PACE:Ljava/lang/String; = "LAST_KM_PACE"

.field public static final VALUE_KEY_LAST_KM_SPEED:Ljava/lang/String; = "LAST_KM_SPEED"

.field public static final VALUE_KEY_LIFE_TIME_STEP_TARGET:Ljava/lang/String; = "LIFE_TIME_STEP_TARGET"

.field public static final VALUE_KEY_LONG_SITTING:Ljava/lang/String; = "LONG_SITTING"

.field public static final VALUE_KEY_LONLAT_POINT:Ljava/lang/String; = "lonlat_point"

.field public static final VALUE_KEY_MAX_PACE:Ljava/lang/String; = "max_pace"

.field public static final VALUE_KEY_PACE:Ljava/lang/String; = "PACE"

.field public static final VALUE_KEY_RAMP_METER:Ljava/lang/String; = "ramp_meter"

.field public static final VALUE_KEY_REPEAT_DISTANCE:Ljava/lang/String; = "REPEAT_DISTANCE"

.field public static final VALUE_KEY_SPORT_START_TIMESTAMP:Ljava/lang/String; = "autosport_start_timestamp"

.field public static final VALUE_KEY_SPORT_STATE:Ljava/lang/String; = "SPORT_STATE"

.field public static final VALUE_KEY_SPORT_TOTAL_TIME:Ljava/lang/String; = "SPORT_TOTAL_TIME"

.field public static final VALUE_KEY_SPORT_TYPE:Ljava/lang/String; = "autosport_sport_type"

.field public static final VALUE_KEY_STEPS:Ljava/lang/String; = "STEP_ACM"

.field public static final VALUE_KEY_STOP_TODAY_DISTANCE:Ljava/lang/String; = "today_distance"

.field public static final VALUE_KEY_STOP_TOTAL_DISTANCE:Ljava/lang/String; = "total_distance"

.field public static final VALUE_KEY_SWIM_INFO:Ljava/lang/String; = "swim_info"

.field public static final VALUE_KEY_TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field public static final VALUE_KEY_TOTAL_CALORIES:Ljava/lang/String; = "total_calories"

.field public static final VALUE_KEY_TOTAL_DISTANCE:Ljava/lang/String; = "TOTAL_DISTANCE"

.field public static final VALUE_KEY_TRAINNING_EFFECT:Ljava/lang/String; = "trainning_effect"

.field public static final VALUE_KEY_WAKEUP_SOURCE:Ljava/lang/String; = "WAKEUP_SOURCE"

.field public static final WAKEUP_SOURCE_ACHIEVE_DAILY_STEP_TARGET:Ljava/lang/String; = "sensorhub.achieve.daily.step.target"

.field public static final WAKEUP_SOURCE_ACHIEVE_DAILY_STEP_TARGET_TYPE:I = 0x9

.field public static final WAKEUP_SOURCE_ALGORITHM_PACE_MIN:Ljava/lang/String; = "sensorhub.algorithm.pace.minimum"

.field public static final WAKEUP_SOURCE_ALGORITHM_PACE_MIN_TYPE:I = 0x6

.field public static final WAKEUP_SOURCE_ALGORITHM_SPORT_STATE_CHANGE:Ljava/lang/String; = "sensorhub.algorithm.sport_state_change"

.field public static final WAKEUP_SOURCE_ALGORITHM_SPORT_STATE_CHANGE_TYPE:I = 0x7

.field public static final WAKEUP_SOURCE_AUTOSPORT_AUTOSTOP:Ljava/lang/String; = "sensorhub.autosport.stop"

.field public static final WAKEUP_SOURCE_AUTOSPORT_START_CNF:Ljava/lang/String; = "sensorhub.autosport.start.confirm"

.field public static final WAKEUP_SOURCE_AUTOSPORT_STOP_ALERT_DISMISS:Ljava/lang/String; = "sensorhub.autosport.stop_alert_dismiss"

.field public static final WAKEUP_SOURCE_CALORIES_TARGET:Ljava/lang/String; = "sensorhub.calories.target"

.field public static final WAKEUP_SOURCE_CALORIES_TARGET_TYPE:I = 0xc

.field public static final WAKEUP_SOURCE_ETE_DAILY_PERFORMANCE_INFO:Ljava/lang/String; = "sensorhub.ete.daily.performance.info"

.field public static final WAKEUP_SOURCE_ETE_RT_PHRASE_NUMBER_INFO:Ljava/lang/String; = "sensorhub.ete.rt.phrase.num.info"

.field public static final WAKEUP_SOURCE_FALL_INTO_SLEEP:Ljava/lang/String; = "sensorhub.fall.into.sleep"

.field public static final WAKEUP_SOURCE_GPS_REPEAT_DISTANCE:Ljava/lang/String; = "sensorhub.gps.repeat_distance"

.field public static final WAKEUP_SOURCE_GPS_REPEAT_DISTANCE_TYPE:I = 0x3

.field public static final WAKEUP_SOURCE_GPS_STATE_CHANGE:Ljava/lang/String; = "sensorhub.gps.state_change"

.field public static final WAKEUP_SOURCE_GPS_STATE_CHANGE_TYPE:I = 0x1

.field public static final WAKEUP_SOURCE_GPS_TOTAL_DISTANCE:Ljava/lang/String; = "sensorhub.gps.total_distance"

.field public static final WAKEUP_SOURCE_GPS_TOTAL_DISTANCE_TYPE:I = 0x2

.field public static final WAKEUP_SOURCE_HEALTH_DATA_FULL:Ljava/lang/String; = "sensorhub.health.data.full"

.field public static final WAKEUP_SOURCE_HEARTRATE_CALORIE_BURN_MAX:Ljava/lang/String; = "sensorhub.heartrate.calorie_burn.maximum"

.field public static final WAKEUP_SOURCE_HEARTRATE_CALORIE_BURN_MAX_TYPE:I = 0x5

.field public static final WAKEUP_SOURCE_HEARTRATE_EXCEED_TARGET_ZONE:Ljava/lang/String; = "sensorhub.heatrate.exceed_target_zone"

.field public static final WAKEUP_SOURCE_HEARTRATE_EXCEED_TARGET_ZONE_TYPE:I = 0x4

.field public static final WAKEUP_SOURCE_HEARTRATE_REACH_RATE_ZONE:Ljava/lang/String; = "sensorhub.hearrate.reach.ratezone"

.field public static final WAKEUP_SOURCE_HEARTRATE_REACH_RATE_ZONE_TYPE:I = 0xb

.field public static final WAKEUP_SOURCE_LIFE_TIME_STEP_TARGET:Ljava/lang/String; = "sensorhub.life.time.step.target"

.field public static final WAKEUP_SOURCE_LIFE_TIME_STEP_TARGET_TYPE:I = 0xa

.field public static final WAKEUP_SOURCE_LONG_SITTING:Ljava/lang/String; = "sensorhub.long.sitting.alert"

.field public static final WAKEUP_SOURCE_LONG_SITTING_TYPE:I = 0x8

.field public static final WAKEUP_SOURCE_LONG_SIT_CLEAR:Ljava/lang/String; = "sensorhub.long.sit.clear"

.field public static final WAKEUP_SOURCE_NEW_KILOMETER:Ljava/lang/String; = "sensorhub.new.kilometer"

.field public static final WAKEUP_SOURCE_NEW_KILOMETER_TYPE:I = 0xd

.field public static final WAKEUP_SOURCE_NEW_MILE:Ljava/lang/String; = "sensorhub.new.mile"

.field public static final WAKEUP_SOURCE_NEW_MILE_TYPE:I = 0xe

.field public static final WAKEUP_SOURCE_NOT_WEAR_TIGHT:Ljava/lang/String; = "sensorhub.not.wear.tight"

.field public static final WAKEUP_SOURCE_REACH_DAY_END:Ljava/lang/String; = "sensorhub.reach.day.end"

.field public static final WAKEUP_SOURCE_RS_TARGET_EVERY_COUNT:Ljava/lang/String; = "sensorhub.rs.target.count"

.field public static final WAKEUP_SOURCE_RS_TARGET_EVERY_TIMER:Ljava/lang/String; = "sensorhub.rs.target.time"

.field public static final WAKEUP_SOURCE_RS_TOTAL_TARGET:Ljava/lang/String; = "sensorhub.rs.total.target"

.field public static final WAKEUP_SOURCE_SENSOR_REPORT_TYPE:I = 0x0

.field public static final WAKEUP_SOURCE_SIT_TOO_LONG_TRAIN:Ljava/lang/String; = "sensorhub.sit.too.long.train"

.field public static final WAKEUP_SOURCE_TRIAL_BACK:Ljava/lang/String; = "sensorhub.trial.back"

.field public static final WAKEUP_SOURCE_TRIAL_DIGRESSION:Ljava/lang/String; = "sensorhub.trial.digression"

.field public static final WAKEUP_SOURCE_TRIAL_OFF_FAR_AWAY:Ljava/lang/String; = "sensorhub.trial.off.far.away"

.field public static final WAKEUP_SOURCE_TYPE_NUM:I = 0xf

.field private static volatile sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# instance fields
.field private mBleEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/os/IBinder;

.field private final mConfigFinishDispatcher:Lcom/huami/watch/sensor/IConfigFinishDispatcher;

.field private mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishEventHandlerDelegate:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private final mHealthDataDispatcher:Lcom/huami/watch/sensor/IDataDispatcher;

.field private mInitComplete:Z

.field private final mKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

.field private final mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

.field private mPairIdTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRealTimeDataListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestKlvpDataLock:Ljava/lang/Object;

.field private mService:Lcom/huami/watch/sensor/IHmSensorHubService;

.field sconn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .line 769
    const-string v0, "HmSensorHubManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    .line 819
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$1;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sconn:Landroid/content/ServiceConnection;

    .line 1129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    .line 1132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mPairIdTypeMap:Landroid/util/SparseArray;

    .line 1143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRequestKlvpDataLock:Ljava/lang/Object;

    .line 1166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mInitComplete:Z

    .line 1424
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$2;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHealthDataDispatcher:Lcom/huami/watch/sensor/IDataDispatcher;

    .line 1449
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$3;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    .line 1507
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$4;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishDispatcher:Lcom/huami/watch/sensor/IConfigFinishDispatcher;

    .line 1556
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mCallback:Landroid/os/IBinder;

    .line 3042
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$5;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$5;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    .line 1593
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    .line 1594
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;-><init>(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V

    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mFinishEventHandlerDelegate:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    .line 1595
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mInitComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Ljava/lang/String;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->findConfigFinishListener(Ljava/lang/String;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchBleServiceInfo(Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchDeviceEvent(Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchBleCharacteristicWriteRequest(Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchBleUnbindEvent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # [B

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchMCUTimeSyncEvent([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchBleAnccEvent(Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchBleAmsEvent(Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->updateBleChannelCrowdState(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/huami/watch/sensor/HmSensorHubConfigManager;BS[B)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .param p3, "x3"    # [B

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->dispatchMcuCommonReply(BS[B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mFinishEventHandlerDelegate:Lcom/huami/watch/sensor/HmSensorHubConfigManager$EventHandlerDelegate;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/huami/watch/sensor/HmSensorHubConfigManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->unregisterConfigFinishListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRequestKlvpDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->findDataReadyListener(J)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/huami/watch/sensor/HmSensorHubConfigManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->unregisterDataReadyListener(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->findRealtimeCallback(I)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/huami/watch/sensor/HmSensorHubConfigManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mPairIdTypeMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huami/watch/sensor/HmSensorHubConfigManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->unregisterKlvpCallback(I)V

    return-void
.end method

.method private configureSensorHubAlgorithm(IIFLjava/lang/String;)V
    .locals 7
    .param p1, "alg"    # I
    .param p2, "type"    # I
    .param p3, "distance"    # F
    .param p4, "clientId"    # Ljava/lang/String;

    .prologue
    .line 2615
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v0

    .line 2616
    .local v0, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v5, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishDispatcher:Lcom/huami/watch/sensor/IConfigFinishDispatcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/huami/watch/sensor/IHmSensorHubService;->configureSensorHubAlgorithm(IIFLjava/lang/String;Lcom/huami/watch/sensor/IConfigFinishDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    .end local v0    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v6

    .line 2619
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 7
    .param p1, "alg"    # I
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2596
    invoke-direct {p0, p1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2598
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v0

    .line 2599
    .local v0, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-direct {p0, p1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishDispatcher:Lcom/huami/watch/sensor/IConfigFinishDispatcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/huami/watch/sensor/IHmSensorHubService;->configureSensorHubAlgorithmWP(IILandroid/os/Bundle;Ljava/lang/String;Lcom/huami/watch/sensor/IConfigFinishDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2604
    .end local v0    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2601
    :catch_0
    move-exception v6

    .line 2602
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 2
    .param p1, "alg"    # I
    .param p2, "type"    # I
    .param p3, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2591
    invoke-direct {p0, p1, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2592
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IIFLjava/lang/String;)V

    .line 2593
    return-void
.end method

.method private configureSensorHubWakeupSource(IZ[F)I
    .locals 4
    .param p1, "wakeup_source"    # I
    .param p2, "enable"    # Z
    .param p3, "params"    # [F

    .prologue
    .line 2768
    const/4 v1, -0x1

    .line 2770
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2771
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->configureSensorHubWakeupSource(IZ[FLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2776
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v1

    .line 2773
    :catch_0
    move-exception v0

    .line 2774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private configureWakeupSourceByKlvp(IZ[FLcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I
    .locals 7
    .param p1, "wakeup_source"    # I
    .param p2, "enable"    # Z
    .param p3, "params"    # [F
    .param p4, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2628
    const/4 v0, 0x1

    .line 2629
    .local v0, "result":I
    new-instance v1, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 2630
    .local v1, "sportConfig":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    packed-switch p1, :pswitch_data_0

    .line 2753
    :pswitch_0
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeup source of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not define yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_0
    :goto_0
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    move-result v0

    .line 2756
    return v0

    .line 2632
    :pswitch_2
    if-eqz p3, :cond_2

    array-length v2, p3

    if-lez v2, :cond_2

    .line 2633
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2634
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_ACHIEVE_DAILY_STEP_TARGET_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :cond_1
    aget v2, p3, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMTodayStepGoal(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2640
    :cond_2
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsTodayStepGoalAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto :goto_0

    .line 2643
    :pswitch_3
    if-eqz p3, :cond_4

    array-length v2, p3

    if-lez v2, :cond_4

    .line 2644
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2645
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_LONG_SITTING_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "but do nothing, wait implements of algo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_3
    aget v2, p3, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSedentaryMin(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2650
    :cond_4
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSedentaryMinAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto :goto_0

    .line 2653
    :pswitch_4
    if-eqz p3, :cond_6

    array-length v2, p3

    if-lez v2, :cond_6

    .line 2654
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 2655
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_GPS_REPEAT_DISTANCE_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_5
    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportLapMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2660
    :cond_6
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportLapMeterAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2663
    :pswitch_5
    if-eqz p3, :cond_8

    array-length v2, p3

    if-lez v2, :cond_8

    .line 2664
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2665
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_HEARTRATE_EXCEED_TARGET_ZONE_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_7
    aget v2, p3, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportSafeHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2671
    :cond_8
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSafeHeartRateAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2674
    :pswitch_6
    if-eqz p3, :cond_9

    array-length v2, p3

    if-lez v2, :cond_9

    .line 2675
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 2676
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_ALGORITHM_SPORT_STATE_CHANGE_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_9
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportAutoPauseEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2684
    :pswitch_7
    if-eqz p3, :cond_b

    array-length v2, p3

    if-lez v2, :cond_b

    .line 2685
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 2686
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_GPS_TOTAL_DISTANCE_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    :cond_a
    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportTargetDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2692
    :cond_b
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportTargetDistanceAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2695
    :pswitch_8
    if-eqz p3, :cond_d

    array-length v2, p3

    if-lez v2, :cond_d

    .line 2696
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 2697
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_ALGORITHM_PACE_MIN_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_c
    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportTargetPace(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2703
    :cond_d
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportTargetPaceAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2706
    :pswitch_9
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 2707
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2708
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_LIFE_TIME_STEP_TARGET_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bug it\'s write in code, no set func provide."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2716
    :pswitch_a
    if-eqz p3, :cond_f

    array-length v2, p3

    if-lez v2, :cond_f

    .line 2717
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 2718
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_CALORIES_TARGET_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    :cond_e
    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportTargetCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2726
    :goto_1
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportTargetCaloriesAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2724
    :cond_f
    const-string v2, "HmSensorHubManager"

    const-string v3, "WAKEUP_SOURCE_CALORIES_TARGET_TYPE parmas is null , not set target value."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2729
    :pswitch_b
    if-eqz p3, :cond_12

    array-length v2, p3

    if-le v2, v6, :cond_12

    .line 2730
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_10

    .line 2731
    const-string v2, "HmSensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config WAKEUP_SOURCE_HEARTRATE_REACH_RATE_ZONE_TYPE , the value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_10
    aget v2, p3, v5

    aget v3, p3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    .line 2736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "first parameter should not larger than second parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2738
    :cond_11
    aget v2, p3, v5

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportHrZoneLower(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2739
    aget v2, p3, v6

    invoke-virtual {v1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportHrZoneUpper(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2743
    :goto_2
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSportHrZoneAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2741
    :cond_12
    const-string v2, "HmSensorHubManager"

    const-string v3, "WAKEUP_SOURCE_HEARTRATE_REACH_RATE_ZONE_TYPE need two parmas!!!, use defautl."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2746
    :pswitch_c
    invoke-virtual {v1, p2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsSporKiloMeterAlertEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    goto/16 :goto_0

    .line 2630
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method

.method private dispatchBleAmsEvent(Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    .prologue
    .line 940
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 941
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 942
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onMcuAMsEvent(Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;)V

    goto :goto_0

    .line 944
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    return-void
.end method

.method private dispatchBleAnccEvent(Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V
    .locals 4
    .param p1, "info"    # Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .param p2, "isAdd"    # Z

    .prologue
    .line 933
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 934
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 935
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onMcuAnccEvent(Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;Z)V

    goto :goto_0

    .line 937
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    return-void
.end method

.method private dispatchBleCharacteristicWriteRequest(Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V
    .locals 4
    .param p1, "onCharacteristicWriteRequest"    # Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    .prologue
    .line 912
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 913
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 914
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->OnBleCharacteristicWriteRequest(Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;)V

    goto :goto_0

    .line 916
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    return-void
.end method

.method private dispatchBleServiceInfo(Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V
    .locals 4
    .param p1, "bleService"    # Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    .prologue
    .line 896
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 897
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 898
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onGetBleServiceInfo(Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;)V

    goto :goto_0

    .line 900
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    return-void
.end method

.method private dispatchBleUnbindEvent()V
    .locals 4

    .prologue
    .line 919
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 920
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 921
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onBleUnbindEvent()V

    goto :goto_0

    .line 923
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    return-void
.end method

.method private dispatchDeviceEvent(Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    .prologue
    .line 904
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 905
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 906
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onGetDeviceEvent(Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;)V

    goto :goto_0

    .line 908
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    return-void
.end method

.method private dispatchMCUTimeSyncEvent([B)V
    .locals 4
    .param p1, "responseValue"    # [B

    .prologue
    .line 926
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 928
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onMCUTimeSyncEvent([B)V

    goto :goto_0

    .line 930
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    return-void
.end method

.method private dispatchMcuCommonReply(BS[B)V
    .locals 4
    .param p1, "cmdType"    # B
    .param p2, "cmd"    # S
    .param p3, "data"    # [B

    .prologue
    .line 868
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .line 870
    .local v1, "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;->onMcuCommonReply(BS[B)V

    goto :goto_0

    .line 872
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    return-void
.end method

.method private findConfigFinishListener(Ljava/lang/String;)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    return-object v0
.end method

.method private findDataReadyListener(J)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    .locals 3
    .param p1, "sessionId"    # J

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;

    return-object v0
.end method

.method private findRealtimeCallback(I)Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    return-object v0
.end method

.method public static getHmSensorHubConfigManager(Landroid/content/Context;)Lcom/huami/watch/sensor/HmSensorHubConfigManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1581
    sget-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    if-nez v0, :cond_1

    .line 1582
    const-class v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    monitor-enter v1

    .line 1583
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    if-nez v0, :cond_0

    .line 1584
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    .line 1586
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :cond_1
    sget-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sInstance:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    return-object v0

    .line 1586
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 1519
    if-nez p2, :cond_0

    .line 1520
    const-string v0, "HmSensorHubManager"

    const-string v1, "null listener is not a good idea !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1523
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getService()Lcom/huami/watch/sensor/IHmSensorHubService;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2514
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    if-nez v3, :cond_4

    .line 2515
    const-class v4, Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    monitor-enter v4

    .line 2516
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    if-nez v3, :cond_3

    .line 2517
    const/16 v2, 0xa

    .line 2518
    .local v2, "tryMax":I
    const/4 v1, 0x0

    .line 2519
    .local v1, "tryCnt":I
    const/4 v0, 0x0

    .line 2520
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 2521
    const-string v3, "hm_sensor_hub_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2522
    if-nez v0, :cond_1

    .line 2523
    const-string v3, "HmSensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]Wait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hm_sensor_hub_service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ready ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 2525
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubGlobalValues;->getSensorHubServiceIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2527
    :cond_0
    const-wide/16 v6, 0x96

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2529
    :cond_1
    invoke-static {v0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v3

    iput-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    .line 2533
    :cond_2
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    if-nez v3, :cond_3

    .line 2534
    const-string v3, "HmSensorHubManager"

    const-string v5, "NO hm_sensor_hub_service available!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/4 v3, 0x0

    monitor-exit v4

    .line 2540
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "tryCnt":I
    .end local v2    # "tryMax":I
    :goto_1
    return-object v3

    .line 2538
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2540
    :cond_4
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mService:Lcom/huami/watch/sensor/IHmSensorHubService;

    goto :goto_1

    .line 2538
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifySLPTChangeItem(ZIJ)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "type"    # I
    .param p3, "timestamp"    # J

    .prologue
    const/4 v6, 0x1

    .line 2262
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.huami.watchface.SlptWatchService.enable.sportView"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2263
    .local v0, "intent":Landroid/content/Intent;
    const-wide/16 v4, 0x3e8

    div-long v2, p3, v4

    .line 2264
    .local v2, "startTimestamp":J
    if-eqz p1, :cond_1

    .line 2265
    const-string v1, "HmSensorHubManager"

    const-string v4, "Update SLPT by 1Hz"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v1, "clockperiod"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2271
    :goto_1
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2272
    const-string v1, "sport_view_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2273
    const-string v1, "sport_change_to"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    const-string v1, "key_multi_sport"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2275
    const-string v1, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySLPTChangeItem Start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2277
    return-void

    .line 2262
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "startTimestamp":J
    :cond_0
    const-string v1, "com.huami.watchface.SlptWatchService.disable.sportView"

    goto :goto_0

    .line 2268
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "startTimestamp":J
    :cond_1
    const-string v1, "HmSensorHubManager"

    const-string v4, "Defaut SLPT update rate"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const-string v1, "clockperiod"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private registerConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 1528
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "clientId":Ljava/lang/String;
    sget-boolean v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1530
    const-string v1, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  registerConfigFinishListener l :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1534
    const-string v1, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'s listener already exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_0
    return-void

    .line 1537
    :cond_1
    sget-boolean v1, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1538
    const-string v1, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  has registerConfigFinishListener l :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_2
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getIdForConfigFinishListener(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private registerDataReadyListener(JLcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;)V
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "listener"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;

    .prologue
    .line 1461
    sget-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1462
    const-string v0, "HmSensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDataReadyListener of sessionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1467
    const-string v0, "HmSensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener already existed!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_1
    :goto_0
    return-void

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    sget-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1472
    const-string v0, "HmSensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  has registerDataReadyListener l :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerKlvpCallback(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1492
    const-string v0, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRealtimeCallback register callback of pairid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    monitor-exit v1

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterConfigFinishListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1546
    sget-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1547
    const-string v0, "HmSensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterConfigFinishListener of client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mConfigFinishIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    return-void
.end method

.method private unregisterDataReadyListener(J)V
    .locals 3
    .param p1, "sesionId"    # J

    .prologue
    .line 1479
    sget-boolean v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1480
    const-string v0, "HmSensorHubManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDataReadyListener of session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mDataReadyListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    return-void
.end method

.method private unregisterKlvpCallback(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1500
    :try_start_0
    const-string v0, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove callback of pairid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRealTimeDataListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1503
    monitor-exit v1

    .line 1504
    return-void

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBleChannelCrowdState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1417
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 1418
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->updateBleChannelCrowdState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public algorithmAlignment(IFJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "distance"    # F
    .param p3, "timestamp"    # J

    .prologue
    .line 2461
    return-void
.end method

.method public cancelHealthSensorHistory(I)I
    .locals 4
    .param p1, "sessionId"    # I

    .prologue
    .line 1966
    const/4 v1, 0x0

    .line 1968
    .local v1, "state":I
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v0

    .line 1969
    .local v0, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->cancelHealthSensorHistory(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    .end local v0    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v1

    .line 1970
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public configureSensorHubGps(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2578
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2579
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mCallback:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->configureSensorHubGps(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2580
    :catch_0
    move-exception v0

    .line 2581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public configureSensorhub(I[B)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "arg"    # [B

    .prologue
    .line 2550
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2551
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->configureSensorhub(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2555
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2552
    :catch_0
    move-exception v0

    .line 2553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public continueSport(IJLandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2410
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2411
    return-void
.end method

.method public continueSport(IJLcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2399
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2400
    return-void
.end method

.method public delMcuNotification([B)V
    .locals 7
    .param p1, "uid"    # [B

    .prologue
    .line 1088
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v3

    .line 1089
    .local v3, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v2, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v2}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1090
    .local v2, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v4, 0x1

    iput-byte v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1091
    const/4 v4, 0x0

    iput-byte v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1092
    const/16 v4, 0x52

    iput-short v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1093
    array-length v4, p1

    new-array v4, v4, [B

    iput-object v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 1095
    iget-object v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    aget-byte v5, p1, v1

    aput-byte v5, v4, v1

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    .line 1098
    const-string v4, "HmSensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delMcuNotification uid lengh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .end local v1    # "i":I
    .end local v2    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v3    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_1
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public enableAllDayHeartMonitor(Z)V
    .locals 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 2855
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 2856
    .local v0, "mHeartRateConfig":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsAlldayAutoHeartRateEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2857
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 2858
    const-string v1, "HmSensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestWearDetection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to enableAllDayHeartMonitor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->requestWearDetection(Z)V

    .line 2860
    return-void
.end method

.method public enableMcuAmsStatus(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1073
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 1074
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1075
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v5, 0x1

    iput-byte v5, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1076
    const/4 v5, 0x0

    iput-byte v5, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1077
    const/16 v5, 0x55

    iput-short v5, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1078
    const/4 v5, 0x1

    new-array v5, v5, [B

    iput-object v5, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1079
    iget-object v5, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    :goto_0
    aput-byte v3, v5, v6

    .line 1080
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    .line 1081
    const-string v3, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMcuAmsStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_1
    return-void

    .restart local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .restart local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :cond_0
    move v3, v4

    .line 1079
    goto :goto_0

    .line 1082
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public enableNotificationFlip(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2991
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 2992
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsFlipEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 2993
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 2994
    return-void
.end method

.method public getAllGpsLocation()[B
    .locals 6

    .prologue
    .line 2034
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2035
    const-string v3, "HmSensorHubManager"

    const-string v4, "getAllGpsLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_0
    const/4 v0, 0x0

    .line 2039
    .local v0, "data":[B
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2040
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->getAllGpsLocation()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2045
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    if-eqz v0, :cond_1

    .line 2046
    const-string v3, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllGpsLocation, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_1
    return-object v0

    .line 2041
    :catch_0
    move-exception v1

    .line 2042
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFloorCount()I
    .locals 3

    .prologue
    .line 2920
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    .line 2921
    .local v0, "info":Lcom/huami/watch/sensor/SensorDataInfo;
    if-eqz v0, :cond_0

    .line 2922
    iget v1, v0, Lcom/huami/watch/sensor/SensorDataInfo;->mFloorCount:I

    .line 2925
    :goto_0
    return v1

    .line 2924
    :cond_0
    const-string v1, "HmSensorHubManager"

    const-string v2, "get null sensor data info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGpsState()Z
    .locals 3

    .prologue
    .line 2786
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2787
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1}, Lcom/huami/watch/sensor/IHmSensorHubService;->getGpsState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2791
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v2

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2791
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHeartHistoryData()[B
    .locals 5

    .prologue
    .line 2014
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2015
    const-string v3, "HmSensorHubManager"

    const-string v4, "getHeartHistoryData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_0
    const/4 v0, 0x0

    .line 2019
    .local v0, "data":[B
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2020
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->getHeartHistoryData()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2024
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-object v0

    .line 2021
    :catch_0
    move-exception v1

    .line 2022
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHeartRate()I
    .locals 3

    .prologue
    .line 2896
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    .line 2897
    .local v0, "info":Lcom/huami/watch/sensor/SensorDataInfo;
    if-eqz v0, :cond_0

    .line 2898
    iget v1, v0, Lcom/huami/watch/sensor/SensorDataInfo;->mHeartRate:I

    .line 2901
    :goto_0
    return v1

    .line 2900
    :cond_0
    const-string v1, "HmSensorHubManager"

    const-string v2, "get null sensor data info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeartRateQuality()I
    .locals 3

    .prologue
    .line 2910
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    .line 2911
    .local v0, "info":Lcom/huami/watch/sensor/SensorDataInfo;
    if-eqz v0, :cond_0

    .line 2912
    iget v1, v0, Lcom/huami/watch/sensor/SensorDataInfo;->mQuality:I

    .line 2915
    :goto_0
    return v1

    .line 2914
    :cond_0
    const-string v1, "HmSensorHubManager"

    const-string v2, "get null sensor data info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMcuSportTimes()I
    .locals 4

    .prologue
    .line 2179
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2180
    const-string v2, "HmSensorHubManager"

    const-string v3, "getMcuSportTimes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2184
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1}, Lcom/huami/watch/sensor/IHmSensorHubService;->getMcuSportTimes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2188
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v2

    .line 2185
    :catch_0
    move-exception v0

    .line 2186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2188
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;
    .locals 3

    .prologue
    .line 2883
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2884
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1}, Lcom/huami/watch/sensor/IHmSensorHubService;->getSensorDataInfo()Lcom/huami/watch/sensor/SensorDataInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2888
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-object v2

    .line 2885
    :catch_0
    move-exception v0

    .line 2886
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2888
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSportCalories()F
    .locals 3

    .prologue
    .line 2948
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    .line 2949
    .local v0, "info":Lcom/huami/watch/sensor/SensorDataInfo;
    if-eqz v0, :cond_0

    .line 2950
    iget v1, v0, Lcom/huami/watch/sensor/SensorDataInfo;->mSportCalories:F

    .line 2953
    :goto_0
    return v1

    .line 2952
    :cond_0
    const-string v1, "HmSensorHubManager"

    const-string v2, "get null sensor data info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSportInfoFinished(II)[B
    .locals 6
    .param p1, "type"    # I
    .param p2, "time"    # I

    .prologue
    .line 2058
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2059
    const-string v3, "HmSensorHubManager"

    const-string v4, "getSportInfoFinished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_0
    const/4 v0, 0x0

    .line 2063
    .local v0, "data":[B
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2064
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->getSportInfoFinished(II)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2069
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    if-eqz v0, :cond_1

    .line 2070
    const-string v3, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSportInfoFinished, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_1
    return-object v0

    .line 2065
    :catch_0
    move-exception v1

    .line 2066
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStep()I
    .locals 3

    .prologue
    .line 2934
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    .line 2935
    .local v0, "info":Lcom/huami/watch/sensor/SensorDataInfo;
    if-eqz v0, :cond_0

    .line 2936
    iget v1, v0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Step:I

    .line 2939
    :goto_0
    return v1

    .line 2938
    :cond_0
    const-string v1, "HmSensorHubManager"

    const-string v2, "get null sensor data info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initBleMCUChannel()V
    .locals 5

    .prologue
    .line 843
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->registerBleNotifyDispatcher(Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)V

    .line 844
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huami/watch/sensor/HmSensorHubGlobalValues;->getSensorHubServiceIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->sconn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyCharacteristicChange(Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;)Z
    .locals 5
    .param p1, "characteristicChange"    # Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    .prologue
    const/4 v4, 0x0

    .line 1040
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 1041
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1042
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v3, 0x1

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1043
    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1044
    const/16 v3, 0x3f

    iput-short v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    iput-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1050
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    .line 1054
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_1
    return v4

    .line 1048
    .restart local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .restart local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public pauseSport(IJLandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2378
    if-eqz p4, :cond_0

    .line 2379
    const-string v0, "timestamp"

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {p4, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2381
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2382
    return-void
.end method

.method public pauseSport(IJLcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2373
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "timestamp"

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2374
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2375
    return-void
.end method

.method public readWholedayStressData([B)I
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 2110
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2111
    const-string v3, "HmSensorHubManager"

    const-string v4, "readWholedayStressData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_0
    const/4 v1, 0x0

    .line 2115
    .local v1, "len":I
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2116
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->readWholedayStressData([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2122
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v1

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public readWholedayStressDataBlocked([B)I
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 2127
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2128
    const-string v3, "HmSensorHubManager"

    const-string v4, "readWholedayStressDataBlocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_0
    const/4 v1, 0x0

    .line 2132
    .local v1, "len":I
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2133
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->readWholedayStressDataBlocked([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2139
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v1

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerMcuBleEventListener(Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;)V
    .locals 2
    .param p1, "bleEventListener"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .prologue
    .line 952
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 953
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_0
    monitor-exit v1

    .line 957
    return-void

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseHealthSensorHistory(Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;J)V
    .locals 6
    .param p1, "data"    # Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    .param p2, "sessionId"    # J

    .prologue
    .line 1938
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 1939
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v2, Lcom/huami/watch/sensor/HealthSensorHistoryData;

    iget v3, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    iget-object v4, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    invoke-direct {v2, v3, v4}, Lcom/huami/watch/sensor/HealthSensorHistoryData;-><init>(I[B)V

    invoke-interface {v1, v2, p2, p3}, Lcom/huami/watch/sensor/IHmSensorHubService;->releaseHealthSensorHistory(Lcom/huami/watch/sensor/HealthSensorHistoryData;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseHealthSensorHistoryData(Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)V
    .locals 5
    .param p1, "data"    # Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .prologue
    .line 1952
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 1953
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v2, Lcom/huami/watch/sensor/HealthSensorHistoryData;

    iget v3, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    iget-object v4, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    invoke-direct {v2, v3, v4}, Lcom/huami/watch/sensor/HealthSensorHistoryData;-><init>(I[B)V

    invoke-interface {v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->releaseHealthSensorHistoryData(Lcom/huami/watch/sensor/HealthSensorHistoryData;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 1955
    :catch_0
    move-exception v0

    .line 1956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestBleDeviceEvent()V
    .locals 4

    .prologue
    .line 976
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 977
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 978
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v3, 0x2

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 979
    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 980
    const/16 v3, 0x3d

    iput-short v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 981
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 982
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestBleServiceInfo(I)V
    .locals 5
    .param p1, "srvId"    # I

    .prologue
    .line 880
    :try_start_0
    new-instance v3, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    invoke-direct {v3}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;-><init>()V

    .line 881
    .local v3, "serviceRequestInfo":Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    iput p1, v3, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->srvId:I

    .line 882
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 883
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 884
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v4, 0x2

    iput-byte v4, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 885
    const/4 v4, 0x0

    iput-byte v4, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 886
    const/16 v4, 0x3c

    iput-short v4, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 887
    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 888
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v2, v1, v4}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    .end local v3    # "serviceRequestInfo":Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestHealthSensorHistory(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;I)J
    .locals 7
    .param p1, "listener"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;
    .param p2, "minIndex"    # I

    .prologue
    .line 1919
    const-wide/16 v2, 0x0

    .line 1921
    .local v2, "sessionId":J
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 1922
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v5, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRequestKlvpDataLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mCallback:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mHealthDataDispatcher:Lcom/huami/watch/sensor/IDataDispatcher;

    invoke-interface {v1, v4, v6, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->requestHealthSensorHistory(Landroid/os/IBinder;Lcom/huami/watch/sensor/IDataDispatcher;I)J

    move-result-wide v2

    .line 1924
    invoke-direct {p0, v2, v3, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerDataReadyListener(JLcom/huami/watch/sensor/HmSensorHubConfigManager$OnDataReadyListener;)V

    .line 1925
    monitor-exit v5

    .line 1930
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-wide v2

    .line 1925
    .restart local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1926
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catch_0
    move-exception v0

    .line 1927
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "HmSensorHubManager"

    const-string v5, "remote call error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestHealthSensorHistoryData(I)Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    .locals 6
    .param p1, "minIndex"    # I

    .prologue
    .line 1902
    const/4 v0, 0x0

    .line 1904
    .local v0, "data":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 1905
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->requestHealthSensorHistoryData(I)Lcom/huami/watch/sensor/HealthSensorHistoryData;

    move-result-object v0

    .line 1906
    new-instance v3, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    iget v4, v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    iget-object v5, v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    invoke-direct {v3, v4, v5}, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;-><init>(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-object v3

    .line 1907
    :catch_0
    move-exception v1

    .line 1908
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1910
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestMcuSystemTime()V
    .locals 4

    .prologue
    .line 992
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 993
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 994
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v3, 0x2

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 995
    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 996
    const/16 v3, 0x40

    iput-short v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 997
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 998
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestRealtimeData(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    .prologue
    .line 1983
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v3

    .line 1984
    .local v3, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v2, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v2}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1985
    .local v2, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v4, 0x2

    iput-byte v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1986
    const/4 v4, 0x0

    iput-byte v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1987
    const/4 v4, 0x2

    iput-short v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1988
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1993
    iget-object v5, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mRequestKlvpDataLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v3, v2, v4}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    move-result v1

    .line 1995
    .local v1, "pairId":I
    sget-boolean v4, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1996
    const-string v4, "HmSensorHubManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get pair id from sensor hub service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " be the key of callback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_0
    iget-object v4, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mPairIdTypeMap:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2001
    invoke-direct {p0, v1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerKlvpCallback(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)V

    .line 2002
    monitor-exit v5

    .line 2006
    .end local v1    # "pairId":I
    .end local v2    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v3    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2002
    .restart local v2    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .restart local v3    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2003
    .end local v2    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v3    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestWearDetection(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .prologue
    .line 2979
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2980
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mCallback:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->requestWearDetections(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2981
    :catch_0
    move-exception v0

    .line 2982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestWearDetection(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2965
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2966
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mCallback:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService;->requestWearDetection(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2970
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCommonCmdToMCU(BS[B)V
    .locals 6
    .param p1, "cmdType"    # B
    .param p2, "cmd"    # S
    .param p3, "data"    # [B

    .prologue
    .line 854
    const-string v3, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCommonCmdToMCU "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 857
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 858
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    iput-byte p1, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 859
    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 860
    iput-short p2, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 861
    iput-object p3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 862
    iget-object v3, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mMcuBleKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMcuAmsRemoteCmd(B)V
    .locals 6
    .param p1, "cmd"    # B

    .prologue
    .line 1058
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 1059
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    new-instance v1, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v1}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1060
    .local v1, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v3, 0x1

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1061
    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1062
    const/16 v3, 0x54

    iput-short v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1063
    const/4 v3, 0x1

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1064
    iget-object v3, v1, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    .line 1065
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    .line 1066
    const-string v3, "HmSensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMcuAmsRemoteCmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v1    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public set3DDistanceEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3028
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 3029
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIs3DDistanceEnabled(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 3030
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 3031
    return-void
.end method

.method public setApSportTimes(I)V
    .locals 4
    .param p1, "times"    # I

    .prologue
    .line 2198
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2199
    const-string v2, "HmSensorHubManager"

    const-string v3, "setApSportTimes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2203
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->setApSportTimes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDailyStepTarget(I)V
    .locals 4
    .param p1, "steps"    # I

    .prologue
    const/4 v3, 0x1

    .line 2215
    new-array v0, v3, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 2218
    .local v0, "params":[F
    const/16 v1, 0x9

    invoke-direct {p0, v1, v3, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubWakeupSource(IZ[F)I

    .line 2220
    return-void
.end method

.method public varargs setEnable(IZLcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;[F)V
    .locals 0
    .param p1, "wakeupSource"    # I
    .param p2, "enable"    # Z
    .param p3, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;
    .param p4, "params"    # [F

    .prologue
    .line 2507
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureWakeupSourceByKlvp(IZ[FLcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 2508
    return-void
.end method

.method public varargs setEnable(IZ[F)V
    .locals 1
    .param p1, "wakeupSource"    # I
    .param p2, "enable"    # Z
    .param p3, "params"    # [F

    .prologue
    .line 2484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setEnable(IZLcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;[F)V

    .line 2485
    return-void
.end method

.method public setEnableTouch(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3035
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 3036
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->setEnableTouch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3040
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 3037
    :catch_0
    move-exception v0

    .line 3038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHeartRateEnableInCrossRunning(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3010
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 3011
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsMeasureHrInCrossCountryRun(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 3012
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 3013
    return-void
.end method

.method public setIsUseThaWorkoutSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3022
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 3023
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMIsUseThaWorkoutSet(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 3024
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 3025
    return-void
.end method

.method public setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I
    .locals 10
    .param p1, "config"    # Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    .param p2, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    .prologue
    .line 2823
    const/4 v5, 0x1

    .line 2824
    .local v5, "result":I
    invoke-virtual {p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->getSerializedSize()I

    move-result v7

    new-array v1, v7, [B

    .line 2825
    .local v1, "flatArray":[B
    const-string v7, "HmSensorHubManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setKlvpConfig protobuf bytes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(bytes)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v2

    .line 2828
    .local v2, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    :goto_0
    new-instance v4, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v4}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 2833
    .local v4, "request":Lcom/huami/watch/klvp/KlvpRequest;
    const/4 v7, 0x1

    iput-byte v7, v4, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 2834
    const/4 v7, 0x0

    iput-byte v7, v4, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 2835
    iput-object v1, v4, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 2836
    const/4 v7, 0x4

    iput-short v7, v4, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 2838
    :try_start_1
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v6

    .line 2839
    .local v6, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v7, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v6, v4, v7}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    move-result v3

    .line 2840
    .local v3, "pairId":I
    if-eqz p2, :cond_0

    .line 2841
    invoke-direct {p0, v3, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerKlvpCallback(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2847
    .end local v3    # "pairId":I
    .end local v6    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :cond_0
    :goto_1
    return v5

    .line 2829
    .end local v4    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2843
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    :catch_1
    move-exception v0

    .line 2844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2845
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public setLongSitAlertSlot(F)V
    .locals 3
    .param p1, "timeSlot"    # F

    .prologue
    const/4 v2, 0x1

    .line 2228
    new-array v0, v2, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2231
    .local v0, "params":[F
    const/16 v1, 0x9

    invoke-direct {p0, v1, v2, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubWakeupSource(IZ[F)I

    .line 2232
    return-void
.end method

.method public setRealtimeStressDataDispatcher(Lcom/huami/watch/sensor/IStressDataDispatcher;)V
    .locals 4
    .param p1, "dispatcher"    # Lcom/huami/watch/sensor/IStressDataDispatcher;

    .prologue
    .line 2099
    const-string v2, "HmSensorHubManager"

    const-string v3, "STRESS:registerStressDataDispatcher"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2103
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->registerStressDataDispatcher(Lcom/huami/watch/sensor/IStressDataDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSLPTUpdateAt1Hz(Z)V
    .locals 2
    .param p1, "is1Hz"    # Z

    .prologue
    .line 2241
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2242
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IHmSensorHubService;->configSLPTUpdate1Hz(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSportControl(II)V
    .locals 4
    .param p1, "subType"    # I
    .param p2, "arg"    # I

    .prologue
    .line 2162
    sget-boolean v2, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2163
    const-string v2, "HmSensorHubManager"

    const-string v3, "setSportControl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2167
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->setSportControl(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSportStepModel([I)V
    .locals 3
    .param p1, "stepModel"    # [I

    .prologue
    .line 2867
    if-nez p1, :cond_0

    .line 2868
    const-string v1, "HmSensorHubManager"

    const-string v2, "null step model, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :goto_0
    return-void

    .line 2871
    :cond_0
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 2872
    .local v0, "mStepModelConfig":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    iput-object p1, v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->mStepModel:[I

    .line 2873
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    goto :goto_0
.end method

.method public setSwimmingPoolLen(I)V
    .locals 2
    .param p1, "swimmingPollLen"    # I

    .prologue
    .line 3001
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 3002
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSwimPoolLen(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 3003
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 3004
    return-void
.end method

.method public setTargetEteTrainingEffect(I)V
    .locals 2
    .param p1, "effect"    # I

    .prologue
    .line 3016
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 3017
    .local v0, "config":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {v0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMSportTargetTrainingEffect(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 3018
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setKlvpConfig(Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)I

    .line 3019
    return-void
.end method

.method public setUserInfo(Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;)Z
    .locals 1
    .param p1, "userInfo"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;

    .prologue
    .line 1826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->setUserInfo(Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)Z

    move-result v0

    return v0
.end method

.method public setUserInfo(Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)Z
    .locals 12
    .param p1, "userInfo"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;
    .param p2, "callback"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1833
    sget-boolean v9, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1834
    const-string v9, "HmSensorHubManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set user info to sensor hub :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    if-nez p1, :cond_1

    .line 1837
    const-string v8, "HmSensorHubManager"

    const-string v9, "try to set null user info !"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :goto_0
    return v7

    .line 1840
    :cond_1
    new-instance v6, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;-><init>()V

    .line 1841
    .local v6, "sportConfig":Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserSex()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1842
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserSex()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserSex(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1844
    :cond_2
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserAge()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1845
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserAge()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserAge(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1847
    :cond_3
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserHeightMeter()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1848
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserHeightMeter()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserHeightMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1850
    :cond_4
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserWeightKg()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1851
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserWeightKg()F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserWeightKg(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1853
    :cond_5
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserIsWearOnLeft()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1854
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->isUserWearOnLeft()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserIsWearOnLeft(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1856
    :cond_6
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserBodyFatRate()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1857
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserBodyFatRate()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserBodyFatRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1859
    :cond_7
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserExerciseRate()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1860
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserExerciseRate()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserExerciseRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1862
    :cond_8
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserIsVegnism()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1863
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->isUserVeganism()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserIsVeganism(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1865
    :cond_9
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserSkin()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1866
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->getUserSkin()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserSkin(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1868
    :cond_a
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->hasUserIsLeftHandler()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1869
    invoke-virtual {p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$UserInfo;->isUserLeftHander()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->setMUserIsLeftHander(Z)Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;

    .line 1871
    :cond_b
    invoke-virtual {v6}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->getSerializedSize()I

    move-result v9

    new-array v1, v9, [B

    .line 1872
    .local v1, "flatArray":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v2

    .line 1874
    .local v2, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    :try_start_0
    invoke-virtual {v6, v2}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    :goto_1
    new-instance v4, Lcom/huami/watch/klvp/KlvpRequest;

    invoke-direct {v4}, Lcom/huami/watch/klvp/KlvpRequest;-><init>()V

    .line 1879
    .local v4, "request":Lcom/huami/watch/klvp/KlvpRequest;
    iput-byte v8, v4, Lcom/huami/watch/klvp/KlvpRequest;->cmd:B

    .line 1880
    iput-byte v7, v4, Lcom/huami/watch/klvp/KlvpRequest;->msgRemain:B

    .line 1881
    iput-object v1, v4, Lcom/huami/watch/klvp/KlvpRequest;->configValue:[B

    .line 1882
    const/4 v9, 0x4

    iput-short v9, v4, Lcom/huami/watch/klvp/KlvpRequest;->target:S

    .line 1884
    :try_start_1
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v5

    .line 1885
    .local v5, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    iget-object v9, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mKlvpResponseDispatcher:Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    invoke-interface {v5, v4, v9}, Lcom/huami/watch/sensor/IHmSensorHubService;->sendKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    move-result v3

    .line 1886
    .local v3, "pairId":I
    if-eqz p2, :cond_c

    .line 1887
    invoke-direct {p0, v3, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->registerKlvpCallback(ILcom/huami/watch/sensor/HmSensorHubConfigManager$OnKlvpDataListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    move v7, v8

    .line 1893
    goto/16 :goto_0

    .line 1875
    .end local v3    # "pairId":I
    .end local v4    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v5    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1889
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "request":Lcom/huami/watch/klvp/KlvpRequest;
    :catch_1
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public startBatchModeGPS()V
    .locals 1

    .prologue
    .line 2561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubGps(I)V

    .line 2562
    return-void
.end method

.method public startChangeItemTimer(IJ)V
    .locals 2
    .param p1, "changeToSportType"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 2284
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->notifySLPTChangeItem(ZIJ)V

    .line 2285
    return-void
.end method

.method public startMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;J)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J

    .prologue
    .line 2304
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2305
    return-void
.end method

.method public startMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;JI)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J
    .param p4, "mixSportType"    # I

    .prologue
    .line 2308
    const/4 v0, 0x4

    const v1, 0xffff

    and-int/2addr v1, p4

    shl-int/lit8 v1, v1, 0x10

    or-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2309
    return-void
.end method

.method public startSport(IJLandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2354
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4, p5}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2355
    return-void
.end method

.method public startSport(IJLcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2342
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2343
    return-void
.end method

.method public stopBatchModeGPS()V
    .locals 1

    .prologue
    .line 2568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubGps(I)V

    .line 2569
    return-void
.end method

.method public stopChangeItemTimer(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    const/4 v0, 0x0

    .line 2292
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->notifySLPTChangeItem(ZIJ)V

    .line 2293
    return-void
.end method

.method public stopMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;J)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J

    .prologue
    .line 2316
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2317
    return-void
.end method

.method public stopMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;JI)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J
    .param p4, "mixSportType"    # I

    .prologue
    .line 2312
    const/4 v0, 0x4

    const v1, 0xffff

    and-int/2addr v1, p4

    shl-int/lit8 v1, v1, 0x10

    or-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2313
    return-void
.end method

.method public stopMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;JLandroid/os/Bundle;)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2324
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p4, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2325
    return-void
.end method

.method public stopMixedSport(Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;JLandroid/os/Bundle;I)V
    .locals 2
    .param p1, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;
    .param p2, "timestamp"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "mixSportType"    # I

    .prologue
    .line 2320
    const/4 v0, 0x4

    const v1, 0xffff

    and-int/2addr v1, p5

    shl-int/lit8 v1, v1, 0x10

    or-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1, p4, p1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2321
    return-void
.end method

.method public stopSport(IJLcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "timestamp"    # J
    .param p4, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2429
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p4}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2430
    return-void
.end method

.method public stopSport(ILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "l"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;

    .prologue
    .line 2440
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->configureSensorHubAlgorithm(IILandroid/os/Bundle;Lcom/huami/watch/sensor/HmSensorHubConfigManager$OnConfigFinishListener;)V

    .line 2441
    return-void
.end method

.method public syncGpxTrailData([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 2815
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2816
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->syncGpxTrailData([BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2820
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2817
    :catch_0
    move-exception v0

    .line 2818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public syncSportCfgData([BI)I
    .locals 5
    .param p1, "cfg"    # [B
    .param p2, "rw"    # I

    .prologue
    .line 2083
    sget-boolean v3, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2084
    const-string v3, "HmSensorHubManager"

    const-string v4, "syncSportCfgData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_0
    const/4 v1, 0x0

    .line 2088
    .local v1, "len":I
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v2

    .line 2089
    .local v2, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v2, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->syncSportCfgData([BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2094
    .end local v2    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return v1

    .line 2090
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterMcuBleEventListener(Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;)Z
    .locals 3
    .param p1, "bleEventListener"    # Lcom/huami/watch/sensor/HmSensorHubConfigManager$McuBleEventListener;

    .prologue
    .line 964
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 965
    .local v0, "success":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->mBleEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 967
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 967
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeSportChannel([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 2801
    :try_start_0
    invoke-direct {p0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getService()Lcom/huami/watch/sensor/IHmSensorHubService;

    move-result-object v1

    .line 2802
    .local v1, "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    invoke-interface {v1, p1, p2}, Lcom/huami/watch/sensor/IHmSensorHubService;->syncGpxTrailData([BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    .end local v1    # "service":Lcom/huami/watch/sensor/IHmSensorHubService;
    :goto_0
    return-void

    .line 2803
    :catch_0
    move-exception v0

    .line 2804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
