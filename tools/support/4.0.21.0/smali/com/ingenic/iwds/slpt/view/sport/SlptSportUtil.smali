.class public Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;
.super Ljava/lang/Object;
.source "SlptSportUtil.java"


# static fields
.field protected static final BG_ALTITUDE_INVALID:S

.field protected static final BG_ALTITUDE_NEGATIVE:S

.field protected static final BG_AVG_PACE_INVISABLE:S

.field protected static final BG_AVG_PACE_LAYOUT:S

.field protected static final BG_AVG_PACE_SEP:S

.field protected static final BG_AVG_SPEED_SEP:S

.field protected static final BG_CLOCK_SECOND:S

.field protected static final BG_CUR_LAP_HEARTRATE_INVALID:S

.field protected static final BG_CUR_LAP_PACE_DEFAULT:S

.field protected static final BG_CUR_LAP_PACE_LAYOUT:S

.field protected static final BG_CUR_LAP_SPEED_SEP:S

.field protected static final BG_DATE_VIEW:S

.field protected static final BG_DISTANCE_SEP:S

.field protected static final BG_DISTANCE_START_POINT:S

.field protected static final BG_DOWNHILL_AVG_SPEED_SEP:S

.field protected static final BG_DOWNHILL_MAX_SPEED_SEP:S

.field protected static final BG_DOWNHILL_SINGLE_DISTANCE_SEP:S

.field protected static final BG_DOWNHILL_TOTAL_DISTANCE_SEP:S

.field protected static final BG_FLOOR_INVALID:S

.field protected static final BG_HEARTRATE_ANAEROBIC:S

.field protected static final BG_HEARTRATE_FAT_BURN:S

.field protected static final BG_HEARTRATE_HEART_LUNG:S

.field protected static final BG_HEARTRATE_INVALID:S

.field protected static final BG_HEARTRATE_NORMAL:S

.field protected static final BG_HEARTRATE_RISK:S

.field protected static final BG_HEARTRATE_STRENGTH:S

.field protected static final BG_HEARTRATE_WARM_UP:S

.field protected static final BG_HOUR_AM:S

.field protected static final BG_HOUR_PM:S

.field protected static final BG_HRR_PERCENT:S

.field protected static final BG_KM_ICON_VIEW:S

.field protected static final BG_LASTHEART_INVALID:S

.field protected static final BG_LAST_LAP_HEARTRATE_INVALID:S

.field protected static final BG_LAST_LAP_PACE_DEFAULT:S

.field protected static final BG_LAST_LAP_PACE_LAYOUT:S

.field protected static final BG_LAST_LAP_SPEED_SEP:S

.field protected static final BG_LATITUDE_LAYOUT:S

.field protected static final BG_LATITUDE_NORTH:S

.field protected static final BG_LATITUDE_SOUTH:S

.field protected static final BG_LONGITUDE_EAST:S

.field protected static final BG_LONGITUDE_LAYOUT:S

.field protected static final BG_LONGITUDE_WEST:S

.field protected static final BG_LOW_BATTERY_ICON_VIEW:S

.field protected static final BG_LOW_BATTERY_TEXT_VIEW:S

.field protected static final BG_MESSAGE_VIEW:S

.field protected static final BG_NORMAL:S

.field protected static final BG_PACE_INVISABLE:S

.field protected static final BG_PACE_LAYOUT:S

.field protected static final BG_PACE_SEP:S

.field protected static final BG_SLOPE_NEGATIVE:S

.field protected static final BG_SPEED_SEP:S

.field protected static final BG_SPORTH_PAUSE_SEP:S

.field protected static final BG_SPORTH_SEP:S

.field protected static final BG_SPORTH_TOTAL_SEP:S

.field protected static final BG_TARGET_STEP:S

.field protected static final BG_TODAY_SPORT_DISTACNE:S

.field protected static final BG_TOTALDISTANCE_SEP:S

.field protected static final BG_TOTALDISTANCE_VIEW:S

.field protected static final BG_VERTICALSEEPD_NEGATIVE:S

.field protected static final BG_VERTICALSPEED_SEP:S

.field protected static final BG_VERTICAL_SPEED_DOWN:S

.field protected static final BG_VERTICAL_SPEED_UP:S

.field protected static final BG_VR_DISTANCE_BACK:S

.field protected static final BG_VR_DISTANCE_LEAD:S

.field protected static final BG_VR_DISTANCE_SEP:S

.field protected static final BG_VR_TIME_BACK:S

.field protected static final BG_VR_TIME_LEAD:S

.field protected static final BG_WAKEUP_LOCK_VIEW:S

.field protected static final BG_WEEK_VIEW:S

.field public static final DISTANCE_FEET:I = 0x3

.field public static final DISTANCE_KM:I = 0x0

.field public static final DISTANCE_M:I = 0x1

.field public static final DISTANCE_MI:I = 0x2

.field public static final DISTANCE_YARD:I = 0x4

.field protected static I:S = 0x0s

.field public static final MPHM:I = 0x1

.field public static final MPKM:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    .line 14
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_NORMAL:S

    .line 15
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_INVALID:S

    .line 16
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_WARM_UP:S

    .line 17
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_FAT_BURN:S

    .line 18
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPEED_SEP:S

    .line 19
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_SPEED_SEP:S

    .line 20
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DISTANCE_SEP:S

    .line 21
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_MESSAGE_VIEW:S

    .line 22
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICALSPEED_SEP:S

    .line 23
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_PACE_SEP:S

    .line 24
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_PACE_SEP:S

    .line 25
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TOTALDISTANCE_SEP:S

    .line 26
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_ALTITUDE_NEGATIVE:S

    .line 27
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TOTALDISTANCE_VIEW:S

    .line 28
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_KM_ICON_VIEW:S

    .line 29
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DATE_VIEW:S

    .line 30
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_WEEK_VIEW:S

    .line 31
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LOW_BATTERY_TEXT_VIEW:S

    .line 32
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LOW_BATTERY_ICON_VIEW:S

    .line 33
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_ALTITUDE_INVALID:S

    .line 34
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TODAY_SPORT_DISTACNE:S

    .line 35
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LASTHEART_INVALID:S

    .line 36
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DISTANCE_START_POINT:S

    .line 37
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICALSEEPD_NEGATIVE:S

    .line 38
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_HEART_LUNG:S

    .line 39
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_STRENGTH:S

    .line 40
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HOUR_AM:S

    .line 41
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HOUR_PM:S

    .line 42
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_FLOOR_INVALID:S

    .line 43
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_NORMAL:S

    .line 44
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_ANAEROBIC:S

    .line 45
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_PACE_INVISABLE:S

    .line 46
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_PACE_INVISABLE:S

    .line 47
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_PACE_LAYOUT:S

    .line 48
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_PACE_LAYOUT:S

    .line 49
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CLOCK_SECOND:S

    .line 50
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICAL_SPEED_UP:S

    .line 51
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICAL_SPEED_DOWN:S

    .line 52
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_WAKEUP_LOCK_VIEW:S

    .line 53
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_AVG_SPEED_SEP:S

    .line 54
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_MAX_SPEED_SEP:S

    .line 55
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_SINGLE_DISTANCE_SEP:S

    .line 56
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_TOTAL_DISTANCE_SEP:S

    .line 57
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_LAYOUT:S

    .line 58
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_LAYOUT:S

    .line 59
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_EAST:S

    .line 60
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_WEST:S

    .line 61
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_NORTH:S

    .line 62
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_SOUTH:S

    .line 63
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HRR_PERCENT:S

    .line 64
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_RISK:S

    .line 65
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_PACE_LAYOUT:S

    .line 66
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_PACE_DEFAULT:S

    .line 67
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_SPEED_SEP:S

    .line 68
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_HEARTRATE_INVALID:S

    .line 69
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_SEP:S

    .line 70
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_LEAD:S

    .line 71
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_BACK:S

    .line 72
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_TIME_LEAD:S

    .line 73
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_TIME_BACK:S

    .line 74
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_PACE_LAYOUT:S

    .line 75
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_PACE_DEFAULT:S

    .line 76
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_SPEED_SEP:S

    .line 77
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_HEARTRATE_INVALID:S

    .line 78
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SLOPE_NEGATIVE:S

    .line 79
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_SEP:S

    .line 80
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_PAUSE_SEP:S

    .line 81
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_TOTAL_SEP:S

    .line 82
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TARGET_STEP:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAltitudeInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 112
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_ALTITUDE_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    .line 114
    return-void
.end method

.method public static setAltitudeNegativeView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 97
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_ALTITUDE_NEGATIVE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    .line 99
    return-void
.end method

.method public static setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 174
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HOUR_AM:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 176
    return-void
.end method

.method public static setAvgPaceDefaultView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 204
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_PACE_INVISABLE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 206
    return-void
.end method

.method public static setAvgPaceLayoutView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 214
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_PACE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 216
    return-void
.end method

.method public static setAvgSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 118
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_AVG_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 120
    return-void
.end method

.method public static setBgHeartrateAnaerobic(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 168
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_ANAEROBIC:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 170
    return-void
.end method

.method public static setBgHeartrateFatBurn(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 143
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_FAT_BURN:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 145
    return-void
.end method

.method public static setBgHeartrateHeartLung(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 163
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_HEART_LUNG:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 165
    return-void
.end method

.method public static setBgHeartrateNormal(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 133
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_NORMAL:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 135
    return-void
.end method

.method public static setBgHeartrateRisk(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 304
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_RISK:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 306
    return-void
.end method

.method public static setBgHeartrateWarmUp(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 138
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_WARM_UP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 140
    return-void
.end method

.method public static setBgLatitudeLayout(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 274
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 276
    return-void
.end method

.method public static setBgLongitudeLayoutView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 269
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 271
    return-void
.end method

.method public static setBgSlopeNegative(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 375
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SLOPE_NEGATIVE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 377
    return-void
.end method

.method public static setBgSporthPauseSep(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 385
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 387
    return-void
.end method

.method public static setBgSporthSep(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 380
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 382
    return-void
.end method

.method public static setBgSporthTotalSep(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 390
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPORTH_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 392
    return-void
.end method

.method public static setBgTargetStep(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 395
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TARGET_STEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 397
    return-void
.end method

.method public static setBgVrDistanceBack(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 360
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_BACK:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 362
    return-void
.end method

.method public static setBgVrDistanceLead(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 355
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_LEAD:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 357
    return-void
.end method

.method public static setBgVrDistanceSep(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 350
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_DISTANCE_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 352
    return-void
.end method

.method public static setBgVrTimeBack(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 370
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_TIME_BACK:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 372
    return-void
.end method

.method public static setBgVrTimeLead(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 365
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VR_TIME_LEAD:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 367
    return-void
.end method

.method public static setCPHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 344
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_HEARTRATE_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 346
    return-void
.end method

.method public static setCPSpeedSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 339
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 341
    return-void
.end method

.method public static setClockSecondView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 219
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CLOCK_SECOND:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 221
    return-void
.end method

.method public static setCurLapPaceDefaultView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 334
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_PACE_DEFAULT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 336
    return-void
.end method

.method public static setCurLapPaceLayoutView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 329
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_CUR_LAP_PACE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 331
    return-void
.end method

.method public static setDHAvgSpeedSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 249
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_AVG_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 251
    return-void
.end method

.method public static setDHMaxSpeedSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 254
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_MAX_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 256
    return-void
.end method

.method public static setDHSingleDistanceSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 259
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_SINGLE_DISTANCE_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 261
    return-void
.end method

.method public static setDHTotalDistanceSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 264
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DOWNHILL_TOTAL_DISTANCE_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 266
    return-void
.end method

.method public static setDistanceSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 123
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_DISTANCE_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 125
    return-void
.end method

.method public static setHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 148
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 150
    return-void
.end method

.method public static setHeartrateStrength(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 158
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HEARTRATE_STRENGTH:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 160
    return-void
.end method

.method public static setHrrPercentView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 299
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HRR_PERCENT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 301
    return-void
.end method

.method public static setLPHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 324
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_HEARTRATE_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 326
    return-void
.end method

.method public static setLPSpeedSepView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 319
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 321
    return-void
.end method

.method public static setLastHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 153
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LASTHEART_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 155
    return-void
.end method

.method public static setLastLapPaceDefaultView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 314
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_PACE_DEFAULT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 316
    return-void
.end method

.method public static setLastLapPaceLayoutView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 309
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LAST_LAP_PACE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 311
    return-void
.end method

.method public static setLatitudeNorthView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 289
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_NORTH:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 291
    return-void
.end method

.method public static setLatitudeSouthView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 294
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LATITUDE_SOUTH:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 296
    return-void
.end method

.method public static setLongitudeEastView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 279
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_EAST:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 281
    return-void
.end method

.method public static setLongitudeWestView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 284
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LONGITUDE_WEST:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 286
    return-void
.end method

.method public static setLowBatteryIconView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 239
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LOW_BATTERY_ICON_VIEW:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 241
    return-void
.end method

.method public static setLowBatteryTextView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 234
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_LOW_BATTERY_TEXT_VIEW:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 236
    return-void
.end method

.method public static setPaceDefaultView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 199
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_PACE_INVISABLE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 201
    return-void
.end method

.method public static setPaceLayoutView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 209
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_PACE_LAYOUT:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 211
    return-void
.end method

.method public static setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 179
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_HOUR_PM:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 181
    return-void
.end method

.method public static setSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 128
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_SPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 130
    return-void
.end method

.method public static setTodayDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 184
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TODAY_SPORT_DISTACNE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 186
    return-void
.end method

.method public static setTodayFloorInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 194
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_FLOOR_INVALID:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 196
    return-void
.end method

.method public static setTotalDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 189
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_TOTALDISTANCE_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 191
    return-void
.end method

.method public static setVerticalSpeedDown(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 229
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICAL_SPEED_DOWN:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 231
    return-void
.end method

.method public static setVerticalSpeedNegativeView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 102
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICALSEEPD_NEGATIVE:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    .line 104
    return-void
.end method

.method public static setVerticalSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    .prologue
    .line 107
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICALSPEED_SEP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    .line 109
    return-void
.end method

.method public static setVerticalSpeedUp(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 224
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_VERTICAL_SPEED_UP:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 226
    return-void
.end method

.method public static setWatchfaceLockView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 1
    .param p0, "view"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .prologue
    .line 244
    sget-short v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->BG_WAKEUP_LOCK_VIEW:S

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 246
    return-void
.end method
