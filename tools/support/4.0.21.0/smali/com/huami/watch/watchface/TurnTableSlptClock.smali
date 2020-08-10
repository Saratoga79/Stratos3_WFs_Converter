.class public Lcom/huami/watch/watchface/TurnTableSlptClock;
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
    .locals 7

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v6, "nothing.png"

    invoke-static {p0, v6}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v4, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v6, "slpt-analog-turntable/hour_8c.png"

    invoke-static {p0, v6}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;->setImagePicture([B)V

    const-string v6, "slpt-analog-turntable/min_8c.png"

    invoke-static {p0, v6}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->setImagePicture([B)V

    const-string v6, "slpt-analog-turntable/bg_8c.png"

    invoke-static {p0, v6}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v2, 0x2

    iput-byte v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->alignX:B

    iput-byte v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->alignY:B

    iput-byte v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->descHeight:B

    iput-byte v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->descWidth:B

    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    const/16 v3, 0x140

    iput v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_1
    return-object v0
.end method
