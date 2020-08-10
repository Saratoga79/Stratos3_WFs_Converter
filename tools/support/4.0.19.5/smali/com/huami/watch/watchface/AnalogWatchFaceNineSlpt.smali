.class public Lcom/huami/watch/watchface/AnalogWatchFaceNineSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceNineSlpt;->i:I

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

    const-string v1, "jingdian"

    const-string v2, "createClockLayout8C: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v6, "guard/jingdian/watchface_default_bg.png"

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v6, "guard/jingdian/watchface_default_hour.png"

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;->setImagePicture([B)V

    iget-object v6, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v7, -0x1000000

    iput v7, v6, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v7, "guard/jingdian/minute_00.png.color_map"

    const-string v8, "guard/jingdian/minute_01.png.color_map"

    const-string v9, "guard/jingdian/minute_02.png.color_map"

    const-string v10, "guard/jingdian/minute_03.png.color_map"

    const-string v11, "guard/jingdian/minute_04.png.color_map"

    const-string v12, "guard/jingdian/minute_05.png.color_map"

    const-string v13, "guard/jingdian/minute_06.png.color_map"

    const-string v14, "guard/jingdian/minute_07.png.color_map"

    const-string v15, "guard/jingdian/minute_08.png.color_map"

    const-string v16, "guard/jingdian/minute_09.png.color_map"

    const-string v17, "guard/jingdian/minute_10.png.color_map"

    const-string v18, "guard/jingdian/minute_11.png.color_map"

    const-string v19, "guard/jingdian/minute_12.png.color_map"

    const-string v20, "guard/jingdian/minute_13.png.color_map"

    const-string v21, "guard/jingdian/minute_14.png.color_map"

    const-string v22, "guard/jingdian/minute_15.png.color_map"

    filled-new-array/range {v7 .. v22}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v6}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v7, 0x140

    invoke-virtual {v2, v7, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v3, v6, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;->setStart(II)V

    invoke-virtual {v3, v7, v7}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;->setRect(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "guard/jingdian/en/watchface_low_power.png"

    :goto_0
    invoke-static {v0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_1

    :cond_0
    const-string v8, "guard/jingdian/watchface_low_power.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v8, 0x11

    iput-short v8, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v8, 0x4e

    invoke-virtual {v4, v6, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v8, 0x18

    invoke-virtual {v4, v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1
.end method
