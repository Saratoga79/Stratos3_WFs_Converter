.class public Lcom/huami/watch/watchface/AnalogWatchFaceFifteenSlpt;
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
    .locals 18

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

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/AnalogWatchFaceFifteenSlpt;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;

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

    const-string v8, "guard/com.huami.watch.watchface.AnalogWatchFaceFifteen/watchface_bg_analog_fifteen_0.png"

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

    const-string v10, "timehand/04/8c/minute_%d.png.color_map"

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

    const-string v11, "timehand/04/8c/hour_%d.png.color_map"

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

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v16, 0x0

    :goto_7
    if-nez v16, :cond_a

    const-string v6, "graduation/06/8c/graduation.png"

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v16

    :cond_a
    move-object/from16 v6, v16

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "guard/xiaohuli/en/watchface_low_power.png"

    :goto_8
    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_9

    :cond_b
    const-string v6, "guard/xiaohuli/watchface_low_power.png"

    goto :goto_8

    :goto_9
    invoke-virtual {v4, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v6, 0x11

    iput-short v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v6, 0x4e

    invoke-virtual {v4, v14, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v6, 0x18

    invoke-virtual {v4, v7, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v14, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

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
