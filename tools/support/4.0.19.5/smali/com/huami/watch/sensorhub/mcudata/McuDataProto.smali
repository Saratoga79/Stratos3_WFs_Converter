.class public interface abstract Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.super Ljava/lang/Object;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$CommonSettingsAndCommand;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;,
        Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    }
.end annotation


# static fields
.field public static final AP_MCU_FIND_PHONE:I = 0x2

.field public static final AP_MCU_STOP_FIND_PHONE:I = 0x3

.field public static final HAS_ALL:I = 0xff

.field public static final HAS_AQI:I = 0x8

.field public static final HAS_CURRENT_TEMP:I = 0x1

.field public static final HAS_HIGHEST_LOWEST_TEMP:I = 0x2

.field public static final HAS_SUNRISE_AND_SENSET:I = 0x20

.field public static final HAS_WEATHER:I = 0x4

.field public static final HAS_WIND_HUMIDITY:I = 0x10

.field public static final HRType_MAX:I = 0x1

.field public static final HRType_RESERVE:I = 0x0

.field public static final MCU_AP_DAILY_WEATHER_REMINDER:I = 0xd

.field public static final MCU_AP_FIND_PHONE_OK:I = 0x4

.field public static final MCU_AP_FIND_WATCH:I = 0x1

.field public static final MCU_AP_LOST_CONN:I = 0xa

.field public static final MCU_AP_MUSIC_CONTROL:I = 0xe

.field public static final MCU_AP_NOTIFY_COMPANION_VERSION:I = 0xb

.field public static final MCU_AP_SETTINGS_CALORIE_GOAL:I = 0x9

.field public static final MCU_AP_SETTINGS_CALORIE_GOAL_REMINDER:I = 0xc

.field public static final MCU_AP_SETTINGS_GOAL_REMINDER:I = 0x6

.field public static final MCU_AP_SETTINGS_MILEAGE:I = 0x7

.field public static final MCU_AP_SETTINGS_REALTIME_HEART:I = 0x8

.field public static final MCU_AP_SETTINGS_SEDENTARY:I = 0x5

.field public static final MCU_AP_TOTAL_PRESSURE:I = 0xf

.field public static final RecordAction_ADD:I = 0x1

.field public static final RecordAction_DELETE:I = 0x4

.field public static final RecordAction_UPDATE:I = 0x2

.field public static final TYPE_DataModel_USERINFO:I = 0x1

.field public static final TYPE_DataModel_WEATHER:I = 0x2
