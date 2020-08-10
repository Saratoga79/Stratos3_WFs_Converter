.class public Lcom/huami/watch/watchface/CubeDigitalSlptClock;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field digitalNums:[Ljava/lang/String;

.field images:[[B

.field weekNums:[Ljava/lang/String;


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

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    sget-object v0, Lcom/huami/watch/watchface/DigitalWatchFace;->WEEKDAYS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->weekNums:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    return-void
.end method

.method private initImageBytes()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_0.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_1.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_2.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_3.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_4.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_5.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_6.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_7.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_8.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    const-string v1, "slpt-digital-cube/cube_9.png"

    invoke-static {p0, v1}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->initImageBytes()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    move-object/from16 v16, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v17, v1

    const/16 v1, 0x12

    int-to-float v1, v1

    iput v1, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v1, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textSize:F

    iput v1, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textSize:F

    iput v1, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v1, v7, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textSize:F

    iput v1, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textSize:F

    iput v1, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textSize:F

    const/4 v1, -0x1

    iput v1, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v1, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textColor:I

    iput v1, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textColor:I

    iput v1, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v1, v7, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textColor:I

    iput v1, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textColor:I

    iput v1, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v18, v10

    const v10, 0x7f070021

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f070022

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v10, 0x7f0b0005

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v1, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v10, 0x2

    iput-short v10, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v1, 0x0

    const/16 v3, 0xc1

    invoke-virtual {v2, v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const v3, 0x7ffffffe

    const/16 v4, 0x140

    invoke-virtual {v2, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v10, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v5, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    invoke-virtual {v11, v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object v5, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    invoke-virtual {v12, v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object v5, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    invoke-virtual {v14, v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object v5, v0, Lcom/huami/watch/watchface/CubeDigitalSlptClock;->images:[[B

    invoke-virtual {v15, v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    const-string v5, "slpt-digital-cube/cube_x.png"

    invoke-static {v0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v5, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v6, 0xa

    iput-short v6, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v5, v13, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v7, 0xd

    iput-short v7, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v5, v14, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iput-short v7, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v5, v15, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    iput-short v6, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    move-object/from16 v5, v18

    invoke-virtual {v5, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v5, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v6, 0x6c

    invoke-virtual {v5, v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v5, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v10, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const-string v3, "nothing.png"

    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v4, v17

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, v17

    :goto_0
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "guard/en/watchface_low_power.png"

    :goto_1
    invoke-static {v0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string v3, "guard/watchface_low_power.png"

    goto :goto_1

    :goto_2
    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v6, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v3, 0x11

    iput-short v3, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v3, 0x75

    const/16 v7, 0x46

    invoke-virtual {v6, v3, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iput-boolean v1, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    iput-byte v10, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    move-object/from16 v1, v16

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1
.end method
