.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private digitalNums:[Ljava/lang/String;

.field private small_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->week_num:[[B

    return-void
.end method

.method private init_num_mem()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v2, "guard/IamRunner/small_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

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

    const-string v2, "guard/IamRunner/en/week_%d.png"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "guard/IamRunner/week_%d.png"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move v2, v0

    :goto_2
    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->week_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 56

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    move-object/from16 v18, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v19, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v20, v5

    new-instance v5, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v21, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v22, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v23, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    move-object/from16 v24, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v25, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v26, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v27, v5

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v28, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v29, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v30, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v31, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v32, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v33, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v34, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v36, v1

    move-object/from16 v35, v10

    const/16 v10, 0xe

    new-array v1, v10, [[B

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v10, v31

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v30

    invoke-virtual {v0, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v37, v10

    move-object/from16 v10, v29

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v38, v10

    move-object/from16 v10, v28

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_0
    move-object/from16 v38, v10

    move-object/from16 v10, v28

    :goto_0
    move-object/from16 v40, v9

    move-object/from16 v39, v13

    move-object/from16 v13, v26

    move-object/from16 v9, v27

    invoke-virtual {v13, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v26

    if-nez v26, :cond_1

    move-object/from16 v41, v9

    move-object/from16 v9, v25

    invoke-virtual {v13, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :cond_1
    move-object/from16 v41, v9

    move-object/from16 v9, v25

    :goto_1
    move-object/from16 v43, v7

    move-object/from16 v42, v8

    move-object/from16 v8, v23

    move-object/from16 v7, v24

    invoke-virtual {v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v44, v6

    move-object/from16 v6, v22

    invoke-virtual {v8, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v45, v14

    move-object/from16 v14, v21

    invoke-virtual {v8, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v46, v9

    move-object/from16 v9, v20

    invoke-virtual {v8, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v47, v15

    move-object/from16 v15, v19

    invoke-virtual {v8, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v48, v11

    move-object/from16 v11, v18

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v49, v11

    move-object/from16 v11, v34

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v50, v11

    move-object/from16 v11, v35

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v51, v5

    move-object/from16 v5, v49

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->init_num_mem()V

    move-object/from16 v52, v0

    iget-object v0, v8, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v53, v13

    const/high16 v13, -0x1000000

    iput v13, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v0, "guard/IamRunner/26WC/watchface_runner_bg.png"

    move-object/from16 v13, p0

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/26WC/runner_power.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/26WC/runner_step.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/26WC/runner_km.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const-string v0, "mi"

    :goto_2
    invoke-virtual {v10, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v0, "km"

    goto :goto_2

    :goto_3
    const-string v0, "guard/IamRunner/26WC/watchface_icon_step.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v0, 0x3f

    const/16 v7, 0x7f

    invoke-virtual {v6, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const-string v0, "guard/IamRunner/26WC/watchface_icon_run.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v0, 0xe7

    const/16 v6, 0x80

    invoke-virtual {v14, v0, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "guard/IamRunner/en/watchface_low_power.png"

    :goto_4
    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_5

    :cond_3
    const-string v0, "guard/IamRunner/watchface_low_power.png"

    goto :goto_4

    :goto_5
    invoke-virtual {v11, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v0, 0x11

    iput-short v0, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v0, 0x77

    const/16 v6, 0x2c

    invoke-virtual {v11, v0, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "guard/IamRunner/26WC/am.png"

    invoke-static {v13, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v11, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const/16 v7, 0x5a

    const/16 v14, 0xd2

    invoke-virtual {v11, v14, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const-string v6, "guard/IamRunner/26WC/pm.png"

    invoke-static {v13, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v0, v14, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_4
    const/4 v0, 0x0

    const/16 v6, 0xe

    :goto_6
    if-ge v0, v6, :cond_5

    const-string v7, "guard/IamRunner/battery_%d.png"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v14, v16

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    const-string v0, "."

    move-object/from16 v1, v48

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTodayDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const-string v0, "-"

    move-object/from16 v4, v47

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const-string v0, "\u6b65"

    move-object/from16 v4, v46

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const-string v0, "%"

    move-object/from16 v6, v45

    invoke-virtual {v6, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v0

    const-string v7, "typeface/DINPro-Medium.otf"

    invoke-virtual {v0, v7}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v7

    const-string v11, "typeface/DINPro-Light.otf"

    invoke-virtual {v7, v11}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f0900e4

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const/4 v14, -0x1

    move-object/from16 v54, v8

    move-object/from16 v8, v44

    invoke-virtual {v8, v11, v14, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0900e4

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v11, v43

    invoke-virtual {v11, v8, v14, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0900e5

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v11, v42

    invoke-virtual {v11, v8, v14, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0900e5

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v11, v40

    invoke-virtual {v11, v8, v14, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v7, 0x6b

    const/16 v8, 0x38

    invoke-virtual {v2, v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v7, 0x66

    const/16 v8, 0x67

    invoke-virtual {v2, v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v2, 0x6e

    const/16 v11, 0x86

    invoke-virtual {v3, v2, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v3, v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    move-object/from16 v11, v39

    invoke-virtual {v11, v2, v14, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f0900e7

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v6, v2, v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v2, 0x73

    const/16 v11, 0x26

    invoke-virtual {v12, v2, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0x17

    invoke-virtual {v12, v7, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v7, 0x2

    iput-byte v7, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v7, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object/from16 v11, v41

    invoke-virtual {v11, v6, v14, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0900e8

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6, v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v6, v6, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v4, 0x29

    const/16 v6, 0xa4

    move-object/from16 v12, v53

    invoke-virtual {v12, v4, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v4, 0x49

    invoke-virtual {v12, v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v7, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v6, 0x1

    iput-byte v6, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object/from16 v7, v37

    invoke-virtual {v7, v6, v14, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v1, v6, v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    move-object/from16 v6, v38

    invoke-virtual {v6, v1, v14, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v10, v1, v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/4 v1, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v7, v7, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v1, 0xce

    const/16 v6, 0xa2

    move-object/from16 v7, v52

    invoke-virtual {v7, v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v7, v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v1, 0x2

    iput-byte v1, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v2, 0x1

    iput-byte v2, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move-object/from16 v6, v51

    invoke-virtual {v6, v4, v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/16 v4, 0x102

    invoke-virtual {v6, v8, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v4, 0x39

    const/16 v7, 0x1c

    invoke-virtual {v6, v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v1, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v2, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/16 v1, 0xaa

    const/16 v2, 0x102

    move-object/from16 v4, v50

    invoke-virtual {v4, v1, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v16, "Sun"

    const-string v17, "Mon"

    const-string v18, "Tue"

    const-string v19, "Wed"

    const-string v20, "Thu"

    const-string v21, "Fri"

    const-string v22, "Sat"

    :goto_7
    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v4, v1, v14, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setTextAttr(FILandroid/graphics/Typeface;)V

    goto :goto_8

    :cond_6
    const-string v16, "\u661f\u671f\u65e5"

    const-string v17, "\u661f\u671f\u4e00"

    const-string v18, "\u661f\u671f\u4e8c"

    const-string v19, "\u661f\u671f\u4e09"

    const-string v20, "\u661f\u671f\u56db"

    const-string v21, "\u661f\u671f\u4e94"

    const-string v22, "\u661f\u671f\u516d"

    goto :goto_7

    :goto_8
    const/16 v0, 0x13c

    iput v0, v9, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->start_angle:I

    const/4 v0, 0x0

    iput v0, v9, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->len_angle:I

    const/16 v1, 0x57

    iput v1, v9, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->full_angle:I

    const/16 v1, 0xdb

    iput v1, v5, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v0, v5, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    const/16 v1, 0x4d

    iput v1, v5, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    const/16 v1, 0x40

    iput v1, v15, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v0, v15, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->len_angle:I

    const/16 v1, 0x4d

    iput v1, v15, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    iput v0, v15, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->draw_clockwise:I

    return-object v54
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 59

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    move-object/from16 v17, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v18, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v19, v5

    new-instance v5, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v20, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v21, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v22, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    move-object/from16 v23, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v24, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v25, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v26, v5

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v27, v0

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v28, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v29, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v30, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v31, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v32, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v33, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v35, v1

    move-object/from16 v34, v10

    const/16 v10, 0xe

    new-array v1, v10, [[B

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v10, v30

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v29

    invoke-virtual {v0, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v36, v10

    move-object/from16 v10, v28

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v37, v10

    move-object/from16 v10, v27

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_0
    move-object/from16 v37, v10

    move-object/from16 v10, v27

    :goto_0
    move-object/from16 v39, v9

    move-object/from16 v38, v13

    move-object/from16 v13, v25

    move-object/from16 v9, v26

    invoke-virtual {v13, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v40, v9

    move-object/from16 v9, v24

    invoke-virtual {v13, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :cond_1
    move-object/from16 v40, v9

    move-object/from16 v9, v24

    :goto_1
    move-object/from16 v42, v7

    move-object/from16 v41, v8

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    invoke-virtual {v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v43, v6

    move-object/from16 v6, v21

    invoke-virtual {v8, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v44, v14

    move-object/from16 v14, v20

    invoke-virtual {v8, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v45, v9

    move-object/from16 v9, v19

    invoke-virtual {v8, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v46, v15

    move-object/from16 v15, v18

    invoke-virtual {v8, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v47, v11

    move-object/from16 v11, v17

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v48, v11

    move-object/from16 v11, v33

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v49, v11

    move-object/from16 v11, v34

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v50, v5

    move-object/from16 v5, v48

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->init_num_mem()V

    move-object/from16 v51, v0

    iget-object v0, v8, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v52, v13

    const/high16 v13, -0x1000000

    iput v13, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v0, "guard/IamRunner/watchface_runner_bg.png"

    move-object/from16 v13, p0

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/runner_power.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/runner_step.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/IamRunner/runner_km.png"

    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const-string v0, "guard/IamRunner/en/mi.png"

    :goto_2
    invoke-static {v13, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_2
    const-string v0, "guard/IamRunner/km.png"

    goto :goto_2

    :goto_3
    const-string v7, "guard/IamRunner/step.png"

    invoke-static {v13, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v53, v15

    const-string v15, "guard/IamRunner/percentage.png"

    invoke-static {v13, v15}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v15

    move-object/from16 v54, v5

    const-string v5, "guard/IamRunner/point.png"

    invoke-static {v13, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v55, v9

    const-string v9, "guard/IamRunner/small_seq.png"

    invoke-static {v13, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    move-object/from16 v56, v12

    const-string v12, "guard/IamRunner/watchface_icon_step.png"

    invoke-static {v13, v12}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v12, 0x3f

    move-object/from16 v57, v3

    const/16 v3, 0x7f

    invoke-virtual {v6, v12, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const-string v3, "guard/IamRunner/watchface_icon_run.png"

    invoke-static {v13, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v3, 0xe7

    const/16 v6, 0x80

    invoke-virtual {v14, v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "guard/IamRunner/en/watchface_low_power.png"

    :goto_4
    invoke-static {v13, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_5

    :cond_3
    const-string v3, "guard/IamRunner/watchface_low_power.png"

    goto :goto_4

    :goto_5
    invoke-virtual {v11, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v3, 0x11

    iput-short v3, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v3, 0x77

    const/16 v6, 0x2c

    invoke-virtual {v11, v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "guard/IamRunner/am.png"

    invoke-static {v13, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v12, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const/16 v11, 0x5a

    const/16 v14, 0xd2

    invoke-virtual {v12, v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const-string v6, "guard/IamRunner/pm.png"

    invoke-static {v13, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v3, v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {v8, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_4
    const/4 v3, 0x0

    const/16 v6, 0xe

    :goto_6
    if-ge v3, v6, :cond_5

    const-string v11, "guard/IamRunner/battery_%d.png"

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v14, v16

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    invoke-virtual {v10, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x14

    iput-short v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v1, v44

    invoke-virtual {v1, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v3

    const-string v4, "typeface/DINPro-Medium.otf"

    invoke-virtual {v3, v4}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v4

    const-string v5, "typeface/DINPro-Light.otf"

    invoke-virtual {v4, v5}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    const/high16 v5, 0x42c00000    # 96.0f

    const/4 v6, -0x1

    move-object/from16 v7, v43

    invoke-virtual {v7, v5, v6, v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v7, v42

    invoke-virtual {v7, v5, v6, v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v3, v41

    invoke-virtual {v3, v5, v6, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v3, v39

    invoke-virtual {v3, v5, v6, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v3, 0x6b

    const/16 v4, 0x38

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v3, 0x66

    const/16 v4, 0x67

    invoke-virtual {v2, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v2, 0x6e

    const/16 v5, 0x86

    move-object/from16 v7, v57

    invoke-virtual {v7, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v7, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v2, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    move-object/from16 v5, v38

    invoke-virtual {v5, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setImagePictureArray([[B)Z

    const/16 v2, 0x73

    const/16 v5, 0x26

    move-object/from16 v7, v56

    invoke-virtual {v7, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0x17

    invoke-virtual {v7, v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v3, 0x2

    iput-byte v3, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v3, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    iget-object v1, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    move-object/from16 v5, v40

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/high16 v1, 0x41600000    # 14.0f

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v6, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v0, 0x29

    const/16 v1, 0xa4

    move-object/from16 v5, v52

    invoke-virtual {v5, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x49

    invoke-virtual {v5, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v3, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v1, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    move-object/from16 v5, v36

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;->setImagePictureArray([[B)Z

    iget-object v1, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    move-object/from16 v5, v37

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;->setImagePictureArray([[B)Z

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v5, v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v1, 0xce

    const/16 v6, 0xa6

    move-object/from16 v7, v51

    invoke-virtual {v7, v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v7, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v3, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/16 v0, 0xfe

    move-object/from16 v1, v50

    invoke-virtual {v1, v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x39

    const/16 v2, 0x1c

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->small_num:[[B

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v0, 0x1

    iput-byte v0, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/16 v0, 0xa3

    const/16 v1, 0x108

    move-object/from16 v2, v49

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    iget-object v0, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwoSlpt;->week_num:[[B

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v0, 0x13c

    move-object/from16 v1, v55

    iput v0, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->start_angle:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->len_angle:I

    const/16 v2, 0x57

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->full_angle:I

    const/16 v1, 0xdb

    move-object/from16 v2, v54

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v0, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    const/16 v1, 0x4d

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    const/16 v2, 0x40

    move-object/from16 v3, v53

    iput v2, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->len_angle:I

    iput v1, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->draw_clockwise:I

    return-object v8
.end method
