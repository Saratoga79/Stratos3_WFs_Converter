.class public Lcom/ingenic/iwds/slpt/config/SlptSportConfig;
.super Ljava/lang/Object;
.source "SlptSportConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/config/SlptSportConfig$SportType;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_NULL:I = 0x0

.field public static final INTENT_ACTION_SPORT_DISABLE:I = 0x2

.field public static final INTENT_ACTION_SPORT_ENABLE:I = 0x1

.field public static final INTENT_ACTION_SPORT_RESTART:I = 0x4

.field public static final INTENT_ACTION_SPORT_STOP:I = 0x3

.field public static final INTENT_ACTION_SPORT_TRAIN_RUN:I = 0x5

.field public static final PAUSE_TYPE_DISTANCE_KM:I = 0x2

.field public static final PAUSE_TYPE_DISTANCE_M:I = 0x3

.field public static final PAUSE_TYPE_DISTANCE_NULL:I = 0x1

.field public static final PAUSE_TYPE_DOWNHILL_TOTAL_DISTANCE:I = 0x4

.field public static final PAUSE_TYPE_ROPE_SKIPT:I = 0x6

.field public static final PAUSE_TYPE_ROW_COUNT:I = 0x7

.field public static final PAUSE_TYPE_TENNIS_STROKES:I = 0x5

.field public static final RUNNING_SPORT_MODE_NAME:Ljava/lang/String; = "sport_mode"

.field public static final SPORT_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final SPORT_BUNDLE_NAME:Ljava/lang/String; = "sport_bundle"

.field public static final SPORT_CHANGE_NEXT_TYPE:Ljava/lang/String; = "sport_change_to"

.field public static final SPORT_CLOCK_PERIOD_KEY:Ljava/lang/String; = "clockperiod"

.field public static final SPORT_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final SPORT_MULTI_ENABLE_KEY:Ljava/lang/String; = "key_multi_sport"

.field public static final SPORT_REMAIN_HOUR:Ljava/lang/String; = "remain_hour"

.field public static final SPORT_STOP_MODE_NAME:Ljava/lang/String; = "stop_mode"

.field public static final SPORT_STOP_TIME_KEY:Ljava/lang/String; = "timestamp"

.field public static final SPORT_TRAIN_UNIT:Ljava/lang/String; = "train_unit"

.field public static final SPORT_VIEW_TYPE:Ljava/lang/String; = "sport_view_type"

.field public static final SPORT_VIEW_TYPE_DISABLE_KEY:Ljava/lang/String; = "disable_view_type"

.field public static final SPORT_VIEW_TYPE_ENABLE_KEY:Ljava/lang/String; = "enable_view_type"

.field public static final SPORT_VIEW_TYPE_PAUSE_KEY:Ljava/lang/String; = "pause_view_type"

.field public static final SPORT_WITH_GPS_TYPE:Ljava/lang/String; = "sport_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
