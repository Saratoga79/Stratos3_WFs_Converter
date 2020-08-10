.class public abstract Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
.super Ljava/lang/Object;
.source "SlptViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;,
        Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;,
        Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;,
        Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:B = 0x1t

.field public static final ALIGN_BY_PARENT:B = 0x3t

.field public static final ALIGN_CENTER:B = 0x2t

.field public static final ALIGN_LEFT:B = 0x0t

.field public static final ALIGN_RIGHT:B = 0x1t

.field public static final ALIGN_TOP:B = 0x0t

.field public static final HORIZONTAL:B = 0x0t

.field protected static I:S = 0x0s

.field public static final INVALID_COLOR:I = 0xffffff

.field protected static final INVALID_COLOR_IN_NATIVE:I = -0x1

.field protected static final INVALID_PICTURE_NAME:Ljava/lang/String; = "invalid_picture"

.field public static final LAYOUT_FIT_BACKGROUND:I = 0x7fffffff

.field public static final LAYOUT_WRAP_CONTENT:I = 0x7ffffffe

.field public static final POSITION_BOTTOM:B = 0x1t

.field public static final POSITION_CENTER:B = 0x2t

.field public static final POSITION_LEFT:B = 0x0t

.field public static final POSITION_RIGHT:B = 0x1t

.field public static final POSITION_TOP:B = 0x0t

.field public static final RECT_FIT_BACKGROUND:B = 0x0t

.field public static final RECT_SPECIFY:B = 0x2t

.field public static final RECT_WRAP_CONTENT:B = 0x1t

.field protected static final SVIEW_ABSOLUTE_LAYOUT:S

.field protected static final SVIEW_ALTITUDE:S

.field protected static final SVIEW_ANALOG_AM_PM:S

.field protected static final SVIEW_ANALOG_DAY:S

.field protected static final SVIEW_ANALOG_HOUR:S

.field protected static final SVIEW_ANALOG_HOUR_WITH_MINUTE:S

.field protected static final SVIEW_ANALOG_MINUTE:S

.field protected static final SVIEW_ANALOG_MONTH:S

.field protected static final SVIEW_ANALOG_SECOND:S

.field protected static final SVIEW_ANALOG_TIME:S

.field protected static final SVIEW_ANALOG_WEEK:S

.field protected static final SVIEW_ARC_ANGLE_PIC:S

.field protected static final SVIEW_ARC_DISTANCE:S

.field protected static final SVIEW_ARC_PIC:S

.field protected static final SVIEW_ARC_STEP:S

.field protected static final SVIEW_ASCENDDISTANCE:S

.field protected static final SVIEW_ASCENDMETER:S

.field protected static final SVIEW_BATTERY:S

.field protected static final SVIEW_CALORIES:S

.field protected static final SVIEW_CALORIES_ARC_ANGLE_PIC:S

.field protected static final SVIEW_CALORIES_PIC_ARRAY:S

.field protected static final SVIEW_CUR_LAP_AVG_HEART:S

.field protected static final SVIEW_CUR_LAP_AVG_STEP_FREQ:S

.field protected static final SVIEW_CUR_LAP_DISTANCEF:S

.field protected static final SVIEW_CUR_LAP_DISTANCEL:S

.field protected static final SVIEW_CUR_LAP_PACEM:S

.field protected static final SVIEW_CUR_LAP_PACES:S

.field protected static final SVIEW_CUR_LAP_SPEEDF:S

.field protected static final SVIEW_CUR_LAP_SPEEDL:S

.field protected static final SVIEW_CUR_LAP_TIMEH:S

.field protected static final SVIEW_CUR_LAP_TIMEM:S

.field protected static final SVIEW_CUR_LAP_TIMES:S

.field protected static final SVIEW_DAY_H:S

.field protected static final SVIEW_DAY_L:S

.field protected static final SVIEW_DESCENDDISTANCE:S

.field protected static final SVIEW_DESCEND_METER:S

.field protected static final SVIEW_DISTANCEF:S

.field protected static final SVIEW_DISTANCEL:S

.field protected static final SVIEW_DISTANCE_ARC_ANGLE_PIC:S

.field protected static final SVIEW_DOWNHILL_AVG_SPEEDF:S

.field protected static final SVIEW_DOWNHILL_AVG_SPEEDL:S

.field protected static final SVIEW_DOWNHILL_MAX_SPEEDF:S

.field protected static final SVIEW_DOWNHILL_MAX_SPEEDL:S

.field protected static final SVIEW_DOWNHILL_NUMS:S

.field protected static final SVIEW_DOWNHILL_SINGLE_DISTANCEF:S

.field protected static final SVIEW_DOWNHILL_SINGLE_DISTANCEL:S

.field protected static final SVIEW_DOWNHILL_SINGLE_ELEVATION_LOSS:S

.field protected static final SVIEW_DOWNHILL_TOTAL_DISTANCEF:S

.field protected static final SVIEW_DOWNHILL_TOTAL_DISTANCEL:S

.field protected static final SVIEW_DRAWED_MONTH:S

.field protected static final SVIEW_FLOOR_NUMBER:S

.field protected static final SVIEW_FRAME_LAYOUT:S

.field protected static final SVIEW_GPS_LATITUDE_DEGREE:S

.field protected static final SVIEW_GPS_LATITUDE_MINUTE:S

.field protected static final SVIEW_GPS_LATITUDE_SECOND:S

.field protected static final SVIEW_GPS_LONGITUDE_DEGREE:S

.field protected static final SVIEW_GPS_LONGITUDE_MINUTE:S

.field protected static final SVIEW_GPS_LONGITUDE_SECOND:S

.field protected static final SVIEW_GROUP_AVG_CADENCE:S

.field protected static final SVIEW_GROUP_AVG_HR:S

.field protected static final SVIEW_GROUP_CALORIES:S

.field protected static final SVIEW_HEARTRATE:S

.field protected static final SVIEW_HOUR_H:S

.field protected static final SVIEW_HOUR_L:S

.field protected static final SVIEW_HRR_PERCENT_F:S

.field protected static final SVIEW_HRR_PERCENT_L:S

.field protected static final SVIEW_LASTHEARTRATE_ARC_ANGLE_PIC:S

.field protected static final SVIEW_LAST_HEARTRATE:S

.field protected static final SVIEW_LAST_HEARTRATE_WITH_INVALID:S

.field protected static final SVIEW_LAST_HEART_PIC_ARRAY:S

.field protected static final SVIEW_LAST_LAP_AVG_HEART:S

.field protected static final SVIEW_LAST_LAP_AVG_STEP_FREQ:S

.field protected static final SVIEW_LAST_LAP_PACEM:S

.field protected static final SVIEW_LAST_LAP_PACES:S

.field protected static final SVIEW_LAST_LAP_SPEEDF:S

.field protected static final SVIEW_LAST_LAP_SPEEDL:S

.field protected static final SVIEW_LAST_LAP_TIMEH:S

.field protected static final SVIEW_LAST_LAP_TIMEM:S

.field protected static final SVIEW_LAST_LAP_TIMES:S

.field protected static final SVIEW_LAYOUT:S = -0x1s

.field protected static final SVIEW_LINEAR_LAYOUT:S

.field protected static final SVIEW_MINUTE_H:S

.field protected static final SVIEW_MINUTE_L:S

.field protected static final SVIEW_MONTH_H:S

.field protected static final SVIEW_MONTH_L:S

.field protected static final SVIEW_MONTH_PIC_ARRAY:S

.field protected static final SVIEW_NOTIFY:S

.field protected static final SVIEW_NUM:S

.field protected static final SVIEW_PIC:S

.field protected static final SVIEW_PICTURE_GROUP:S

.field protected static final SVIEW_PICTURE_GROUP_FLASH:S

.field protected static final SVIEW_PICTURE_GROUP_STEP:S

.field protected static final SVIEW_PICTURE_GROUP_TODAY_DISTANCE:S

.field protected static final SVIEW_POWER_ARC_ANGLE_PIC:S

.field protected static final SVIEW_POWER_NUMBER:S

.field protected static final SVIEW_POWER_PIC_ARRAY:S

.field protected static final SVIEW_PRE_DRAWED_AM_PM:S

.field protected static final SVIEW_PRE_DRAWED_ANALOG:S

.field protected static final SVIEW_PRE_DRAWED_DAY:S

.field protected static final SVIEW_PRE_DRAWED_HOUR:S

.field protected static final SVIEW_PRE_DRAWED_HOUR_WITH_MINUTE:S

.field protected static final SVIEW_PRE_DRAWED_LAST_HEART:S

.field protected static final SVIEW_PRE_DRAWED_MINUTE:S

.field protected static final SVIEW_PRE_DRAWED_MONTH:S

.field protected static final SVIEW_PRE_DRAWED_NUM:S

.field protected static final SVIEW_PRE_DRAWED_POWER:S

.field protected static final SVIEW_PRE_DRAWED_SECOND:S

.field protected static final SVIEW_PRE_DRAWED_TIME:S

.field protected static final SVIEW_PRE_DRAWED_TODAY_DISTANCE:S

.field protected static final SVIEW_PRE_DRAWED_TODAY_STEP:S

.field protected static final SVIEW_PRE_DRAWED_WEEK:S

.field protected static final SVIEW_PULL_TIMEM:S

.field protected static final SVIEW_PULL_TIMES:S

.field protected static final SVIEW_RATEFM:S

.field protected static final SVIEW_RATEFS:S

.field protected static final SVIEW_RATEM:S

.field protected static final SVIEW_RATES:S

.field protected static final SVIEW_RETURN_TIMEM:S

.field protected static final SVIEW_RETURN_TIMES:S

.field protected static final SVIEW_ROTATE_CALORIES:S

.field protected static final SVIEW_ROTATE_DISTANCE:S

.field protected static final SVIEW_ROTATE_LAST_HEART:S

.field protected static final SVIEW_ROTATE_PIC:S

.field protected static final SVIEW_ROTATE_POWER:S

.field protected static final SVIEW_ROTATE_STEP:S

.field protected static final SVIEW_ROTATE_VIEW:S

.field protected static final SVIEW_RS_AVG_FREQ:S

.field protected static final SVIEW_RS_CURRENT_FREQ:S

.field protected static final SVIEW_RS_GROUP_AVG_FREQ:S

.field protected static final SVIEW_RS_GROUP_COUNT:S

.field protected static final SVIEW_RS_GROUP_NUM:S

.field protected static final SVIEW_RS_GROUP_TIMEM:S

.field protected static final SVIEW_RS_GROUP_TIMES:S

.field protected static final SVIEW_RS_TOTAL_COUNT:S

.field protected static final SVIEW_SECOND_H:S

.field protected static final SVIEW_SECOND_L:S

.field protected static final SVIEW_SLOPE:S

.field protected static final SVIEW_SPEEDFM:S

.field protected static final SVIEW_SPEEDFS:S

.field protected static final SVIEW_SPEEDM:S

.field protected static final SVIEW_SPEEDS:S

.field protected static final SVIEW_SPORTH:S

.field protected static final SVIEW_SPORTH_PAUSE:S

.field protected static final SVIEW_SPORTH_TOTAL:S

.field protected static final SVIEW_SPORTM:S

.field protected static final SVIEW_SPORTM_PAUSE:S

.field protected static final SVIEW_SPORTM_TOTAL:S

.field protected static final SVIEW_SPORTS:S

.field protected static final SVIEW_SPORTS_PAUSE:S

.field protected static final SVIEW_SPORTS_TOTAL:S

.field protected static final SVIEW_SPORT_STEP:S

.field protected static final SVIEW_STEPAVGFREQ:S

.field protected static final SVIEW_STEPCOUNT:S

.field protected static final SVIEW_STEPFREQ:S

.field protected static final SVIEW_STEPS_PIC_ARRAY:S

.field protected static final SVIEW_STEP_ARC_ANGLE_PIC:S

.field protected static final SVIEW_STEP_TARGET:S

.field protected static final SVIEW_SWIM_AVG_STROKE:S

.field protected static final SVIEW_SWIM_DPSF:S

.field protected static final SVIEW_SWIM_DPSL:S

.field protected static final SVIEW_SWIM_STROKE:S

.field protected static final SVIEW_SWIM_TRIPS:S

.field protected static final SVIEW_TDISTANCE_PIC_ARRAY:S

.field protected static final SVIEW_TEF:S

.field protected static final SVIEW_TEL:S

.field protected static final SVIEW_TENNIS_STROKES:S

.field protected static final SVIEW_TIME_NUM:S

.field protected static final SVIEW_TODAY_CARIS:S

.field protected static final SVIEW_TODAY_SPORT_DISTANCEF:S

.field protected static final SVIEW_TODAY_SPORT_DISTANCEL:S

.field protected static final SVIEW_TOTALDISTANCEF:S

.field protected static final SVIEW_TOTALDISTANCEL:S

.field protected static final SVIEW_VERTICALSPEEDF:S

.field protected static final SVIEW_VERTICALSPEEDL:S

.field protected static final SVIEW_VR_DISTANCEF:S

.field protected static final SVIEW_VR_DISTANCEL:S

.field protected static final SVIEW_VR_TIMEM:S

.field protected static final SVIEW_VR_TIMES:S

.field protected static final SVIEW_WEEK:S

.field protected static final SVIEW_WEEK_PIC_ARRAY:S

.field protected static final SVIEW_YEAR0:S

.field protected static final SVIEW_YEAR1:S

.field protected static final SVIEW_YEAR2:S

.field protected static final SVIEW_YEAR3:S

.field public static final VERTICAL:B = 0x1t


# instance fields
.field public alignParentX:B

.field public alignParentY:B

.field public alignX:B

.field public alignY:B

.field public background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

.field public centerHorizontal:B

.field public centerVertical:B

.field public descHeight:B

.field public descWidth:B

.field public id:S

.field public level:S

.field public padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

.field protected parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

.field public rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

.field public show:Z

.field public textColor:I

.field public textSize:F

.field public final type:S

.field public typeface:Landroid/graphics/Typeface;

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    .line 32
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PIC:S

    .line 33
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_NUM:S

    .line 34
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LINEAR_LAYOUT:S

    .line 35
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ABSOLUTE_LAYOUT:S

    .line 36
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_FRAME_LAYOUT:S

    .line 37
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TIME_NUM:S

    .line 38
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SECOND_L:S

    .line 39
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SECOND_H:S

    .line 40
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_MINUTE_L:S

    .line 41
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_MINUTE_H:S

    .line 42
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_HOUR_L:S

    .line 43
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_HOUR_H:S

    .line 44
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DAY_L:S

    .line 45
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DAY_H:S

    .line 46
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_WEEK:S

    .line 47
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_MONTH_L:S

    .line 48
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_MONTH_H:S

    .line 49
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_YEAR0:S

    .line 50
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_YEAR1:S

    .line 51
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_YEAR2:S

    .line 52
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_YEAR3:S

    .line 53
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_PIC:S

    .line 54
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_TIME:S

    .line 55
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_SECOND:S

    .line 56
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_MINUTE:S

    .line 57
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_HOUR:S

    .line 58
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_DAY:S

    .line 59
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_WEEK:S

    .line 60
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_MONTH:S

    .line 61
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_AM_PM:S

    .line 62
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ANALOG_HOUR_WITH_MINUTE:S

    .line 64
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEPCOUNT:S

    .line 65
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DISTANCEF:S

    .line 66
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DISTANCEL:S

    .line 67
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTH:S

    .line 68
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTM:S

    .line 69
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTS:S

    .line 70
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPEEDM:S

    .line 71
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPEEDS:S

    .line 72
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_HEARTRATE:S

    .line 73
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CALORIES:S

    .line 74
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEPFREQ:S

    .line 75
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPEEDFM:S

    .line 76
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPEEDFS:S

    .line 77
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RATEM:S

    .line 78
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RATES:S

    .line 79
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RATEFM:S

    .line 80
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RATEFS:S

    .line 81
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_BATTERY:S

    .line 82
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_NOTIFY:S

    .line 83
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VERTICALSPEEDF:S

    .line 84
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VERTICALSPEEDL:S

    .line 85
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ASCENDMETER:S

    .line 86
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TOTALDISTANCEF:S

    .line 87
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TOTALDISTANCEL:S

    .line 88
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ALTITUDE:S

    .line 89
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ARC_PIC:S

    .line 90
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ARC_STEP:S

    .line 91
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ARC_DISTANCE:S

    .line 92
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ARC_ANGLE_PIC:S

    .line 93
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_POWER_ARC_ANGLE_PIC:S

    .line 94
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEP_ARC_ANGLE_PIC:S

    .line 95
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_POWER_NUMBER:S

    .line 96
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEP_TARGET:S

    .line 97
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TODAY_SPORT_DISTANCEF:S

    .line 98
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TODAY_SPORT_DISTANCEL:S

    .line 99
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TODAY_CARIS:S

    .line 100
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_HEARTRATE:S

    .line 101
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DISTANCE_ARC_ANGLE_PIC:S

    .line 102
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PICTURE_GROUP:S

    .line 103
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PICTURE_GROUP_STEP:S

    .line 104
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_STEP:S

    .line 105
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_VIEW:S

    .line 106
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_DISTANCE:S

    .line 107
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DESCEND_METER:S

    .line 108
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEPAVGFREQ:S

    .line 109
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_NUM:S

    .line 110
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_ANALOG:S

    .line 111
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_TIME:S

    .line 112
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_SECOND:S

    .line 113
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_MINUTE:S

    .line 114
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_HOUR:S

    .line 115
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_DAY:S

    .line 116
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_WEEK:S

    .line 117
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_MONTH:S

    .line 118
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_AM_PM:S

    .line 119
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_HOUR_WITH_MINUTE:S

    .line 120
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ASCENDDISTANCE:S

    .line 121
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORT_STEP:S

    .line 122
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DESCENDDISTANCE:S

    .line 123
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_FLOOR_NUMBER:S

    .line 124
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTH_PAUSE:S

    .line 125
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTM_PAUSE:S

    .line 126
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTS_PAUSE:S

    .line 127
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTH_TOTAL:S

    .line 128
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTM_TOTAL:S

    .line 129
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SPORTS_TOTAL:S

    .line 130
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SWIM_TRIPS:S

    .line 131
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SWIM_STROKE:S

    .line 132
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SWIM_AVG_STROKE:S

    .line 133
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SWIM_DPSF:S

    .line 134
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SWIM_DPSL:S

    .line 135
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TEF:S

    .line 136
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TEL:S

    .line 137
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_TODAY_DISTANCE:S

    .line 138
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_TODAY_STEP:S

    .line 139
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_POWER:S

    .line 140
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PICTURE_GROUP_TODAY_DISTANCE:S

    .line 141
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PICTURE_GROUP_FLASH:S

    .line 142
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_AVG_SPEEDF:S

    .line 143
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_AVG_SPEEDL:S

    .line 144
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_MAX_SPEEDF:S

    .line 145
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_MAX_SPEEDL:S

    .line 146
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_NUMS:S

    .line 147
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_SINGLE_DISTANCEF:S

    .line 148
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_SINGLE_DISTANCEL:S

    .line 149
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_TOTAL_DISTANCEF:S

    .line 150
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_TOTAL_DISTANCEL:S

    .line 151
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DOWNHILL_SINGLE_ELEVATION_LOSS:S

    .line 152
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LONGITUDE_DEGREE:S

    .line 153
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LONGITUDE_MINUTE:S

    .line 154
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LONGITUDE_SECOND:S

    .line 155
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LATITUDE_DEGREE:S

    .line 156
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LATITUDE_MINUTE:S

    .line 157
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GPS_LATITUDE_SECOND:S

    .line 158
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TENNIS_STROKES:S

    .line 159
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_HRR_PERCENT_F:S

    .line 160
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_HRR_PERCENT_L:S

    .line 161
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_TIMEH:S

    .line 162
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_TIMEM:S

    .line 163
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_TIMES:S

    .line 164
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_PACEM:S

    .line 165
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_PACES:S

    .line 166
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_SPEEDF:S

    .line 167
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_SPEEDL:S

    .line 168
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_AVG_HEART:S

    .line 169
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_LAP_AVG_STEP_FREQ:S

    .line 170
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VR_DISTANCEF:S

    .line 171
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VR_DISTANCEL:S

    .line 172
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VR_TIMEM:S

    .line 173
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_VR_TIMES:S

    .line 174
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_CURRENT_FREQ:S

    .line 175
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_TOTAL_COUNT:S

    .line 176
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_AVG_FREQ:S

    .line 177
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_GROUP_NUM:S

    .line 178
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_GROUP_COUNT:S

    .line 179
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_GROUP_TIMEM:S

    .line 180
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_GROUP_TIMES:S

    .line 181
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RS_GROUP_AVG_FREQ:S

    .line 182
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_POWER:S

    .line 183
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_TIMEH:S

    .line 184
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_TIMEM:S

    .line 185
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_TIMES:S

    .line 186
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_DISTANCEF:S

    .line 187
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_DISTANCEL:S

    .line 188
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_PACEM:S

    .line 189
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_PACES:S

    .line 190
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_SPEEDF:S

    .line 191
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_SPEEDL:S

    .line 192
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_AVG_HEART:S

    .line 193
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CUR_LAP_AVG_STEP_FREQ:S

    .line 194
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PRE_DRAWED_LAST_HEART:S

    .line 195
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LASTHEARTRATE_ARC_ANGLE_PIC:S

    .line 196
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CALORIES_ARC_ANGLE_PIC:S

    .line 197
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_DRAWED_MONTH:S

    .line 198
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_HEARTRATE_WITH_INVALID:S

    .line 199
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_SLOPE:S

    .line 200
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GROUP_CALORIES:S

    .line 201
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GROUP_AVG_HR:S

    .line 202
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_GROUP_AVG_CADENCE:S

    .line 203
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PULL_TIMEM:S

    .line 204
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_PULL_TIMES:S

    .line 205
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RETURN_TIMEM:S

    .line 206
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_RETURN_TIMES:S

    .line 207
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_CALORIES:S

    .line 208
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_STEPS_PIC_ARRAY:S

    .line 209
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_CALORIES_PIC_ARRAY:S

    .line 210
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_TDISTANCE_PIC_ARRAY:S

    .line 211
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_POWER_PIC_ARRAY:S

    .line 212
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_WEEK_PIC_ARRAY:S

    .line 213
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_ROTATE_LAST_HEART:S

    .line 214
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_LAST_HEART_PIC_ARRAY:S

    .line 215
    sget-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->I:S

    sput-short v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->SVIEW_MONTH_PIC_ARRAY:S

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->initType()S

    move-result v0

    iput-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->type:S

    .line 279
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->x:I

    .line 284
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->y:I

    .line 294
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    .line 302
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    .line 310
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    .line 317
    iput-short v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->level:S

    .line 326
    iput-byte v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    .line 335
    iput-byte v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignY:B

    .line 344
    iput-byte v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descWidth:B

    .line 353
    iput-byte v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descHeight:B

    .line 361
    iput-byte v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->centerVertical:B

    .line 369
    iput-byte v1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->centerHorizontal:B

    .line 379
    iput-byte v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentX:B

    .line 389
    iput-byte v3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    .line 397
    iput-boolean v2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    .line 404
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->textSize:F

    .line 410
    const v0, -0xfeff

    iput v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->textColor:I

    .line 415
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->typeface:Landroid/graphics/Typeface;

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 648
    return-void
.end method

.method private setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 598
    packed-switch p1, :pswitch_data_0

    .line 606
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descHeight:B

    .line 607
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput p1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    .line 610
    :goto_0
    return-void

    .line 600
    :pswitch_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descHeight:B

    goto :goto_0

    .line 603
    :pswitch_1
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descHeight:B

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x7ffffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 583
    packed-switch p1, :pswitch_data_0

    .line 591
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descWidth:B

    .line 592
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput p1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    .line 595
    :goto_0
    return-void

    .line 585
    :pswitch_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descWidth:B

    goto :goto_0

    .line 588
    :pswitch_1
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descWidth:B

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x7ffffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static writePicture(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;Lcom/ingenic/iwds/slpt/view/core/Picture;)V
    .locals 1
    .param p0, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;
    .param p1, "picture"    # Lcom/ingenic/iwds/slpt/view/core/Picture;

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/view/core/Picture;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v0, "invalid_picture"

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getParent()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    return-object v0
.end method

.method public getRootParent()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    .prologue
    .line 637
    move-object v1, p0

    .line 638
    .local v1, "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    const/4 v0, 0x0

    .line 640
    .local v0, "parent":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :goto_0
    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    if-eqz v2, :cond_0

    .line 641
    iget-object v0, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->parent:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 642
    move-object v1, v0

    goto :goto_0

    .line 645
    :cond_0
    if-eq v1, p0, :cond_1

    .end local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :goto_1
    return-object v1

    .restart local v1    # "view":Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected abstract initType()S
.end method

.method registerPicture(Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;)V
    .locals 1
    .param p1, "container"    # Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;
    .param p2, "param"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$RegisterPictureParam;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/Picture$PictureContainer;->add(Lcom/ingenic/iwds/slpt/view/core/Picture;)Z

    .line 494
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    int-to-short v1, p1

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    .line 565
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    int-to-short v1, p2

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    .line 566
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    int-to-short v1, p3

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    .line 567
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    int-to-short v1, p4

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->bottom:S

    .line 568
    return-void
.end method

.method public setPadding(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;)V
    .locals 2
    .param p1, "padding"    # Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v1, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    .line 577
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v1, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    .line 578
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v1, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    .line 579
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v1, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->bottom:S

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->bottom:S

    .line 580
    return-void
.end method

.method public setRect(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setWidth(I)V

    .line 623
    invoke-direct {p0, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setHeight(I)V

    .line 624
    return-void
.end method

.method public setStart(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 541
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->x:I

    .line 542
    iput p2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->y:I

    .line 543
    return-void
.end method

.method public setTextAttr(FILandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "textColor"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 553
    iput p1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->textSize:F

    .line 554
    iput p2, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->textColor:I

    .line 555
    iput-object p3, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->typeface:Landroid/graphics/Typeface;

    .line 556
    return-void
.end method

.method public writeConfigure(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;

    .prologue
    .line 502
    iget-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->type:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 503
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->x:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 504
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->y:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 505
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 506
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 507
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 508
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iget-short v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->bottom:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 509
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iget v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iget v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 511
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(I)V

    .line 513
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget-object v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->picture:Lcom/ingenic/iwds/slpt/view/core/Picture$ImagePicture;

    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->writePicture(Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;Lcom/ingenic/iwds/slpt/view/core/Picture;)V

    .line 514
    iget-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->level:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 515
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 516
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignY:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 517
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descWidth:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 518
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->descHeight:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 519
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->centerHorizontal:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 520
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->centerVertical:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 521
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentX:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 522
    iget-byte v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(B)V

    .line 523
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->show:Z

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeBoolean(Z)V

    .line 524
    iget-short v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->id:S

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(S)V

    .line 525
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    iget v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    goto :goto_0
.end method
