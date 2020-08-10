.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private cal_num:[[B

.field private date_num:[[B

.field private digitalNums:[Ljava/lang/String;

.field private small_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->digitalNums:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->week_num:[[B

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->small_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->time_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->cal_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->date_num:[[B

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

    const-string v2, "guard/jisudidai/time_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->time_num:[[B

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

    const-string v4, "guard/jisudidai/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/jisudidai/week_%d.png"

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

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    const-string v4, "guard/jisudidai/small_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->small_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_4

    const-string v4, "guard/jisudidai/date_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->date_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/jisudidai/cal_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->cal_num:[[B

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
    .locals 38

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v16, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v17, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v18, v11

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v19, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v20, v13

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v21, v13

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v22, v8

    new-instance v8, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;-><init>()V

    move-object/from16 v23, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v24, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v25, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;-><init>()V

    move-object/from16 v26, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v27, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v28, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v15, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v13, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v13, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v0, v24

    move-object/from16 v3, v25

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v7, v27

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_0
    move-object/from16 v7, v27

    :goto_0
    move-object/from16 v10, v22

    move-object/from16 v11, v23

    invoke-virtual {v11, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v14, v20

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v29, v8

    move-object/from16 v8, v19

    invoke-virtual {v11, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :cond_1
    move-object/from16 v29, v8

    move-object/from16 v8, v19

    :goto_1
    move-object/from16 v30, v4

    move-object/from16 v31, v14

    move-object/from16 v4, v17

    move-object/from16 v14, v18

    invoke-virtual {v4, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v32, v6

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v33, v15

    move-object/from16 v15, v21

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v34, v15

    move-object/from16 v15, v28

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->init_num_mem()V

    move-object/from16 v35, v13

    iget-object v13, v4, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v36, v4

    const/high16 v4, -0x1000000

    iput v4, v13, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v4, "guard/jisudidai/watchface_bg_8c.png"

    move-object/from16 v13, p0

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/watchface_bg_status_8c.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/watchface_icon_step_8c.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/watchface_icon_heart_8c.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/time_x.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/small_step.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/small_rate.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v4, "guard/jisudidai/kcal.png"

    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "guard/en/watchface_low_power.png"

    :goto_2
    invoke-static {v13, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, "guard/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-virtual {v15, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v4, 0x11

    iput-short v4, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v4, 0x75

    const/16 v5, 0x32

    invoke-virtual {v15, v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/4 v4, 0x0

    iput-boolean v4, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v5, 0x2

    iput-byte v5, v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    const-string v6, "-"

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const-string v1, "--"

    invoke-virtual {v9, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/high16 v6, 0x41c00000    # 24.0f

    const/4 v10, -0x1

    invoke-virtual {v9, v6, v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/16 v1, 0x15

    iput-short v1, v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    iput-boolean v4, v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v1

    const-string v9, "typeface/Teko-Regular.ttf"

    invoke-virtual {v1, v9}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v9

    const-string v15, "typeface/huamufontspeed.ttf"

    invoke-virtual {v9, v15}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    const/4 v15, 0x3

    move-object/from16 v5, v32

    invoke-virtual {v5, v15, v4, v4, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setPadding(IIII)V

    const/high16 v5, 0x42fc0000    # 126.0f

    invoke-virtual {v2, v5, v10, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    iget-object v5, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->time_num:[[B

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v5, 0x3f

    const/16 v9, 0x70

    invoke-virtual {v2, v5, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    move-object/from16 v2, v31

    invoke-virtual {v2, v6, v10, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object v5, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->small_num:[[B

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4, v15, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setPadding(IIII)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v9, v10, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/4 v2, 0x1

    invoke-virtual {v8, v5, v4, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v2, 0x41

    const/16 v15, 0x51

    invoke-virtual {v11, v2, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0x18

    const/16 v15, 0x5f

    invoke-virtual {v11, v15, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v5, v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v4, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentY:B

    move-object/from16 v8, v30

    invoke-virtual {v8, v6, v10, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object v11, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->small_num:[[B

    invoke-virtual {v8, v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setImagePictureArray([[B)Z

    invoke-virtual {v8, v4, v4, v5, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setPadding(IIII)V

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9, v10, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    const/4 v9, 0x3

    invoke-virtual {v7, v5, v4, v9, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    invoke-virtual {v0, v4, v4, v5, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/4 v0, 0x4

    invoke-virtual {v8, v5, v4, v0, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setPadding(IIII)V

    const/16 v0, 0xa0

    const/16 v7, 0x4f

    invoke-virtual {v3, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v3, v15, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v5, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    iget-object v0, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->cal_num:[[B

    move-object/from16 v2, v29

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;->setImagePictureArray([[B)Z

    const/16 v0, 0xa

    invoke-virtual {v12, v5, v4, v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/high16 v0, 0x42000000    # 32.0f

    move-object/from16 v2, v35

    invoke-virtual {v2, v0, v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/16 v0, 0x55

    const/16 v3, 0x101

    invoke-virtual {v2, v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x96

    const/16 v3, 0x30

    invoke-virtual {v2, v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    iget-object v2, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->date_num:[[B

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v2, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    const/16 v2, 0x48

    const/16 v3, 0xd0

    invoke-virtual {v0, v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iput-byte v5, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    const/high16 v0, 0x41900000    # 18.0f

    move-object/from16 v2, v34

    invoke-virtual {v2, v0, v10, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object v0, v13, Lcom/huami/watch/watchface/DigitalWatchFaceSportThreeSlpt;->week_num:[[B

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v0, 0xc6

    const/16 v1, 0xd4

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    const/16 v0, 0xd2

    iput v0, v14, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    iput v4, v14, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->len_angle:I

    const/16 v0, 0x12c

    iput v0, v14, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    return-object v36
.end method
