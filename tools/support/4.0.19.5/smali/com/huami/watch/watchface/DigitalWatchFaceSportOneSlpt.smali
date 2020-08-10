.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private digitalNums:[Ljava/lang/String;

.field private small_num:[[B

.field private small_step_num:[[B

.field private time_num:[[B

.field private time_red_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->week_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_step_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_red_num:[[B

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

    const-string v2, "guard/malasong/small_num_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/malasong/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/malasong/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move v4, v0

    :goto_2
    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    const-string v4, "guard/malasong/small_step_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_step_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_4

    const-string v4, "guard/malasong/time_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/malasong/time_red_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_red_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 57

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;-><init>()V

    move-object/from16 v17, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v18, v8

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v19, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v20, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    move-object/from16 v21, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v22, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v23, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v24, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v25, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v26, v8

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v27, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v28, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v29, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v30, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v31, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v32, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v33, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v34, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;-><init>()V

    move-object/from16 v35, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v29

    invoke-virtual {v12, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v4, v28

    invoke-virtual {v12, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v7, v25

    invoke-virtual {v5, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v8, v22

    invoke-virtual {v5, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v23

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v36, v1

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v38, v7

    move-object/from16 v37, v11

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    invoke-virtual {v11, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v39, v7

    move-object/from16 v7, v34

    invoke-virtual {v11, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v40, v14

    move-object/from16 v14, v35

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v42, v0

    move-object/from16 v41, v14

    move-object/from16 v14, v20

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v43, v10

    move-object/from16 v10, v19

    invoke-virtual {v14, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v44, v7

    move-object/from16 v7, v18

    invoke-virtual {v14, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v45, v9

    move-object/from16 v9, v31

    invoke-virtual {v14, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v46, v11

    move-object/from16 v11, v17

    invoke-virtual {v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v47, v9

    move-object/from16 v9, v36

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->init_num_mem()V

    move-object/from16 v48, v5

    iget-object v5, v14, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v49, v12

    const/high16 v12, -0x1000000

    iput v12, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v5, "guard/malasong/watchface_bg_8c.png"

    move-object/from16 v12, p0

    invoke-static {v12, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/malasong/watchface_icon_bar_power.png"

    invoke-static {v12, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/malasong/watchface_icon_bar_step.png"

    invoke-static {v12, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/malasong/watchface_icon_km_8c.png"

    invoke-static {v12, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/malasong/watchface_icon_run_8c.png"

    invoke-static {v12, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    const-string v0, "guard/malasong/en/small_km.png"

    :goto_0
    invoke-static {v12, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "guard/malasong/small_km.png"

    goto :goto_0

    :goto_1
    const-string v5, "guard/malasong/small_step_line.png"

    invoke-static {v12, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v50, v11

    const-string v11, "guard/malasong/small_num_seq.png"

    invoke-static {v12, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v51, v10

    const-string v10, "guard/en/watchface_low_power.png"

    :goto_2
    invoke-static {v12, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_3

    :cond_1
    move-object/from16 v51, v10

    const-string v10, "guard/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v16

    move-object/from16 v52, v6

    if-nez v16, :cond_2

    const-string v6, "guard/malasong/AM.png"

    invoke-static {v12, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v53, v13

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v13, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const/16 v6, 0x80

    move-object/from16 v54, v9

    const/16 v9, 0x100

    invoke-virtual {v13, v9, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const-string v6, "guard/malasong/PM.png"

    invoke-static {v12, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v9, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v55, v7

    const/16 v6, 0x100

    const/16 v7, 0x80

    invoke-virtual {v9, v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {v14, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v6, 0x0

    invoke-super {v12, v6}, Lcom/huami/watch/watchface/AbstractSlptClock;->setHourFormat(I)V

    goto :goto_4

    :cond_2
    move-object/from16 v55, v7

    move-object/from16 v54, v9

    move-object/from16 v53, v13

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v15, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v7, 0x11

    iput-short v7, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v7, 0x75

    const/16 v9, 0x3c

    invoke-virtual {v15, v7, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iput-boolean v6, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "."

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const/16 v0, 0x14

    iput-short v0, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v5, v43

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v5, "."

    move-object/from16 v7, v42

    invoke-virtual {v7, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const/16 v5, 0xb

    iput-short v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v5

    const-string v9, "typeface/huamifont.ttf"

    invoke-virtual {v5, v9}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v9, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_num:[[B

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v9, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->time_red_num:[[B

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/high16 v9, 0x41900000    # 18.0f

    const v10, -0xffa401

    move-object/from16 v11, v55

    invoke-virtual {v11, v9, v10, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v9, 0xe6

    const/16 v10, 0x3f

    invoke-virtual {v11, v9, v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setStart(II)V

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, -0x1

    move-object/from16 v11, v40

    invoke-virtual {v11, v9, v10, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual {v7, v9, v10, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v13, v54

    invoke-virtual {v13, v9, v10, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object v15, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-virtual {v11, v15}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setImagePictureArray([[B)Z

    iget-object v15, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-virtual {v13, v15}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setImagePictureArray([[B)Z

    invoke-virtual {v4, v9, v10, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v15, v53

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v15, v9, v10, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v11, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setPadding(IIII)V

    invoke-virtual {v7, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v13, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setPadding(IIII)V

    invoke-virtual {v4, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    iput-byte v9, v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->alignParentY:B

    iput-byte v9, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    iput-byte v9, v13, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->alignParentY:B

    iput-byte v9, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    const/16 v4, 0x2f

    const/16 v7, 0x52

    move-object/from16 v10, v49

    invoke-virtual {v10, v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const v4, 0x7ffffffe

    const/16 v11, 0x64

    invoke-virtual {v10, v11, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v6, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v9, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    move-object/from16 v10, v38

    const/4 v13, -0x1

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v10, v15, v13, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual {v8, v15, v13, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v4, v37

    invoke-virtual {v4, v15, v13, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual {v1, v15, v13, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v13, v52

    const/4 v15, 0x1

    invoke-virtual {v13, v9, v15, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v10, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setPadding(IIII)V

    invoke-virtual {v8, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v4, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setPadding(IIII)V

    invoke-virtual {v1, v9, v9, v6, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    iget-object v1, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-virtual {v10, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setImagePictureArray([[B)Z

    iget-object v1, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setImagePictureArray([[B)Z

    const/16 v1, 0xad

    move-object/from16 v4, v48

    invoke-virtual {v4, v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const v1, 0x7ffffffe

    invoke-virtual {v4, v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v9, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    move-object/from16 v1, v45

    const/4 v4, -0x1

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v1, v7, v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    iget-object v4, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    const/16 v4, 0x20

    const/16 v7, 0x7d

    invoke-virtual {v1, v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v4, 0x2a

    const/16 v7, 0x21

    invoke-virtual {v1, v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v4, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_num:[[B

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iput-byte v6, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v4, 0x1

    iput-byte v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/high16 v1, 0x41800000    # 16.0f

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v7, v47

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v1, 0x1e

    const/16 v4, 0xa4

    invoke-virtual {v7, v1, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    iget-object v1, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->week_num:[[B

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/high16 v0, 0x41e00000    # 28.0f

    move-object/from16 v1, v46

    invoke-virtual {v1, v0, v8, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    iget-object v0, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    const/16 v0, 0x61

    const/16 v4, 0xdb

    invoke-virtual {v1, v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x82

    const/16 v4, 0x26

    invoke-virtual {v1, v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_step_num:[[B

    move-object/from16 v4, v39

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    iget-object v0, v12, Lcom/huami/watch/watchface/DigitalWatchFaceSportOneSlpt;->small_step_num:[[B

    move-object/from16 v4, v41

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;->setImagePictureArray([[B)Z

    iput-byte v6, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/16 v0, 0x51

    const/16 v1, 0x7a

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0xa2

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x145

    move-object/from16 v1, v51

    iput v0, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->start_angle:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->len_angle:I

    const/16 v2, 0x46

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->full_angle:I

    const/16 v1, 0x91

    move-object/from16 v3, v50

    iput v1, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    iput v2, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->draw_clockwise:I

    return-object v14
.end method
