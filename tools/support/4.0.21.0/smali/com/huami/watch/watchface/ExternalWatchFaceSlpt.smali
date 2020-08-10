.class public Lcom/huami/watch/watchface/ExternalWatchFaceSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 21

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    iget-object v0, v8, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v1, -0x1000000

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/ExternalWatchFaceSlpt;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "external_watchface"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v11, 0x6

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :cond_0
    :goto_0
    :pswitch_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_1
    const/4 v12, 0x2

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduationType()I

    move-result v2

    if-eq v2, v12, :cond_3

    if-eq v2, v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduationPathSlpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduationPathSlpt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_5
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeDigital()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "ExternalWatchFaceSlpt"

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getImageFontInfo()Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v2, 0xa

    new-array v14, v2, [[B

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    invoke-static {v3, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(CI)[B

    move-result-object v4

    aput-object v4, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/16 v2, 0x3a

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(CI)[B

    move-result-object v15

    const/16 v2, 0x41

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(CI)[B

    move-result-object v6

    const/16 v2, 0x50

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(CI)[B

    move-result-object v5

    const/16 v2, 0x4d

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseCharData(CI)[B

    move-result-object v4

    new-instance v3, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getY()I

    move-result v16

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getWidth()I

    move-result v17

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getHeight()I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v3

    move-object v1, v7

    move-object v13, v3

    move/from16 v3, v16

    move-object v11, v4

    move/from16 v4, v17

    move-object v12, v5

    move/from16 v5, v18

    move-object/from16 v20, v9

    move-object v9, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;-><init>(Landroid/content/Context;IIIII)V

    invoke-virtual {v13, v14}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->setTimeView([[B)V

    invoke-virtual {v13, v15}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->setColonView([B)V

    invoke-virtual {v13, v9, v12, v11}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->setAPMview([B[B[B)V

    invoke-virtual {v13}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_4

    :cond_7
    move-object/from16 v20, v9

    :goto_4
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v7, v2}, Lcom/huami/watch/watchface/ExternalWatchFaceSlpt;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v8, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    const/16 v0, 0x140

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeHandType()I

    move-result v1

    const/16 v2, 0x10

    const/4 v13, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 v3, 0x6

    if-eq v1, v3, :cond_a

    goto/16 :goto_f

    :cond_a
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getMinutePathSlpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getHourPathSlpt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v4, ".color_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-array v4, v2, [[B

    const/4 v5, 0x0

    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_c

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v6, v11

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    invoke-virtual {v10, v9, v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v6

    aput-object v6, v4, v5

    aget-object v6, v4, v5

    if-nez v6, :cond_b

    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    move v3, v13

    :goto_7
    if-eqz v3, :cond_e

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>([[B)V

    invoke-super {v7, v3}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v4, v0, v0}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    goto :goto_8

    :cond_d
    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x6

    invoke-virtual {v10, v4, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;-><init>()V

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->setImagePicture([B)V

    const/4 v3, 0x2

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->alignX:B

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->alignY:B

    iget-object v5, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v0, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    iget-object v5, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v0, v5, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->descHeight:B

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourWithMinuteView;->descWidth:B

    :goto_8
    invoke-virtual {v8, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_e
    if-eqz v1, :cond_16

    const-string v3, ".color_map"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-array v2, v2, [[B

    const/4 v3, 0x0

    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_10

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v10, v5, v4}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    if-nez v4, :cond_f

    const/4 v13, 0x0

    goto :goto_a

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    if-eqz v13, :cond_16

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>([[B)V

    invoke-super {v7, v1}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    goto/16 :goto_d

    :cond_11
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x6

    invoke-virtual {v10, v2, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->parseFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->setImagePicture([B)V

    const/4 v1, 0x2

    iput-byte v1, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->alignX:B

    iput-byte v1, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->alignY:B

    iget-object v3, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    iget-object v3, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    iput-byte v1, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->descHeight:B

    iput-byte v1, v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->descWidth:B

    goto :goto_e

    :cond_12
    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getMinutePathSlpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getHourPathSlpt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_b
    array-length v6, v4

    if-ge v5, v6, :cond_13

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v3, v7, v4}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v7, v3}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v4, v0, v0}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    invoke-virtual {v8, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_14
    if-eqz v1, :cond_16

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_c
    array-length v4, v2

    if-ge v3, v4, :cond_15

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_15
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v1, v7, v2}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v7, v1}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    :goto_d
    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    invoke-virtual {v2, v0, v0}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    :goto_e
    invoke-virtual {v8, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_16
    :goto_f
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "guard/xiaohuli/en/watchface_low_power.png"

    :goto_10
    invoke-static {v7, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, v20

    goto :goto_11

    :cond_17
    const-string v1, "guard/xiaohuli/watchface_low_power.png"

    goto :goto_10

    :goto_11
    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v2, 0x11

    iput-short v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v0, 0x2

    iput-byte v0, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
