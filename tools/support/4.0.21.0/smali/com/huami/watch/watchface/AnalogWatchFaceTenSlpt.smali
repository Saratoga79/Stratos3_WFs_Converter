.class public Lcom/huami/watch/watchface/AnalogWatchFaceTenSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTenSlpt;->i:I

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "xiaohuli"

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

    const-string v6, "guard/xiaohuli/watchface_default_bg.png"

    invoke-static {v0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v6, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v7, -0x1000000

    iput v7, v6, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    invoke-super/range {p0 .. p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v7, "guard/xiaohuli/minute_00.png.color_map"

    const-string v8, "guard/xiaohuli/minute_01.png.color_map"

    const-string v9, "guard/xiaohuli/minute_02.png.color_map"

    const-string v10, "guard/xiaohuli/minute_03.png.color_map"

    const-string v11, "guard/xiaohuli/minute_04.png.color_map"

    const-string v12, "guard/xiaohuli/minute_05.png.color_map"

    const-string v13, "guard/xiaohuli/minute_06.png.color_map"

    const-string v14, "guard/xiaohuli/minute_07.png.color_map"

    const-string v15, "guard/xiaohuli/minute_08.png.color_map"

    const-string v16, "guard/xiaohuli/minute_09.png.color_map"

    const-string v17, "guard/xiaohuli/minute_10.png.color_map"

    const-string v18, "guard/xiaohuli/minute_11.png.color_map"

    const-string v19, "guard/xiaohuli/minute_12.png.color_map"

    const-string v20, "guard/xiaohuli/minute_13.png.color_map"

    const-string v21, "guard/xiaohuli/minute_14.png.color_map"

    const-string v22, "guard/xiaohuli/minute_15.png.color_map"

    filled-new-array/range {v7 .. v22}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v6}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    const-string v8, "guard/xiaohuli/hour_00.png.color_map"

    const-string v9, "guard/xiaohuli/hour_01.png.color_map"

    const-string v10, "guard/xiaohuli/hour_02.png.color_map"

    const-string v11, "guard/xiaohuli/hour_03.png.color_map"

    const-string v12, "guard/xiaohuli/hour_04.png.color_map"

    const-string v13, "guard/xiaohuli/hour_05.png.color_map"

    const-string v14, "guard/xiaohuli/hour_06.png.color_map"

    const-string v15, "guard/xiaohuli/hour_07.png.color_map"

    const-string v16, "guard/xiaohuli/hour_08.png.color_map"

    const-string v17, "guard/xiaohuli/hour_09.png.color_map"

    const-string v18, "guard/xiaohuli/hour_10.png.color_map"

    const-string v19, "guard/xiaohuli/hour_11.png.color_map"

    const-string v20, "guard/xiaohuli/hour_12.png.color_map"

    const-string v21, "guard/xiaohuli/hour_13.png.color_map"

    const-string v22, "guard/xiaohuli/hour_14.png.color_map"

    const-string v23, "guard/xiaohuli/hour_15.png.color_map"

    filled-new-array/range {v8 .. v23}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-super {v0, v7}, Lcom/huami/watch/watchface/AbstractSlptClock;->addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setStart(II)V

    const/16 v8, 0x140

    invoke-virtual {v2, v8, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedMinuteView;->setRect(II)V

    invoke-virtual {v3, v7}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    invoke-virtual {v3, v6, v6}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setStart(II)V

    invoke-virtual {v3, v8, v8}, Lcom/ingenic/iwds/slpt/view/predrawed/SlptPredrawedHourWithMinuteView;->setRect(II)V

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "guard/xiaohuli/en/watchface_low_power.png"

    :goto_0
    invoke-static {v0, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v7, "guard/xiaohuli/watchface_low_power.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v4, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v7, 0x11

    iput-short v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/16 v7, 0x4e

    invoke-virtual {v4, v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v7, 0x18

    invoke-virtual {v4, v8, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iput-boolean v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/4 v6, 0x2

    iput-byte v6, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v1
.end method
