.class public Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field i:I

.field private small_num:[[B

.field private week_num:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->i:I

    const/4 v0, 0x7

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->week_num:[[B

    const/16 v0, 0xa

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->small_num:[[B

    return-void
.end method

.method private init_num_mem()V
    .locals 6

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/en/week_%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/week_%d.png"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->week_num:[[B

    invoke-static {p0, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    const-string v2, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/date_%d.png"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->small_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "2017NewYear"

    const-string v2, "createClockLayout8C: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->init_num_mem()V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v6

    const/4 v7, 0x0

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
    move-object v8, v7

    :goto_1
    if-nez v8, :cond_1

    const-string v8, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/watchface_bg_analog_thirteen_0.png"

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

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v10, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_0.png.color_map"

    const-string v11, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_1.png.color_map"

    const-string v12, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_2.png.color_map"

    const-string v13, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_3.png.color_map"

    const-string v14, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_4.png.color_map"

    const-string v15, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_5.png.color_map"

    const-string v16, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_6.png.color_map"

    const-string v17, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_7.png.color_map"

    const-string v18, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_8.png.color_map"

    const-string v19, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_9.png.color_map"

    const-string v20, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_10.png.color_map"

    const-string v21, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_11.png.color_map"

    const-string v22, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_12.png.color_map"

    const-string v23, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_13.png.color_map"

    const-string v24, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_14.png.color_map"

    const-string v25, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/minute_15.png.color_map"

    filled-new-array/range {v10 .. v25}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v8}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v11, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_0.png.color_map"

    const-string v12, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_1.png.color_map"

    const-string v13, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_2.png.color_map"

    const-string v14, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_3.png.color_map"

    const-string v15, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_4.png.color_map"

    const-string v16, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_5.png.color_map"

    const-string v17, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_6.png.color_map"

    const-string v18, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_7.png.color_map"

    const-string v19, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_8.png.color_map"

    const-string v20, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_9.png.color_map"

    const-string v21, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_10.png.color_map"

    const-string v22, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_11.png.color_map"

    const-string v23, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_12.png.color_map"

    const-string v24, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_13.png.color_map"

    const-string v25, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_14.png.color_map"

    const-string v26, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/hour_15.png.color_map"

    filled-new-array/range {v11 .. v26}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v10}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v11, 0x140

    invoke-virtual {v2, v11, v11}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v3, v10}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v3, v8, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v3, v11, v11}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    const-string v10, "guard/com.huami.watch.watchface.AnalogWatchFaceThirteen/watchface_default_graduation.png"

    invoke-static {v0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "guard/xiaohuli/en/watchface_low_power.png"

    :goto_2
    invoke-static {v0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_3

    :cond_2
    const-string v10, "guard/xiaohuli/watchface_low_power.png"

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v10, 0x11

    iput-short v10, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v10, 0x4e

    invoke-virtual {v4, v8, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v10, 0x18

    invoke-virtual {v4, v11, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v8, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v10, 0x2

    iput-byte v10, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    if-eqz v9, :cond_3

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_3
    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v7

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_5

    new-instance v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/16 v12, 0x6e

    const/16 v13, 0x5e

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v0, v4}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteenSlpt;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
