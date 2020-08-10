.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private batteryMem:[[B

.field private batterySize:I

.field private defaultNumMem:[[B

.field private timeNumMem:[[B

.field private weekMem:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batterySize:I

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batterySize:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batteryMem:[[B

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->timeNumMem:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->weekMem:[[B

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 53

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    move-object/from16 v16, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    move-object/from16 v17, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v18, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v19, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v20, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    move-object/from16 v21, v13

    iget v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batterySize:I

    invoke-direct {v14, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    move-object/from16 v22, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v23, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v24, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    move-object/from16 v25, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v26, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v27, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v28, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;-><init>()V

    move-object/from16 v29, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v30, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;-><init>()V

    move-object/from16 v31, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v32, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;-><init>()V

    move-object/from16 v33, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v34, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayFloorNumView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayFloorNumView;-><init>()V

    move-object/from16 v35, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v36, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;-><init>()V

    move-object/from16 v37, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v38, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v39, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v40, v9

    const-string v9, "guard/xinjiyuan/number/point.png"

    invoke-static {v0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    move-object/from16 v41, v7

    const-string v7, "guard/xinjiyuan/number/percent.png"

    invoke-static {v0, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v42, v6

    const-string v6, "guard/xinjiyuan/number/A.png"

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v43, v4

    const-string v4, "guard/xinjiyuan/number/P.png"

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v44, v3

    const-string v3, "guard/xinjiyuan/number/bpm.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v45, v3

    const-string v3, "guard/xinjiyuan/number/Kcal.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v46, v3

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v47, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_0

    const-string v3, "guard/xinjiyuan/number/mi.png"

    :goto_0
    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "guard/xinjiyuan/number/km.png"

    goto :goto_0

    :goto_1
    const-string v2, "guard/xinjiyuan/number/default.png"

    invoke-static {v0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v48, v2

    const-string v2, "guard/xinjiyuan/watchface_bg_8c.png"

    invoke-static {v0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->init_num_mem()V

    move-object/from16 v49, v3

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v12, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v10, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const/16 v2, 0x77

    const/16 v4, 0x11b

    invoke-virtual {v12, v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {v10, v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batteryMem:[[B

    invoke-virtual {v14, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    invoke-virtual {v13, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setImagePictureArray([[B)Z

    invoke-virtual {v15, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v2, 0x7e

    const/16 v4, 0xc

    invoke-virtual {v14, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    const/16 v2, 0x9f

    const/4 v4, 0x7

    invoke-virtual {v15, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v5, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v8, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v47

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v44

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v43

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v42

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v41

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v40

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v39

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0x6e

    const/16 v2, 0x3c

    invoke-virtual {v11, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const-string v1, "guard/xinjiyuan/time/colon.png"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v1, v21

    move-object/from16 v4, v22

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v19

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v17

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->timeNumMem:[[B

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0x25

    const/16 v2, 0x75

    invoke-virtual {v4, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->weekMem:[[B

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v1, 0x8b

    const/16 v5, 0x63

    invoke-virtual {v2, v1, v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    move-object/from16 v1, v26

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTodayDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v5, v25

    move-object/from16 v6, v28

    invoke-virtual {v6, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v27

    invoke-virtual {v6, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    invoke-virtual {v6, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0x1c

    const/16 v5, 0x45

    invoke-virtual {v6, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0x4a

    const/16 v7, 0x18

    invoke-virtual {v6, v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v8, 0x2

    iput-byte v8, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    move-object/from16 v8, v24

    invoke-virtual {v8, v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/16 v13, 0xd9

    invoke-virtual {v8, v13, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setStart(II)V

    invoke-virtual {v8, v1, v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setRect(II)V

    const/4 v5, 0x2

    iput-byte v5, v8, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->alignX:B

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v13, v49

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move-object/from16 v13, v30

    invoke-virtual {v13, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTotalDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v9, v29

    move-object/from16 v1, v32

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v9, v31

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v9, 0x4e

    const/16 v13, 0x10c

    invoke-virtual {v1, v9, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v9, 0x50

    invoke-virtual {v1, v9, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v5, v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v7, 0x4

    iput-short v7, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    const/4 v5, 0x2

    iput-byte v5, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v5, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v9, v48

    invoke-virtual {v7, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setLastHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v13, v45

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    move-object/from16 v50, v10

    move-object/from16 v10, v33

    invoke-virtual {v10, v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setImagePictureArray([[B)Z

    move-object/from16 v13, v34

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v13, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v13, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v7, 0xa0

    const/16 v10, 0x10c

    invoke-virtual {v13, v7, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v7, 0x18

    const/16 v10, 0x50

    invoke-virtual {v13, v10, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v5, v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v7, 0x4

    iput-short v7, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    const/4 v5, 0x2

    iput-byte v5, v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v5, v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v7, v46

    invoke-virtual {v5, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v7, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    move-object/from16 v10, v37

    invoke-virtual {v10, v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;->setImagePictureArray([[B)Z

    move-object/from16 v7, v38

    invoke-virtual {v7, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v7, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v10, 0x40

    move-object/from16 v51, v12

    const/16 v12, 0xd2

    invoke-virtual {v7, v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v10, 0x18

    const/16 v12, 0x4a

    invoke-virtual {v7, v12, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v5, v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v10, 0x4

    iput-short v10, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    const/4 v5, 0x0

    iput-byte v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v5, 0x2

    iput-byte v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    new-instance v5, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;

    const-string v10, "datawidget/weather/00/8C/"

    const-string v12, "guard/xinjiyuan/number/"

    invoke-direct {v5, v0, v10, v12}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v10

    const/16 v12, 0x94

    move-object/from16 v52, v2

    const/16 v2, 0xca

    invoke-virtual {v10, v12, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {v5}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    const/16 v5, 0x7b

    const/16 v12, 0xe3

    invoke-virtual {v2, v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    const/16 v5, 0x18

    const/16 v12, 0x4a

    invoke-virtual {v2, v12, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v5, 0x2

    iput-byte v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v5, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTodayFloorInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    move-object/from16 v12, v35

    invoke-virtual {v12, v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayFloorNumView;->setImagePictureArray([[B)Z

    move-object/from16 v9, v36

    invoke-virtual {v9, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v5, 0xb6

    const/16 v12, 0xd2

    invoke-virtual {v9, v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v5, 0x18

    const/16 v12, 0x4a

    invoke-virtual {v9, v12, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v5, 0x1

    iput-byte v5, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    move-object/from16 v5, v16

    invoke-virtual {v5, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v52

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v51

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v50

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v5, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v2, -0x1000000

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    return-object v5
.end method

.method init_num_mem()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v2, "guard/xinjiyuan/number/%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->defaultNumMem:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    const-string v4, "guard/xinjiyuan/time/%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->timeNumMem:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    const-string v2, "guard/xinjiyuan/week/%d.png"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->weekMem:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batterySize:I

    if-ge v1, v2, :cond_3

    const-string v2, "guard/xinjiyuan/battery/%d.png"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeenSlpt;->batteryMem:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
