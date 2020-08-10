.class public Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private date_num:[[B

.field private digitalNums:[Ljava/lang/String;

.field private km_num:[[B

.field private step_num:[[B

.field private step_process_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->date_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->week_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->km_num:[[B

    const/16 v0, 0x12

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_process_num:[[B

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

    const-string v2, "guard/50road/date_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->date_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v4, 0x12

    if-ge v1, v4, :cond_1

    const-string v4, "guard/50road/step_process_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_process_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/50road/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/50road/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    move v4, v0

    :goto_3
    const/4 v5, 0x7

    if-ge v4, v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_4

    const-string v4, "guard/50road/step_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/50road/time_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->time_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_6

    const-string v4, "guard/50road/km_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->km_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 41

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

    move-object/from16 v16, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    move-object/from16 v17, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    move-object/from16 v18, v15

    new-instance v15, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v19, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    move-object/from16 v20, v13

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    move-object/from16 v21, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v22, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v23, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v24, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v25, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;-><init>()V

    move-object/from16 v26, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v27, v12

    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v28, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v29, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;

    move-object/from16 v30, v11

    const/16 v11, 0x12

    invoke-direct {v10, v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v28

    move-object/from16 v5, v30

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v6, v21

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v9, v19

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v11, v18

    invoke-virtual {v1, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v13, v23

    move-object/from16 v14, v29

    invoke-virtual {v13, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v32, v8

    move-object/from16 v8, v25

    invoke-virtual {v13, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v34, v0

    move-object/from16 v35, v9

    move-object/from16 v0, v16

    move-object/from16 v9, v17

    invoke-virtual {v0, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v36, v2

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v37, v13

    move-object/from16 v13, v27

    invoke-virtual {v0, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v38, v2

    move-object/from16 v2, v31

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->init_num_mem()V

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v40, v0

    const/high16 v0, -0x1000000

    iput v0, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v0, "guard/50road/watchface_bg.png"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/50road/watchface_icon_km.png"

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/50road/watchface_icon_step.png"

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/50road/step_seq.png"

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/50road/date_seq.png"

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v0, "guard/50road/time_seq.png"

    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    const-string v0, "guard/50road/en/km_text.png"

    :goto_0
    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "guard/50road/km_text.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v11, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v0, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_process_num:[[B

    invoke-virtual {v10, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setImagePictureArray([[B)Z

    const/16 v0, 0xcd

    const/4 v9, 0x0

    invoke-virtual {v10, v9, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setStart(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "guard/en/watchface_low_power.png"

    :goto_2
    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_1
    const-string v0, "guard/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-virtual {v13, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v0, 0x11

    iput-short v0, v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v0, 0xf

    invoke-virtual {v13, v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v0, 0x18

    const/16 v10, 0x140

    invoke-virtual {v13, v10, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v9, v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v11, 0x2

    iput-byte v11, v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    const-string v12, "guard/50road/distance_point.png"

    invoke-static {v1, v12}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v12, 0xb

    iput-short v12, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    iget-object v7, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->time_num:[[B

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v3, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->time_num:[[B

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v3, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->date_num:[[B

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    iget-object v2, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->km_num:[[B

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setImagePictureArray([[B)Z

    iget-object v2, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->km_num:[[B

    move-object/from16 v3, v35

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setImagePictureArray([[B)Z

    const/16 v2, 0x2f

    const/16 v3, 0x52

    move-object/from16 v4, v39

    invoke-virtual {v4, v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0xe

    invoke-virtual {v5, v9, v2, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v2, 0x10a

    invoke-virtual {v4, v9, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const v2, 0x7ffffffe

    invoke-virtual {v4, v10, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v11, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/16 v2, 0x7c

    const/16 v3, 0x3d

    move-object/from16 v4, v38

    invoke-virtual {v4, v2, v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    iget-object v2, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->week_num:[[B

    invoke-virtual {v4, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/4 v2, 0x4

    invoke-virtual {v14, v9, v2, v9, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setPadding(IIII)V

    const/16 v3, 0xe4

    move-object/from16 v4, v37

    invoke-virtual {v4, v9, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v4, v10, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_num:[[B

    move-object/from16 v3, v33

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    iget-object v0, v1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSevenSlpt;->step_num:[[B

    move-object/from16 v3, v34

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepTargetView;->setImagePictureArray([[B)Z

    iput-byte v11, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/16 v0, 0x75

    move-object/from16 v3, v36

    invoke-virtual {v3, v9, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v0, 0x43

    invoke-virtual {v3, v10, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9, v2, v9, v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setPadding(IIII)V

    iput-byte v11, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v8, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    return-object v40
.end method
