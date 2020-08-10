.class public interface abstract Lcom/huami/watch/sensorhub/SensorHubProtos;
.super Ljava/lang/Object;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;,
        Lcom/huami/watch/sensorhub/SensorHubProtos$SportConfig;
    }
.end annotation


# static fields
.field public static final GPS_NEEDED_AND_VALID:I = 0x2

.field public static final GPS_NEEDED_BUT_AGPS:I = 0x8

.field public static final GPS_NEEDED_BUT_BREAK:I = 0x10

.field public static final GPS_NEEDED_BUT_INVALID:I = 0x4

.field public static final GPS_NOT_NEEDED:I = 0x1

.field public static final STATUS_SPORT_AUTO_PAUSED:I = 0x10

.field public static final STATUS_SPORT_MANUAL_STOPPED:I = 0x8

.field public static final STATUS_SPORT_NEW_STARTED:I = 0x2

.field public static final STATUS_SPORT_NOT_LAUNCHED:I = 0x1

.field public static final STATUS_SPORT_RESUMED:I = 0x4

.field public static final TENNIS_BACKHAND:I = 0x2

.field public static final TENNIS_FOREHAND:I = 0x1

.field public static final TENNIS_MAX:I = 0x4

.field public static final TENNIS_SERVE:I = 0x3

.field public static final TENNIS_STROKES:I = 0x0

.field public static final TYPE_SEX_FEMALE:I = 0x0

.field public static final TYPE_SEX_MALE:I = 0x1

.field public static final TYPE_SEX_NA:I = 0x2

.field public static final TYPE_SKIN_BLACK:I = 0x3

.field public static final TYPE_SKIN_BROWN:I = 0x2

.field public static final TYPE_SKIN_WHITE:I = 0x1

.field public static final TYPE_SKIN_YELLOW:I = 0x0

.field public static final TYPE_SPORT_ALPINE_SKIING:I = 0x2b

.field public static final TYPE_SPORT_ARCHERY:I = 0x5d

.field public static final TYPE_SPORT_BADMINTON:I = 0x5c

.field public static final TYPE_SPORT_BALLET_DANCE:I = 0x47

.field public static final TYPE_SPORT_BASEBALL:I = 0x4f

.field public static final TYPE_SPORT_BASKETBALL:I = 0x55

.field public static final TYPE_SPORT_BELLY_DANCE:I = 0x48

.field public static final TYPE_SPORT_BMX:I = 0x30

.field public static final TYPE_SPORT_BOARD_SKIING:I = 0x2a

.field public static final TYPE_SPORT_BOWLING:I = 0x50

.field public static final TYPE_SPORT_BOXING:I = 0x61

.field public static final TYPE_SPORT_CALORIES_RUN:I = 0x3

.field public static final TYPE_SPORT_CLIMBING_TRAINING:I = 0x36

.field public static final TYPE_SPORT_CORE_TRAINING:I = 0x32

.field public static final TYPE_SPORT_CRICKET_BALL:I = 0x4e

.field public static final TYPE_SPORT_CROSS_COUNTRY_RUN:I = 0x7

.field public static final TYPE_SPORT_CROSS_COUNTRY_SKIING:I = 0x2e

.field public static final TYPE_SPORT_CURLING:I = 0x29

.field public static final TYPE_SPORT_DANCE:I = 0x4c

.field public static final TYPE_SPORT_DISTANCE_RUN:I = 0x2

.field public static final TYPE_SPORT_ELLIPTICAL_MACHINE:I = 0xc

.field public static final TYPE_SPORT_EQUESTIAN:I = 0x5e

.field public static final TYPE_SPORT_EXERCISE:I = 0x10

.field public static final TYPE_SPORT_FENCING:I = 0x5f

.field public static final TYPE_SPORT_FISHING:I = 0x40

.field public static final TYPE_SPORT_FLEXIBLE_TRAINING:I = 0x37

.field public static final TYPE_SPORT_FOOTBALL:I = 0x52

.field public static final TYPE_SPORT_FREE_SPARRING:I = 0x68

.field public static final TYPE_SPORT_GATEBALL:I = 0x57

.field public static final TYPE_SPORT_GOLF:I = 0x53

.field public static final TYPE_SPORT_GOLF_RANGE:I = 0x14

.field public static final TYPE_SPORT_GOLF_ROUND:I = 0x13

.field public static final TYPE_SPORT_GOLF_SWING:I = 0x54

.field public static final TYPE_SPORT_GYMNASTICS:I = 0x3b

.field public static final TYPE_SPORT_HANDBALL:I = 0x5b

.field public static final TYPE_SPORT_HIGH_INTENSITY_TRAINING:I = 0x31

.field public static final TYPE_SPORT_HOCKEY_BALL:I = 0x5a

.field public static final TYPE_SPORT_HUNTING:I = 0x3f

.field public static final TYPE_SPORT_INDOOR_FITNESS:I = 0x18

.field public static final TYPE_SPORT_INDOOR_RIDING:I = 0xa

.field public static final TYPE_SPORT_INDOOR_RUN:I = 0x8

.field public static final TYPE_SPORT_INDOOR_SKATING:I = 0x2d

.field public static final TYPE_SPORT_INDOOR_WALK:I = 0x28

.field public static final TYPE_SPORT_INTERMITTENT:I = 0x5

.field public static final TYPE_SPORT_JUDO:I = 0x62

.field public static final TYPE_SPORT_KARATE:I = 0x60

.field public static final TYPE_SPORT_MARTIAL_ARTS:I = 0x67

.field public static final TYPE_SPORT_MIXED_AEROBIC:I = 0x33

.field public static final TYPE_SPORT_MOUNTAINEER:I = 0xd

.field public static final TYPE_SPORT_MOUNTAIN_RIDING:I = 0x2f

.field public static final TYPE_SPORT_MUAY_THAI:I = 0x65

.field public static final TYPE_SPORT_NORMAL:I = 0x0

.field public static final TYPE_SPORT_ON_FOOT:I = 0x16

.field public static final TYPE_SPORT_OPEN_WATER_SWIM:I = 0xf

.field public static final TYPE_SPORT_OUTDOOR_ROWING:I = 0x42

.field public static final TYPE_SPORT_OUTDOOR_RUN:I = 0x1

.field public static final TYPE_SPORT_OUTDOOR_SKATING:I = 0x2c

.field public static final TYPE_SPORT_PADDLE_SURFING:I = 0x44

.field public static final TYPE_SPORT_PILATES:I = 0x3d

.field public static final TYPE_SPORT_PINGPONG:I = 0x59

.field public static final TYPE_SPORT_POOL_SWIM:I = 0xe

.field public static final TYPE_SPORT_ROCK_CLIMBING:I = 0x46

.field public static final TYPE_SPORT_ROLLER_SKATING:I = 0x45

.field public static final TYPE_SPORT_ROWING:I = 0x17

.field public static final TYPE_SPORT_SAILING:I = 0x41

.field public static final TYPE_SPORT_SKATEBOARDING:I = 0x43

.field public static final TYPE_SPORT_SKIING:I = 0xb

.field public static final TYPE_SPORT_SKIING_DOUBLE_BOARD:I = 0x69

.field public static final TYPE_SPORT_SKIP_ROPE:I = 0x15

.field public static final TYPE_SPORT_SOCCER:I = 0x12

.field public static final TYPE_SPORT_SOCIAL_DANCE:I = 0x4b

.field public static final TYPE_SPORT_SOFTBALL:I = 0x56

.field public static final TYPE_SPORT_SQUARE_DANCE:I = 0x49

.field public static final TYPE_SPORT_SQUASH_BALL:I = 0x51

.field public static final TYPE_SPORT_STEPPER:I = 0x3a

.field public static final TYPE_SPORT_STEP_TRAINING:I = 0x39

.field public static final TYPE_SPORT_STREET_DANCE:I = 0x4a

.field public static final TYPE_SPORT_STRENGTH_TRAINING:I = 0x34

.field public static final TYPE_SPORT_STRETCH_TRAINING:I = 0x35

.field public static final TYPE_SPORT_SURFING:I = 0x3e

.field public static final TYPE_SPORT_TAEKWONDO:I = 0x66

.field public static final TYPE_SPORT_TAICHI:I = 0x64

.field public static final TYPE_SPORT_TENNIS:I = 0x11

.field public static final TYPE_SPORT_TIME_RUN:I = 0x4

.field public static final TYPE_SPORT_VIGOROUS:I = 0x6

.field public static final TYPE_SPORT_VOLLEYBALL:I = 0x58

.field public static final TYPE_SPORT_WRESTLING:I = 0x63

.field public static final TYPE_SPORT_YOGA:I = 0x3c

.field public static final TYPE_SPORT_ZUMBA_DANCE:I = 0x4d

.field public static final TYPE_SPORT__RIDING:I = 0x9
