.class public Lcom/huami/watch/watchface/sportface/MountainLayout6;
.super Lcom/ingenic/iwds/slpt/SlptClock;


# instance fields
.field public altitudeBgView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public altitudeDefaultView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field public altitudeView:Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

.field public ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

.field public ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

.field public descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

.field public distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

.field public distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

.field public distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

.field public hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

.field public linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

.field private mContext:Landroid/content/Context;

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

.field public slptBgView7:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView7Mem:[B

.field public sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field public sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

.field public sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

.field public sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

.field public sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field private sportTypeface:Landroid/graphics/Typeface;

.field public timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field public timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private time_num:[[B

.field private value_num:[[B

.field public watchLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->watchLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeBgView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeDefaultView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeView:Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView7:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView2Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView3Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView4Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView5Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView6Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView7Mem:[B

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/MountainLayout6;->init_num_mem()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/MountainLayout6;->initLayout()V

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/MountainLayout6;->initDefaultSettings(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/sportface/MountainLayout6;->setRootView(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    return-void
.end method

.method private initDefaultSettings(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v2, -0x1000000

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_point.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v3, "sport/num_minute.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v3, "sport/num_second.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v3, "sport/num_colon.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v4, "sport/time_seq.png"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v5, "sport/num_negative.png"

    invoke-static {v4, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    const-string v6, "sport/num_invalid.png"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeBgView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeDefaultView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeDefaultView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAltitudeInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeBgView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAltitudeNegativeView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setDistanceSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    if-eqz v0, :cond_0

    const-string v0, "sport/en/sport_slpt_mountain_bg.png"

    :goto_0
    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1Mem:[B

    goto :goto_1

    :cond_0
    const-string v0, "sport/sport_slpt_mountain_bg.png"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1Mem:[B

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "sport/icomoon.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeView:Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;->setImagePictureArray([[B)Z

    return-void
.end method

.method private initLayout()V
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->watchLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getBatteryView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v3, 0x6

    iput-short v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0x140

    const v2, 0x7ffffffe

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v3, 0x2

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x41

    const/16 v5, 0x2b

    invoke-virtual {v0, v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x38

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeBgView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeView:Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeDefaultView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0x73

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    const/16 v4, 0xeb

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x69

    invoke-virtual {v0, v4, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v1, 0xae

    const/16 v4, 0xe2

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView7:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v1, 0x6c

    const/16 v4, 0xe6

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    const/16 v1, 0xd2

    const/16 v4, 0x3c

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    const/16 v4, 0xa8

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->altitudeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->ascendDistanceView:Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->descendMeterView:Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

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

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->value_num:[[B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

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

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->time_num:[[B

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/MountainLayout6;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
