.class public Lcom/huami/watch/watchface/sportface/IndoorRidingService;
.super Landroid/app/Service;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field public caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

.field private clockPeriod:I

.field public heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

.field public hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

.field public hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

.field public linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

.field private mContext:Landroid/content/Context;

.field private mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field public minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

.field public minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

.field public slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView1Mem:[B

.field public slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView2Mem:[B

.field public slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView3Mem:[B

.field public slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView4Mem:[B

.field public slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView5Mem:[B

.field public slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView6Mem:[B

.field public sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

.field public sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

.field public sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

.field public sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field public timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field public timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private time_num:[[B

.field private value_num:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6Mem:[B

    new-instance v0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;-><init>(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClock;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->clockPeriod:I

    return p0
.end method

.method private initDefaultSettings(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v2, -0x1000000

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_point.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_minute.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_second.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_colon.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    const-string v3, "sport/time_seq.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/4 v4, 0x1

    iput-byte v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v4, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    if-eqz v0, :cond_0

    const-string v1, "sport/en/sport_slpt_riding_bg.png"

    :goto_0
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1Mem:[B

    goto :goto_1

    :cond_0
    const-string v1, "sport/sport_slpt_riding_bg.png"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "sport/num_invalid.png"

    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2Mem:[B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_1

    const-string v1, "sport/en/sport_slpt_heart_burning_long.png"

    :goto_2
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3Mem:[B

    goto :goto_3

    :cond_1
    const-string v1, "sport/sport_slpt_heart_burning_long.png"

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateBurningView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_2

    const-string v1, "sport/en/sport_slpt_heart_hight_long.png"

    :goto_4
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4Mem:[B

    goto :goto_5

    :cond_2
    const-string v1, "sport/sport_slpt_heart_hight_long.png"

    goto :goto_4

    :goto_5
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateHighView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_3

    const-string v1, "sport/en/sport_slpt_heart_strength_hight_long.png"

    :goto_6
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5Mem:[B

    goto :goto_7

    :cond_3
    const-string v1, "sport/sport_slpt_heart_strength_hight_long.png"

    goto :goto_6

    :goto_7
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateStrength(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_4

    const-string v0, "sport/en/sport_slpt_heart_aerobic_long.png"

    :goto_8
    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6Mem:[B

    goto :goto_9

    :cond_4
    const-string v0, "sport/sport_slpt_heart_aerobic_long.png"

    goto :goto_8

    :goto_9
    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6Mem:[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateAerobic(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setImagePictureArray([[B)Z

    return-void
.end method

.method private initLayout()V
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getBatteryView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v2, 0x6

    iput-short v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v2, 0x140

    const v3, 0x7ffffffe

    invoke-virtual {v0, v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v3, 0x2

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x2b

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x38

    invoke-virtual {v0, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    const/16 v5, 0x80

    invoke-virtual {v0, v1, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-virtual {v0, v2, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    const/16 v5, 0xd8

    invoke-virtual {v0, v1, v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-virtual {v0, v2, v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v4, 0x113

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v5, 0x16

    invoke-virtual {v0, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-void
.end method

.method private init_num_mem()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const-string v2, "sport/num_%d.png"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->value_num:[[B

    invoke-static {p0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    const-string v4, "sport/time_%d.png"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->time_num:[[B

    invoke-static {p0, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "IndoorRidingService"

    const-string v1, "onCreate ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->init_num_mem()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->initLayout()V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->initDefaultSettings(Landroid/content/Context;)V

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClock;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "IndoorRidingService"

    const-string v1, "onDestroy ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unbindService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    :try_start_0
    const-string p2, "clockperiod"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->clockPeriod:I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string p2, "IndoorRidingService"

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method
