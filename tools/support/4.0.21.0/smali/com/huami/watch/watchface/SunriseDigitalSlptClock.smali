.class public Lcom/huami/watch/watchface/SunriseDigitalSlptClock;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field digitalNums:[Ljava/lang/String;


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

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    move-object/from16 v16, v1

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    move-object/from16 v17, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v18, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    move-object/from16 v19, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    move-object/from16 v20, v14

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v21, v14

    const/high16 v14, 0x41a80000    # 21.0f

    iput v14, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->textSize:F

    iput v14, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->textSize:F

    iput v14, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->textSize:F

    iput v14, v6, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->textSize:F

    iput v14, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v14, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textSize:F

    iput v14, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textSize:F

    iput v14, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v14, v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textSize:F

    iput v14, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textSize:F

    iput v14, v13, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textSize:F

    const/4 v14, -0x1

    iput v14, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->textColor:I

    iput v14, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->textColor:I

    iput v14, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->textColor:I

    iput v14, v6, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->textColor:I

    iput v14, v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v14, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textColor:I

    iput v14, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textColor:I

    iput v14, v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v14, v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textColor:I

    iput v14, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textColor:I

    iput v14, v13, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textColor:I

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v6, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->setStringPictureArray([Ljava/lang/String;)V

    const/16 v14, 0x2d

    invoke-virtual {v7, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v9, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->setStringPictureArray([Ljava/lang/String;)V

    const/16 v14, 0x2d

    invoke-virtual {v10, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, v0, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v0, 0x7f0b0005

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v0, v13, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v14, 0x8

    iput-short v14, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v0, 0x0

    const/16 v3, 0x78

    invoke-virtual {v2, v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v3, 0x63

    const/16 v4, 0x140

    invoke-virtual {v2, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v5, 0x2

    iput-byte v5, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v6

    const-string v7, "typeface/AvenirLTStd-Medium.otf"

    invoke-virtual {v6, v7}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    const/4 v7, -0x1

    iput v7, v15, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->textColor:I

    iput v7, v1, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->textColor:I

    move-object/from16 v8, v18

    iput v7, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    move-object/from16 v9, v19

    iput v7, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->textColor:I

    move-object/from16 v10, v20

    iput v7, v10, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->textColor:I

    const/high16 v7, 0x428f0000    # 71.5f

    iput v7, v15, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->textSize:F

    iput v7, v1, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->textSize:F

    const/high16 v11, 0x42480000    # 50.0f

    iput v11, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v7, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->textSize:F

    iput v7, v10, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->textSize:F

    iput-object v6, v15, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->typeface:Landroid/graphics/Typeface;

    iput-object v6, v1, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->typeface:Landroid/graphics/Typeface;

    iput-object v6, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->typeface:Landroid/graphics/Typeface;

    iput-object v6, v9, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->typeface:Landroid/graphics/Typeface;

    iput-object v6, v10, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->typeface:Landroid/graphics/Typeface;

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v7, v6, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setStringPictureArray([Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v7, v6, Lcom/huami/watch/watchface/SunriseDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v10, v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v7, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v11, 0xa

    iput-short v11, v7, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    move-object/from16 v7, v17

    invoke-virtual {v7, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v7, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v7, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v1, 0x2b

    invoke-virtual {v7, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v7, v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "guard/en/watchface_low_power.png"

    :goto_0
    invoke-static {v6, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "guard/watchface_low_power.png"

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v1, 0x11

    iput-short v1, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v1, 0x75

    const/16 v4, 0x106

    invoke-virtual {v3, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iput-boolean v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    iput-byte v5, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignParentX:B

    const-string v0, "slpt-digital-sunrise/bg.png"

    invoke-static {v6, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    goto :goto_2

    :cond_2
    move-object/from16 v1, v21

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v0
.end method
