.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private battery_num:[[B

.field private date_num:[[B

.field private digitalNums:[Ljava/lang/String;

.field private km_num:[[B

.field private power_num:[[B

.field private step_num:[[B

.field private time_num:[[B

.field private week_num:[[B


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->week_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->step_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->time_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->km_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->power_num:[[B

    const/16 v0, 0xe

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->battery_num:[[B

    return-void
.end method

.method private init_num_mem()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v2, "guard/lonelytrack/date_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    const-string v4, "guard/lonelytrack/power_num_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->power_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/16 v4, 0xe

    if-ge v1, v4, :cond_2

    const-string v4, "guard/lonelytrack/power_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->battery_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/lonelytrack/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/lonelytrack/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    move v4, v0

    :goto_4
    const/4 v5, 0x7

    if-ge v4, v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/lonelytrack/step_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->step_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_6

    const-string v4, "guard/lonelytrack/time_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->time_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_7

    const-string v4, "guard/lonelytrack/km_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->km_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 48

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v16, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v17, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v18, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v19, v13

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v20, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v21, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v22, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v23, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v24, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v25, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    move-object/from16 v26, v10

    const/16 v10, 0xe

    invoke-direct {v11, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    move-object/from16 v27, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    move-object/from16 v28, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v29, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;-><init>()V

    move-object/from16 v30, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;-><init>()V

    move-object/from16 v31, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v3, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v6, v26

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v7, v24

    invoke-virtual {v5, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v8, v20

    invoke-virtual {v5, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v33, v13

    move-object/from16 v13, v18

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v34, v14

    move-object/from16 v14, v25

    invoke-virtual {v5, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v35, v9

    move-object/from16 v9, v22

    invoke-virtual {v5, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v36, v4

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v15, v21

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v37, v15

    move-object/from16 v15, v27

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v38, v3

    move-object/from16 v3, v17

    invoke-virtual {v3, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v39, v4

    move-object/from16 v4, v29

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v40, v2

    move-object/from16 v2, v28

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v41, v5

    move-object/from16 v5, v23

    invoke-virtual {v3, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v42, v9

    move-object/from16 v9, v30

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v43, v0

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v44, v32

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->init_num_mem()V

    move-object/from16 v45, v7

    iget-object v7, v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v46, v3

    const/high16 v3, -0x1000000

    iput v3, v7, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v3, "guard/lonelytrack/bg.png"

    move-object/from16 v7, p0

    invoke-static {v7, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v47, v5

    move-object/from16 v5, v16

    invoke-virtual {v5, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v3, "guard/lonelytrack/watchface_icon_run.png"

    invoke-static {v7, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v3, "guard/lonelytrack/watchface_icon_step.png"

    invoke-static {v7, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v3, "guard/lonelytrack/date_seq.png"

    invoke-static {v7, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/time_seq.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "guard/lonelytrack/en/km_text.png"

    :goto_0
    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "guard/lonelytrack/km_text.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v13, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/runner_step.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/runner_distance.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/km_point.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x14

    iput-short v1, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const-string v1, "guard/lonelytrack/watchface_step_bar_climax.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/watchface_distance_bar_climax.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;->setImagePicture([B)V

    const-string v1, "guard/lonelytrack/watchface_distance_point.png"

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x16

    iput-short v1, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/16 v3, 0xa

    invoke-virtual {v10, v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v5, 0x140

    const/16 v6, 0x12c

    invoke-virtual {v10, v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    const/4 v8, 0x2

    iput-byte v8, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->battery_num:[[B

    invoke-virtual {v11, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->power_num:[[B

    invoke-virtual {v15, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setImagePictureArray([[B)Z

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "guard/en/watchface_low_power.png"

    :goto_2
    invoke-static {v7, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    move-object v12, v10

    move-object/from16 v10, v47

    goto :goto_3

    :cond_1
    const-string v10, "guard/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v12, 0x11

    iput-short v12, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v12, 0xea

    invoke-virtual {v10, v1, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v12, 0x18

    invoke-virtual {v10, v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v1, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    iput-byte v8, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->km_num:[[B

    move-object/from16 v13, v45

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->km_num:[[B

    move-object/from16 v13, v43

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->step_num:[[B

    move-object/from16 v13, v42

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/16 v10, 0xb

    const/4 v13, 0x3

    invoke-virtual {v14, v10, v13, v1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v10, 0x51

    move-object/from16 v13, v41

    invoke-virtual {v13, v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v13, v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v8, v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v8, v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->time_num:[[B

    move-object/from16 v12, v38

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->time_num:[[B

    move-object/from16 v12, v36

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v10, 0x75

    move-object/from16 v12, v40

    invoke-virtual {v12, v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v10, 0x53

    invoke-virtual {v12, v5, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v8, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    move-object/from16 v12, v35

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    move-object/from16 v12, v44

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    move-object/from16 v12, v34

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->date_num:[[B

    move-object/from16 v12, v33

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->week_num:[[B

    move-object/from16 v12, v37

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v10, 0x8

    const/4 v13, 0x5

    invoke-virtual {v12, v10, v13, v1, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setPadding(IIII)V

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->power_num:[[B

    invoke-virtual {v15, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setImagePictureArray([[B)Z

    iget-object v10, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSixSlpt;->battery_num:[[B

    invoke-virtual {v11, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    const/16 v10, 0xcf

    move-object/from16 v11, v39

    invoke-virtual {v11, v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v10, 0x20

    invoke-virtual {v11, v5, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v8, v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v8, v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/16 v5, 0x10e

    iput v5, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    const/16 v8, 0x168

    iput v8, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    invoke-virtual {v2, v3, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setStart(II)V

    invoke-virtual {v2, v6, v6}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setRect(II)V

    iput v1, v4, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v8, v4, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    invoke-virtual {v4, v3, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setStart(II)V

    invoke-virtual {v4, v6, v6}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setRect(II)V

    iput v5, v9, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;->start_angle:I

    iput v8, v9, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;->full_angle:I

    invoke-virtual {v9, v3, v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;->setStart(II)V

    invoke-virtual {v9, v6, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayStepView;->setRect(II)V

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;->start_angle:I

    iput v8, v0, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;->full_angle:I

    invoke-virtual {v0, v3, v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;->setStart(II)V

    invoke-virtual {v0, v6, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptRotateTodayDistanceView;->setRect(II)V

    return-object v46
.end method
