.class public Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private date_num:[[B

.field private digitalNums:[Ljava/lang/String;

.field private small_step_num:[[B

.field private step_process_num:[[B

.field private timer_num:[[B

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

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->digitalNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

    const/4 v1, 0x7

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->week_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->small_step_num:[[B

    const/16 v0, 0xd

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->step_process_num:[[B

    return-void
.end method

.method private init_num_mem()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xd

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v2, "guard/huanyingMC/step_pic_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->step_process_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const-string v2, "guard/huanyingMC/time_%d.png"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    const-string v4, "guard/huanyingMC/date_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

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

    const-string v4, "guard/huanyingMC/en/week_%d.png"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/String;

    const-string v4, "guard/huanyingMC/week_%d.png"

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

    iget-object v6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->week_num:[[B

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_5

    const-string v4, "guard/huanyingMC/step_num_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->small_step_num:[[B

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
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    move-object/from16 v17, v2

    new-instance v2, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;-><init>()V

    move-object/from16 v18, v2

    new-instance v2, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;

    move-object/from16 v19, v1

    const/16 v1, 0xd

    invoke-direct {v2, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;-><init>(I)V

    move-object/from16 v20, v2

    const/4 v1, 0x6

    new-array v2, v1, [[B

    invoke-virtual {v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v4, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v11, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v19

    invoke-virtual {v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v22, v11

    move-object/from16 v11, v17

    invoke-virtual {v1, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v24, v4

    move-object/from16 v4, v21

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->init_num_mem()V

    move-object/from16 v25, v4

    iget-object v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v26, v1

    const/high16 v1, -0x1000000

    iput v1, v4, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v1, "guard/huanyingMC/watchface_default_bg_8c.png"

    move-object/from16 v4, p0

    invoke-static {v4, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "guard/huanyingMC/date_minus.png"

    invoke-static {v4, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "guard/huanyingMC/colon.png"

    invoke-static {v4, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/4 v10, 0x6

    if-ge v7, v10, :cond_0

    const-string v14, "guard/huanyingMC/battery_%d.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v1

    invoke-static {v14, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    invoke-virtual {v5, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    invoke-virtual {v8, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->timer_num:[[B

    invoke-virtual {v9, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

    invoke-virtual {v12, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

    invoke-virtual {v13, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

    invoke-virtual {v15, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->date_num:[[B

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->small_step_num:[[B

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setImagePictureArray([[B)Z

    iget-object v2, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->week_num:[[B

    move-object/from16 v3, v25

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v2, 0x3d

    const/16 v5, 0xa7

    move-object/from16 v6, v23

    invoke-virtual {v6, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0xee

    move-object/from16 v5, v22

    invoke-virtual {v5, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v2, 0x140

    const/16 v6, 0x1a

    invoke-virtual {v5, v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v2, 0xd

    invoke-virtual {v3, v2, v1, v1, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setPadding(IIII)V

    const/4 v2, 0x2

    iput-byte v2, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v1, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    iget-object v3, v4, Lcom/huami/watch/watchface/DigitalWatchFaceSporttwelveSlpt;->step_process_num:[[B

    move-object/from16 v5, v24

    invoke-virtual {v5, v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setImagePictureArray([[B)Z

    const/16 v3, 0xcd

    invoke-virtual {v5, v1, v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setStart(II)V

    const/16 v1, 0x70

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setStart(II)V

    const/16 v1, 0x12

    const/16 v6, 0x72

    invoke-virtual {v0, v6, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->setRect(II)V

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepNumView;->alignX:B

    const/16 v0, 0x32

    invoke-virtual {v5, v3, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setStart(II)V

    invoke-virtual {v5, v6, v6}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayStepPicGroupView;->setRect(II)V

    const/16 v0, 0xd0

    const/16 v1, 0x26

    invoke-virtual {v11, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setStart(II)V

    return-object v26
.end method
