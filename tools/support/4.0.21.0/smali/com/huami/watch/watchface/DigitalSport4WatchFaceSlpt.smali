.class public Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private date_num:[[B

.field private digitalNums:[Ljava/lang/String;

.field private hour_num:[[B

.field private minute_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->date_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->week_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->hour_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->minute_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

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

    const-string v2, "guard/manbuqingchun/date_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->date_num:[[B

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

    const-string v4, "guard/manbuqingchun/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/manbuqingchun/week_%d.png"

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

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    const-string v4, "guard/manbuqingchun/hour_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->hour_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_4

    const-string v4, "guard/manbuqingchun/minute_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->minute_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/manbuqingchun/small_num_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

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
    .locals 36

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

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

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v16, v8

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v17, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v18, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v19, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v20, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v21, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v22, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v23, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v24, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v25, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;-><init>()V

    move-object/from16 v26, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v27, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v21

    invoke-virtual {v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v4, v20

    invoke-virtual {v10, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v7, v23

    invoke-virtual {v7, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v8, v24

    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v25

    invoke-virtual {v7, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v15, v26

    invoke-virtual {v7, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v28, v15

    move-object/from16 v15, v17

    invoke-virtual {v15, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v30, v8

    move-object/from16 v8, v16

    invoke-virtual {v15, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v31, v7

    move-object/from16 v7, v27

    invoke-virtual {v15, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->init_num_mem()V

    move-object/from16 v33, v0

    iget-object v0, v15, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v34, v15

    const/high16 v15, -0x1000000

    iput v15, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v0, "guard/manbuqingchun/watchface_default_status_8c.png"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v0, "guard/manbuqingchun/watchface_icon_km.png"

    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/manbuqingchun/watchface_icon_step_8c.png"

    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/manbuqingchun/small_step_seq.png"

    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/manbuqingchun/date_seq.png"

    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    const-string v0, "guard/manbuqingchun/en/small_num_km.png"

    :goto_0
    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "guard/manbuqingchun/small_num_km.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "guard/en/watchface_low_power.png"

    :goto_2
    invoke-static {v15, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_1
    const-string v0, "guard/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-virtual {v7, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v0, 0x11

    iput-short v0, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v0, 0x24

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v0, 0x18

    const/16 v11, 0x140

    invoke-virtual {v7, v11, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v9, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v0, 0x2

    iput-byte v0, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    const-string v7, "guard/manbuqingchun/distance_point.png"

    invoke-static {v15, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v7, 0xb

    iput-short v7, v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    iget-object v7, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->hour_num:[[B

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v7, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->minute_num:[[B

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v7, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

    invoke-virtual {v12, v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setImagePictureArray([[B)Z

    iget-object v7, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setImagePictureArray([[B)Z

    const/4 v1, 0x5

    invoke-virtual {v6, v9, v1, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v10, v9, v9, v0, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setPadding(IIII)V

    const/16 v1, 0x3e

    invoke-virtual {v5, v9, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0x1c

    invoke-virtual {v5, v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v0, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v9, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    const/16 v1, 0xba

    const/16 v4, 0xaa

    move-object/from16 v5, v33

    invoke-virtual {v5, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v1, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->date_num:[[B

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v1, 0xbd

    const/16 v4, 0xc8

    move-object/from16 v5, v32

    invoke-virtual {v5, v1, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    iget-object v1, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->week_num:[[B

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/4 v1, 0x6

    invoke-virtual {v14, v9, v1, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v1, 0xea

    move-object/from16 v4, v31

    invoke-virtual {v4, v9, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0x18

    invoke-virtual {v4, v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v1, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

    move-object/from16 v5, v30

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    iget-object v1, v15, Lcom/huami/watch/watchface/DigitalSport4WatchFaceSlpt;->small_num:[[B

    move-object/from16 v5, v28

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;->setImagePictureArray([[B)Z

    iput-byte v0, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput v9, v8, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    const/16 v0, 0x168

    iput v0, v8, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    const/16 v0, 0x3c

    const/16 v1, 0x5d

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0xbc

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    return-object v34
.end method
