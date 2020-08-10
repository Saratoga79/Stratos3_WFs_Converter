.class public Lcom/huami/watch/watchface/StripeSlptClock;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field digitalNums:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    sget-object v0, Lcom/huami/watch/watchface/DigitalWatchFace;->WEEKDAYS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/watchface/StripeSlptClock;->weekNums:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 15

    const-string v0, "AbstractSlptClock-AnalogClassic"

    const-string v1, "createClockLayout8C: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    const/16 v13, 0x13

    int-to-float v13, v13

    iput v13, v2, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->textSize:F

    iput v13, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->textSize:F

    iput v13, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->textSize:F

    iput v13, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->textSize:F

    iput v13, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v13, v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textSize:F

    iput v13, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textSize:F

    iput v13, v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textSize:F

    iput v13, v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textSize:F

    iput v13, v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textSize:F

    iput v13, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textSize:F

    const/4 v13, -0x1

    iput v13, v2, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->textColor:I

    iput v13, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->textColor:I

    iput v13, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->textColor:I

    iput v13, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->textColor:I

    iput v13, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v13, v7, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->textColor:I

    iput v13, v8, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->textColor:I

    iput v13, v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->textColor:I

    iput v13, v10, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->textColor:I

    iput v13, v11, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->textColor:I

    iput v13, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->textColor:I

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;->setStringPictureArray([Ljava/lang/String;)V

    const/16 v13, 0x2f

    invoke-virtual {v6, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v14, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v7, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v14, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, p0, Lcom/huami/watch/watchface/StripeSlptClock;->weekNums:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v13, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v14, 0x83

    iput-short v14, v13, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v13, v12, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v14, 0x3

    iput-short v14, v13, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v3, 0x6e

    iput-short v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v3, 0x49

    iput-short v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v1, 0x1

    iput-byte v1, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v6, "slpt-analog-stripe/hour_8c.png"

    invoke-static {p0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogHourView;->setImagePicture([B)V

    const-string v6, "slpt-analog-stripe/minute_8c.png"

    invoke-static {p0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v6}, Lcom/ingenic/iwds/slpt/view/analog/SlptAnalogMinuteView;->setImagePicture([B)V

    const-string v6, "slpt-analog-stripe/bg_8c.png"

    invoke-static {p0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v3, 0x2

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->alignX:B

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->alignY:B

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->descHeight:B

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->descWidth:B

    iget-object v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    const/16 v4, 0x140

    iput v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->height:I

    iget-object v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;->rect:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;

    iput v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Rect;->width:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_1
    return-object v0
.end method
