.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private digitalNums:[Ljava/lang/String;

.field private small_num:[[B

.field private small_step_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->small_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->week_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->small_step_num:[[B

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

    const-string v2, "guard/chengshijinying/small_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->small_num:[[B

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

    const-string v4, "guard/chengshijinying/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/chengshijinying/week_%d.png"

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

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    const-string v4, "guard/chengshijinying/step_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->small_step_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 40

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    new-array v12, v3, [[B

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v3, 0x1

    if-ge v14, v3, :cond_1

    new-instance v14, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v17, 0x3

    const/16 v18, 0x6

    const/16 v19, 0x6e

    const/16 v20, 0x5e

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v23}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v0, v14}, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v1, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->init_num_mem()V

    iget-object v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v14, -0x1000000

    iput v14, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v13}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;)[B

    move-result-object v14

    goto :goto_3

    :pswitch_1
    invoke-virtual {v13}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v14

    goto :goto_3

    :cond_4
    :goto_2
    :pswitch_2
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_5

    const-string v3, "guard/com.huami.watch.watchface.AnalogWatchFaceEleven/watchface_default_eleven_bg.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v14

    :cond_5
    invoke-virtual {v6, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v3, "guard/com.huami.watch.watchface.AnalogWatchFaceEleven/watchface_default_eleven_graduation.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v3, "guard/chengshijinying/watchface_default_oval_8c.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setImagePicture([B)V

    const-string v3, "guard/chengshijinying/watchface_default_oval_8c.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    const-string v3, "guard/chengshijinying/watchface_slpt_big_circle.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v24, "guard/chengshijinying/minute_0.png.color_map"

    const-string v25, "guard/chengshijinying/minute_1.png.color_map"

    const-string v26, "guard/chengshijinying/minute_2.png.color_map"

    const-string v27, "guard/chengshijinying/minute_3.png.color_map"

    const-string v28, "guard/chengshijinying/minute_4.png.color_map"

    const-string v29, "guard/chengshijinying/minute_5.png.color_map"

    const-string v30, "guard/chengshijinying/minute_6.png.color_map"

    const-string v31, "guard/chengshijinying/minute_7.png.color_map"

    const-string v32, "guard/chengshijinying/minute_8.png.color_map"

    const-string v33, "guard/chengshijinying/minute_9.png.color_map"

    const-string v34, "guard/chengshijinying/minute_10.png.color_map"

    const-string v35, "guard/chengshijinying/minute_11.png.color_map"

    const-string v36, "guard/chengshijinying/minute_12.png.color_map"

    const-string v37, "guard/chengshijinying/minute_13.png.color_map"

    const-string v38, "guard/chengshijinying/minute_14.png.color_map"

    const-string v39, "guard/chengshijinying/minute_15.png.color_map"

    filled-new-array/range {v24 .. v39}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v3}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v24, "guard/chengshijinying/hour_0.png.color_map"

    const-string v25, "guard/chengshijinying/hour_1.png.color_map"

    const-string v26, "guard/chengshijinying/hour_2.png.color_map"

    const-string v27, "guard/chengshijinying/hour_3.png.color_map"

    const-string v28, "guard/chengshijinying/hour_4.png.color_map"

    const-string v29, "guard/chengshijinying/hour_5.png.color_map"

    const-string v30, "guard/chengshijinying/hour_6.png.color_map"

    const-string v31, "guard/chengshijinying/hour_7.png.color_map"

    const-string v32, "guard/chengshijinying/hour_8.png.color_map"

    const-string v33, "guard/chengshijinying/hour_9.png.color_map"

    const-string v34, "guard/chengshijinying/hour_10.png.color_map"

    const-string v35, "guard/chengshijinying/hour_11.png.color_map"

    const-string v36, "guard/chengshijinying/hour_12.png.color_map"

    const-string v37, "guard/chengshijinying/hour_13.png.color_map"

    const-string v38, "guard/chengshijinying/hour_14.png.color_map"

    const-string v39, "guard/chengshijinying/hour_15.png.color_map"

    filled-new-array/range {v24 .. v39}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v6}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v7, 0x140

    invoke-virtual {v4, v7, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v5, v3, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v5, v7, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    move v4, v3

    const/16 v5, 0x11

    :goto_4
    if-ge v4, v5, :cond_6

    const-string v6, "guard/chengshijinying/battery_%d.png"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportElevenSlpt;->small_step_num:[[B

    invoke-virtual {v11, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/16 v4, 0xfb

    invoke-virtual {v11, v3, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setStart(II)V

    const/16 v3, 0x14

    invoke-virtual {v11, v7, v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setRect(II)V

    const/4 v3, 0x2

    iput-byte v3, v11, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->alignX:B

    const/16 v3, 0xd6

    const/16 v4, 0x98

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    const/16 v2, 0x50

    invoke-virtual {v10, v2, v2}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setRect(II)V

    const/16 v3, 0x35

    const/16 v4, 0x78

    invoke-virtual {v10, v3, v4}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setStart(II)V

    const/4 v3, 0x0

    iput v3, v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v3, v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->len_angle:I

    const/16 v5, 0x168

    iput v5, v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    const/16 v6, 0xbb

    invoke-virtual {v8, v6, v4}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setStart(II)V

    invoke-virtual {v8, v2, v2}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setRect(II)V

    iput v3, v8, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->start_angle:I

    iput v3, v8, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->len_angle:I

    iput v5, v8, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->full_angle:I

    const/16 v2, 0xd0

    iput v2, v9, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    const/16 v2, 0x130

    iput v2, v9, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
