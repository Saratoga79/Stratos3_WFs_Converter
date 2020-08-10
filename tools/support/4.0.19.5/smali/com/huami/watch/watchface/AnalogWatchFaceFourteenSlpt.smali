.class public Lcom/huami/watch/watchface/AnalogWatchFaceFourteenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteenSlpt;->i:I

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 31

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteenSlpt;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFile(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_1

    :pswitch_1
    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgPathSlpt()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_1

    :cond_0
    :goto_0
    :pswitch_2
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_1

    const-string v8, "guard/com.huami.watch.watchface.AnalogWatchFaceFourteen/watchface_default_fourteen_bg.png"

    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    :cond_1
    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v9, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v8, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v10, -0x1000000

    iput v10, v8, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    const/4 v8, 0x2

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeHandType()I

    move-result v10

    if-eq v10, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getMinutePathSlpt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getHourPathSlpt()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-nez v10, :cond_4

    const-string v10, "timehand/01/8c/minute_%d.png.color_map"

    :cond_4
    const/16 v12, 0x10

    new-array v13, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    move v15, v14

    :goto_4
    array-length v7, v13

    const/4 v8, 0x1

    if-ge v15, v7, :cond_5

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x2

    goto :goto_4

    :cond_5
    if-nez v11, :cond_6

    const-string v11, "timehand/01/8c/hour_%d.png.color_map"

    :cond_6
    new-array v7, v12, [Ljava/lang/String;

    move v10, v14

    :goto_5
    array-length v12, v7

    if-ge v10, v12, :cond_7

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v8, v0, v13}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v8}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-direct {v10, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v10}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v14, v14}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v7, 0x140

    invoke-virtual {v2, v7, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v3, v10}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v3, v14, v14}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v3, v7, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduationType()I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduationPathSlpt()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_a

    const-string v8, "graduation/01/8c/graduation.png"

    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    :cond_a
    invoke-virtual {v5, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "guard/xiaohuli/en/watchface_low_power.png"

    :goto_8
    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_9

    :cond_b
    const-string v8, "guard/xiaohuli/watchface_low_power.png"

    goto :goto_8

    :goto_9
    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v8, 0x11

    iput-short v8, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v8, 0x4e

    invoke-virtual {v4, v14, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v8, 0x18

    invoke-virtual {v4, v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v14, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v7, 0x2

    iput-byte v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_a

    :cond_c
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v18, 0x34

    const/16 v19, 0x76

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v22}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x77

    const/16 v27, 0xbb

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v30}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v18, 0xb8

    move-object v15, v4

    invoke-direct/range {v15 .. v22}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v24, 0x3

    const/16 v25, 0x6

    const/16 v26, 0x6e

    const/16 v27, 0x5e

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v30}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_b
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_e

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/16 v16, 0x3

    const/16 v17, 0x6

    const/16 v18, 0x6e

    const/16 v19, 0x5e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v22}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_e
    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_10

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v0, v4}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteenSlpt;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
