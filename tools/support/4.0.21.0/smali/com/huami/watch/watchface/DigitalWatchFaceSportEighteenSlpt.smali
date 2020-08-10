.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private batteryMem:[[B

.field private batterySize:I

.field private dateNumMem:[[B

.field private defaultNumMem:[[B

.field private weekMem:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batteryMem:[[B

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->dateNumMem:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->weekMem:[[B

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 47

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    iget v10, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    invoke-direct {v9, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v16, v4

    new-instance v4, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v17, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v18, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v19, v11

    move-object/from16 v21, v4

    const/4 v11, 0x0

    :goto_0
    const/16 v4, 0xa

    move-object/from16 v22, v10

    const/4 v10, 0x1

    if-ge v11, v4, :cond_0

    const-string v4, "guard/anyekupao/8C/number/%d.png"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x0

    aput-object v23, v10, v20

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v10, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v22

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v4, :cond_1

    const-string v4, "guard/anyekupao/8C/date/%d.png"

    move-object/from16 v24, v14

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x0

    aput-object v23, v14, v20

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v14, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->dateNumMem:[[B

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v14, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v24

    const/16 v4, 0xa

    goto :goto_1

    :cond_1
    move-object/from16 v24, v14

    const/4 v4, 0x0

    :goto_2
    const/4 v11, 0x7

    if-ge v4, v11, :cond_2

    const-string v11, "guard/anyekupao/8C/week/%d.png"

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x0

    aput-object v23, v14, v20

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->weekMem:[[B

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iget v11, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    if-ge v4, v11, :cond_3

    const-string v11, "guard/anyekupao/26WC/power/%d.png"

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x0

    aput-object v23, v14, v20

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batteryMem:[[B

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const-string v4, "guard/anyekupao/8C/number/point.png"

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    const-string v11, "guard/anyekupao/26WC/watchface_bg.png"

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    const-string v14, "guard/anyekupao/26WC/step/Oval.png"

    invoke-static {v0, v14}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v14

    const-string v10, "guard/anyekupao/8C/step/step.png"

    invoke-static {v0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    move-object/from16 v25, v10

    const-string v10, "guard/anyekupao/8C/step/run.png"

    invoke-static {v0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    move-object/from16 v26, v4

    const-string v4, "guard/anyekupao/26WC/hour.png"

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    const-string v4, "guard/anyekupao/26WC/minute.png"

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    const-string v4, "guard/anyekupao/26WC/seconds.png"

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    move-object/from16 v27, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v28, "guard/anyekupao/26WC/timehand/minute/0.png.color_map"

    const-string v29, "guard/anyekupao/26WC/timehand/minute/1.png.color_map"

    const-string v30, "guard/anyekupao/26WC/timehand/minute/2.png.color_map"

    const-string v31, "guard/anyekupao/26WC/timehand/minute/3.png.color_map"

    const-string v32, "guard/anyekupao/26WC/timehand/minute/4.png.color_map"

    const-string v33, "guard/anyekupao/26WC/timehand/minute/5.png.color_map"

    const-string v34, "guard/anyekupao/26WC/timehand/minute/6.png.color_map"

    const-string v35, "guard/anyekupao/26WC/timehand/minute/7.png.color_map"

    const-string v36, "guard/anyekupao/26WC/timehand/minute/8.png.color_map"

    const-string v37, "guard/anyekupao/26WC/timehand/minute/9.png.color_map"

    const-string v38, "guard/anyekupao/26WC/timehand/minute/10.png.color_map"

    const-string v39, "guard/anyekupao/26WC/timehand/minute/11.png.color_map"

    const-string v40, "guard/anyekupao/26WC/timehand/minute/12.png.color_map"

    const-string v41, "guard/anyekupao/26WC/timehand/minute/13.png.color_map"

    const-string v42, "guard/anyekupao/26WC/timehand/minute/14.png.color_map"

    const-string v43, "guard/anyekupao/26WC/timehand/minute/15.png.color_map"

    move-object/from16 v44, v12

    filled-new-array/range {v28 .. v43}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v0, v12}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v15}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup26WC(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v28, "guard/anyekupao/26WC/timehand/hour/0.png.color_map"

    const-string v29, "guard/anyekupao/26WC/timehand/hour/1.png.color_map"

    const-string v30, "guard/anyekupao/26WC/timehand/hour/2.png.color_map"

    const-string v31, "guard/anyekupao/26WC/timehand/hour/3.png.color_map"

    const-string v32, "guard/anyekupao/26WC/timehand/hour/4.png.color_map"

    const-string v33, "guard/anyekupao/26WC/timehand/hour/5.png.color_map"

    const-string v34, "guard/anyekupao/26WC/timehand/hour/6.png.color_map"

    const-string v35, "guard/anyekupao/26WC/timehand/hour/7.png.color_map"

    const-string v36, "guard/anyekupao/26WC/timehand/hour/8.png.color_map"

    const-string v37, "guard/anyekupao/26WC/timehand/hour/9.png.color_map"

    const-string v38, "guard/anyekupao/26WC/timehand/hour/10.png.color_map"

    const-string v39, "guard/anyekupao/26WC/timehand/hour/11.png.color_map"

    const-string v40, "guard/anyekupao/26WC/timehand/hour/12.png.color_map"

    const-string v41, "guard/anyekupao/26WC/timehand/hour/13.png.color_map"

    const-string v42, "guard/anyekupao/26WC/timehand/hour/14.png.color_map"

    const-string v43, "guard/anyekupao/26WC/timehand/hour/15.png.color_map"

    move-object/from16 v45, v14

    filled-new-array/range {v28 .. v43}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v0, v14}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v12}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup26WC(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v6, v15}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v15, 0x140

    invoke-virtual {v6, v15, v15}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v5, v12}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v5, v14, v14}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v5, v15, v15}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    invoke-virtual {v7, v4}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->setImagePicture([B)V

    invoke-static {v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setClockSecondView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v4, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v11, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batteryMem:[[B

    invoke-virtual {v9, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    const/16 v11, 0x2d

    const/16 v12, 0x6b

    invoke-virtual {v9, v11, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v2, 0x1

    iput-short v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->dateNumMem:[[B

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0xfc

    const/16 v2, 0x98

    invoke-virtual {v3, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->weekMem:[[B

    invoke-virtual {v8, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v1, 0xd2

    invoke-virtual {v8, v1, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x45

    const/16 v2, 0x96

    invoke-virtual {v13, v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    move-object/from16 v1, v44

    move-object/from16 v10, v45

    invoke-virtual {v1, v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    const/16 v11, 0x3b

    const/16 v12, 0x7f

    invoke-virtual {v1, v12, v11}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setStart(II)V

    const/16 v11, 0x168

    iput v11, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->len_angle:I

    const/4 v14, 0x0

    iput v14, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v11, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    move-object/from16 v15, v26

    move-object/from16 v14, v27

    invoke-virtual {v14, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTodayDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v11, v22

    move-object/from16 v15, v24

    invoke-virtual {v11, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v14, v21

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v14, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v14, 0x5e

    invoke-virtual {v11, v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v14, 0x12

    const/16 v15, 0x42

    invoke-virtual {v11, v15, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v14, 0x2

    iput-byte v14, v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    move-object/from16 v14, v19

    move-object/from16 v15, v25

    invoke-virtual {v14, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v15, 0xd3

    invoke-virtual {v14, v2, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    move-object/from16 v15, v18

    invoke-virtual {v15, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/16 v2, 0xea

    invoke-virtual {v15, v12, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setStart(II)V

    const/16 v2, 0x42

    const/16 v12, 0x12

    invoke-virtual {v15, v2, v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setRect(II)V

    const/4 v2, 0x2

    iput-byte v2, v15, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->alignX:B

    move-object/from16 v12, v17

    invoke-virtual {v12, v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const/16 v10, 0xc9

    const/16 v2, 0x7f

    invoke-virtual {v12, v2, v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setStart(II)V

    const/16 v2, 0x168

    iput v2, v12, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    const/4 v10, 0x0

    iput v10, v12, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v2, v12, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    const/4 v2, 0x2

    iput-byte v2, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->alignX:B

    iput-byte v2, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->alignY:B

    iget-object v10, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    const/16 v2, 0x140

    iput v2, v10, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    iget-object v10, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v2, v10, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    const/4 v2, 0x2

    iput-byte v2, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->descHeight:B

    iput-byte v2, v7, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogSecondView;->descWidth:B

    move-object/from16 v2, v16

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v2
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 46

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    iget v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    invoke-direct {v8, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceFView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodaySportDistanceLView;-><init>()V

    move-object/from16 v16, v4

    new-instance v4, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v17, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v18, v9

    const-string v9, "guard/anyekupao/8C/number/point.png"

    invoke-static {v0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    move-object/from16 v19, v10

    const-string v10, "guard/anyekupao/8C/watchface_bg_8c.png"

    invoke-static {v0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    move-object/from16 v20, v15

    const-string v15, "guard/anyekupao/8C/step/Oval.png"

    invoke-static {v0, v15}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v15

    move-object/from16 v21, v11

    const-string v11, "guard/anyekupao/8C/step/step.png"

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v22, v11

    const-string v11, "guard/anyekupao/8C/step/run.png"

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v23, v13

    move-object/from16 v25, v9

    const/4 v13, 0x0

    :goto_0
    const/16 v9, 0xa

    move-object/from16 v26, v14

    const/4 v14, 0x1

    if-ge v13, v9, :cond_0

    const-string v9, "guard/anyekupao/8C/number/%d.png"

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v24, 0x0

    aput-object v27, v14, v24

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    invoke-static {v0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, v26

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_1

    const-string v9, "guard/anyekupao/8C/date/%d.png"

    move-object/from16 v28, v4

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v24, 0x0

    aput-object v27, v4, v24

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->dateNumMem:[[B

    invoke-static {v0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v9, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v28

    const/16 v9, 0xa

    goto :goto_1

    :cond_1
    move-object/from16 v28, v4

    const/4 v4, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v4, v9, :cond_2

    const-string v9, "guard/anyekupao/8C/week/%d.png"

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v24, 0x0

    aput-object v27, v13, v24

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->weekMem:[[B

    invoke-static {v0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iget v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batterySize:I

    if-ge v4, v9, :cond_3

    const-string v9, "guard/anyekupao/8C/power/%d.png"

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v24, 0x0

    aput-object v27, v13, v24

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batteryMem:[[B

    invoke-static {v0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v29, "guard/anyekupao/8C/timehand/minute/0.png.color_map"

    const-string v30, "guard/anyekupao/8C/timehand/minute/1.png.color_map"

    const-string v31, "guard/anyekupao/8C/timehand/minute/2.png.color_map"

    const-string v32, "guard/anyekupao/8C/timehand/minute/3.png.color_map"

    const-string v33, "guard/anyekupao/8C/timehand/minute/4.png.color_map"

    const-string v34, "guard/anyekupao/8C/timehand/minute/5.png.color_map"

    const-string v35, "guard/anyekupao/8C/timehand/minute/6.png.color_map"

    const-string v36, "guard/anyekupao/8C/timehand/minute/7.png.color_map"

    const-string v37, "guard/anyekupao/8C/timehand/minute/8.png.color_map"

    const-string v38, "guard/anyekupao/8C/timehand/minute/9.png.color_map"

    const-string v39, "guard/anyekupao/8C/timehand/minute/10.png.color_map"

    const-string v40, "guard/anyekupao/8C/timehand/minute/11.png.color_map"

    const-string v41, "guard/anyekupao/8C/timehand/minute/12.png.color_map"

    const-string v42, "guard/anyekupao/8C/timehand/minute/13.png.color_map"

    const-string v43, "guard/anyekupao/8C/timehand/minute/14.png.color_map"

    const-string v44, "guard/anyekupao/8C/timehand/minute/15.png.color_map"

    filled-new-array/range {v29 .. v44}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v4}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v29, "guard/anyekupao/8C/timehand/hour/0.png.color_map"

    const-string v30, "guard/anyekupao/8C/timehand/hour/1.png.color_map"

    const-string v31, "guard/anyekupao/8C/timehand/hour/2.png.color_map"

    const-string v32, "guard/anyekupao/8C/timehand/hour/3.png.color_map"

    const-string v33, "guard/anyekupao/8C/timehand/hour/4.png.color_map"

    const-string v34, "guard/anyekupao/8C/timehand/hour/5.png.color_map"

    const-string v35, "guard/anyekupao/8C/timehand/hour/6.png.color_map"

    const-string v36, "guard/anyekupao/8C/timehand/hour/7.png.color_map"

    const-string v37, "guard/anyekupao/8C/timehand/hour/8.png.color_map"

    const-string v38, "guard/anyekupao/8C/timehand/hour/9.png.color_map"

    const-string v39, "guard/anyekupao/8C/timehand/hour/10.png.color_map"

    const-string v40, "guard/anyekupao/8C/timehand/hour/11.png.color_map"

    const-string v41, "guard/anyekupao/8C/timehand/hour/12.png.color_map"

    const-string v42, "guard/anyekupao/8C/timehand/hour/13.png.color_map"

    const-string v43, "guard/anyekupao/8C/timehand/hour/14.png.color_map"

    const-string v44, "guard/anyekupao/8C/timehand/hour/15.png.color_map"

    filled-new-array/range {v29 .. v44}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v0, v13}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v9}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v6, v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4, v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v13, 0x140

    invoke-virtual {v6, v13, v13}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v5, v9}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v5, v4, v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v5, v13, v13}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v4, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->batteryMem:[[B

    invoke-virtual {v8, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    const/16 v9, 0x2d

    const/16 v10, 0x6b

    invoke-virtual {v8, v9, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iput-short v14, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->dateNumMem:[[B

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0xfc

    const/16 v2, 0x98

    invoke-virtual {v3, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->weekMem:[[B

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v1, 0xd2

    invoke-virtual {v7, v1, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    invoke-virtual {v12, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x45

    const/16 v2, 0x96

    invoke-virtual {v12, v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    move-object/from16 v1, v28

    invoke-virtual {v1, v15}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    const/16 v9, 0x3b

    const/16 v10, 0x7f

    invoke-virtual {v1, v10, v9}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setStart(II)V

    const/16 v9, 0x168

    iput v9, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->len_angle:I

    const/4 v11, 0x0

    iput v11, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v9, v1, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    invoke-virtual {v11, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setTodayDistanceDotView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v14, v21

    move-object/from16 v13, v23

    invoke-virtual {v14, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v20

    invoke-virtual {v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v11, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    invoke-virtual {v14, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v11, 0x5e

    invoke-virtual {v14, v10, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v11, 0x12

    const/16 v13, 0x42

    invoke-virtual {v14, v13, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v9, 0x2

    iput-byte v9, v14, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    move-object/from16 v9, v19

    move-object/from16 v11, v22

    invoke-virtual {v9, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v11, 0xd3

    invoke-virtual {v9, v2, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteenSlpt;->defaultNumMem:[[B

    move-object/from16 v11, v18

    invoke-virtual {v11, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/16 v2, 0xea

    invoke-virtual {v11, v10, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setStart(II)V

    const/16 v2, 0x12

    invoke-virtual {v11, v13, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setRect(II)V

    const/4 v2, 0x2

    iput-byte v2, v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->alignX:B

    move-object/from16 v2, v17

    invoke-virtual {v2, v15}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const/16 v13, 0xc9

    invoke-virtual {v2, v10, v13}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setStart(II)V

    const/16 v10, 0x168

    iput v10, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    const/4 v13, 0x0

    iput v13, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v10, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    move-object/from16 v10, v16

    invoke-virtual {v10, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v10
.end method
