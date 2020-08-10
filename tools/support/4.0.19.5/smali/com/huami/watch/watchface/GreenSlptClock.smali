.class public Lcom/huami/watch/watchface/GreenSlptClock;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field i:I

.field num_res:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 47

    move-object/from16 v0, p0

    const-string v1, "jixiexianfengSlpt"

    const-string v2, "createClockLayout8C: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMonthView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMonthView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/16 v9, 0xa

    new-array v9, v9, [[B

    const/4 v10, 0x0

    iput v10, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    :goto_0
    iget v11, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    const/4 v12, 0x7

    if-ge v11, v12, :cond_0

    const-string v11, "slpt-analog-green/week_%d.png"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    iget v14, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/huami/watch/watchface/GreenSlptClock;->num_res:Ljava/lang/String;

    iget v11, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    iget-object v13, v0, Lcom/huami/watch/watchface/GreenSlptClock;->num_res:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v9, v11

    iget v11, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    add-int/2addr v11, v12

    iput v11, v0, Lcom/huami/watch/watchface/GreenSlptClock;->i:I

    goto :goto_0

    :cond_0
    const-string v11, "slpt-analog-green/watchface_default_bg_8c.png"

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v11, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v12, -0x1000000

    iput v12, v11, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v12, "slpt-analog-green/minute_00.png.color_map"

    const-string v13, "slpt-analog-green/minute_01.png.color_map"

    const-string v14, "slpt-analog-green/minute_02.png.color_map"

    const-string v15, "slpt-analog-green/minute_03.png.color_map"

    const-string v16, "slpt-analog-green/minute_04.png.color_map"

    const-string v17, "slpt-analog-green/minute_05.png.color_map"

    const-string v18, "slpt-analog-green/minute_06.png.color_map"

    const-string v19, "slpt-analog-green/minute_07.png.color_map"

    const-string v20, "slpt-analog-green/minute_08.png.color_map"

    const-string v21, "slpt-analog-green/minute_09.png.color_map"

    const-string v22, "slpt-analog-green/minute_10.png.color_map"

    const-string v23, "slpt-analog-green/minute_11.png.color_map"

    const-string v24, "slpt-analog-green/minute_12.png.color_map"

    const-string v25, "slpt-analog-green/minute_13.png.color_map"

    const-string v26, "slpt-analog-green/minute_14.png.color_map"

    const-string v27, "slpt-analog-green/minute_15.png.color_map"

    filled-new-array/range {v12 .. v27}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v11}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v13, "slpt-analog-green/hour_00.png.color_map"

    const-string v14, "slpt-analog-green/hour_01.png.color_map"

    const-string v15, "slpt-analog-green/hour_02.png.color_map"

    const-string v16, "slpt-analog-green/hour_03.png.color_map"

    const-string v17, "slpt-analog-green/hour_04.png.color_map"

    const-string v18, "slpt-analog-green/hour_05.png.color_map"

    const-string v19, "slpt-analog-green/hour_06.png.color_map"

    const-string v20, "slpt-analog-green/hour_07.png.color_map"

    const-string v21, "slpt-analog-green/hour_08.png.color_map"

    const-string v22, "slpt-analog-green/hour_09.png.color_map"

    const-string v23, "slpt-analog-green/hour_10.png.color_map"

    const-string v24, "slpt-analog-green/hour_11.png.color_map"

    const-string v25, "slpt-analog-green/hour_12.png.color_map"

    const-string v26, "slpt-analog-green/hour_13.png.color_map"

    const-string v27, "slpt-analog-green/hour_14.png.color_map"

    const-string v28, "slpt-analog-green/hour_15.png.color_map"

    filled-new-array/range {v13 .. v28}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v12}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v14, "slpt-analog-green/month_1.png.color_map"

    const-string v15, "slpt-analog-green/month_2.png.color_map"

    const-string v16, "slpt-analog-green/month_3.png.color_map"

    const-string v17, "slpt-analog-green/month_4.png.color_map"

    const-string v18, "slpt-analog-green/month_5.png.color_map"

    const-string v19, "slpt-analog-green/month_6.png.color_map"

    const-string v20, "slpt-analog-green/month_7.png.color_map"

    const-string v21, "slpt-analog-green/month_8.png.color_map"

    const-string v22, "slpt-analog-green/month_9.png.color_map"

    const-string v23, "slpt-analog-green/month_10.png.color_map"

    const-string v24, "slpt-analog-green/month_11.png.color_map"

    const-string v25, "slpt-analog-green/month_12.png.color_map"

    filled-new-array/range {v14 .. v25}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v0, v14}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v13}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v15, "slpt-analog-green/month_1.png.color_map"

    const-string v16, "slpt-analog-green/day_1.png.color_map"

    const-string v17, "slpt-analog-green/day_2.png.color_map"

    const-string v18, "slpt-analog-green/day_3.png.color_map"

    const-string v19, "slpt-analog-green/day_4.png.color_map"

    const-string v20, "slpt-analog-green/day_5.png.color_map"

    const-string v21, "slpt-analog-green/day_6.png.color_map"

    const-string v22, "slpt-analog-green/day_7.png.color_map"

    const-string v23, "slpt-analog-green/day_8.png.color_map"

    const-string v24, "slpt-analog-green/day_9.png.color_map"

    const-string v25, "slpt-analog-green/day_10.png.color_map"

    const-string v26, "slpt-analog-green/day_11.png.color_map"

    const-string v27, "slpt-analog-green/day_12.png.color_map"

    const-string v28, "slpt-analog-green/day_13.png.color_map"

    const-string v29, "slpt-analog-green/day_14.png.color_map"

    const-string v30, "slpt-analog-green/day_15.png.color_map"

    const-string v31, "slpt-analog-green/day_16.png.color_map"

    const-string v32, "slpt-analog-green/day_17.png.color_map"

    const-string v33, "slpt-analog-green/day_18.png.color_map"

    const-string v34, "slpt-analog-green/day_19.png.color_map"

    const-string v35, "slpt-analog-green/day_20.png.color_map"

    const-string v36, "slpt-analog-green/day_21.png.color_map"

    const-string v37, "slpt-analog-green/day_22.png.color_map"

    const-string v38, "slpt-analog-green/day_23.png.color_map"

    const-string v39, "slpt-analog-green/day_24.png.color_map"

    const-string v40, "slpt-analog-green/day_25.png.color_map"

    const-string v41, "slpt-analog-green/day_26.png.color_map"

    const-string v42, "slpt-analog-green/day_27.png.color_map"

    const-string v43, "slpt-analog-green/day_28.png.color_map"

    const-string v44, "slpt-analog-green/day_29.png.color_map"

    const-string v45, "slpt-analog-green/day_30.png.color_map"

    const-string v46, "slpt-analog-green/day_31.png.color_map"

    filled-new-array/range {v15 .. v46}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v0, v15}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v14}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v6, v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v9, 0x7a

    const/16 v15, 0xb9

    invoke-virtual {v6, v9, v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    invoke-virtual {v2, v11}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v10, v10}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v9, 0x140

    invoke-virtual {v2, v9, v9}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v3, v12}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v3, v10, v10}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v3, v9, v9}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    invoke-virtual {v4, v13}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMonthView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/16 v11, 0x46

    const/16 v12, 0x66

    invoke-virtual {v4, v11, v12}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMonthView;->setStart(II)V

    const/16 v11, 0x48

    invoke-virtual {v4, v11, v11}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMonthView;->setRect(II)V

    invoke-virtual {v5, v14}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/16 v12, 0xb4

    const/16 v13, 0x65

    invoke-virtual {v5, v12, v13}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;->setStart(II)V

    invoke-virtual {v5, v11, v11}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedDayView;->setRect(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "slpt-analog-green/en/watchface_low_power.png"

    :goto_1
    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_2

    :cond_1
    const-string v11, "slpt-analog-green/watchface_low_power.png"

    goto :goto_1

    :goto_2
    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v11, 0x11

    iput-short v11, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v11, 0x44

    invoke-virtual {v8, v10, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v11, 0x18

    invoke-virtual {v8, v9, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v10, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v9, 0x2

    iput-byte v9, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1
.end method
