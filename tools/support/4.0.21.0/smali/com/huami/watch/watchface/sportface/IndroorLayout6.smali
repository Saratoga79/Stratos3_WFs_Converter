.class public Lcom/huami/watch/watchface/sportface/IndroorLayout6;
.super Lcom/ingenic/iwds/slpt/SlptClock;


# instance fields
.field public caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

.field public distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

.field public distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

.field public distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

.field public hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

.field public hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

.field public linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

.field private mContext:Landroid/content/Context;

.field private mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

.field public minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

.field public minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

.field public paceMView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

.field public paceSView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

.field public paceSeqMView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public paceSeqSView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

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

.field public speedMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

.field public speedSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

.field public speedSeqView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field public speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

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

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->watchLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceMView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSeqMView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSeqSView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSeqView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5Mem:[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6Mem:[B

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->init_num_mem()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->initLayout()V

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->initDefaultSettings(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->setRootView(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    return-void
.end method

.method private initDefaultSettings(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v2, -0x1000000

    iput v2, v1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    const-string v2, "sport/num_point.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    const-string v3, "sport/num_minute.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    const-string v4, "sport/num_second.png"

    invoke-static {v3, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    const-string v5, "sport/num_colon.png"

    invoke-static {v4, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    const-string v6, "sport/time_seq.png"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/4 v7, 0x1

    iput-byte v7, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v7, v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v7, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setDistanceSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSeqView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSeqView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSeqMView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSeqSView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    if-eqz v0, :cond_0

    const-string v1, "sport/en/sport_slpt4_bg.png"

    :goto_0
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1Mem:[B

    goto :goto_1

    :cond_0
    const-string v1, "sport/sport_slpt4_bg.png"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v1, "sport/sport_slpt_heartrate_invisable.png"

    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2Mem:[B

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_1

    const-string v1, "sport/en/sport_slpt_burning_short.png"

    :goto_2
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3Mem:[B

    goto :goto_3

    :cond_1
    const-string v1, "sport/sport_slpt_burning_short.png"

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateBurningView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_2

    const-string v1, "sport/en/sport_slpt_heart_hight_short.png"

    :goto_4
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4Mem:[B

    goto :goto_5

    :cond_2
    const-string v1, "sport/sport_slpt_heart_hight_short.png"

    goto :goto_4

    :goto_5
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateHighView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_3

    const-string v1, "sport/en/sport_slpt_heart_strength_hight_short.png"

    :goto_6
    invoke-static {p1, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5Mem:[B

    goto :goto_7

    :cond_3
    const-string v1, "sport/sport_slpt_heart_strength_hight_short.png"

    goto :goto_6

    :goto_7
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5Mem:[B

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateStrength(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_4

    const-string v0, "sport/en/sport_slpt_aerobic_short.png"

    :goto_8
    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6Mem:[B

    goto :goto_9

    :cond_4
    const-string v0, "sport/sport_slpt_aerobic_short.png"

    goto :goto_8

    :goto_9
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6Mem:[B

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateAerobic(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "sport/icomoon.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceMView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->setImagePictureArray([[B)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->setImagePictureArray([[B)Z

    return-void
.end method

.method private initLayout()V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->watchLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getBatteryView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v3, 0x6

    iput-short v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0x140

    const v2, 0x7ffffffe

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v3, 0x2

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeHSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeMSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x41

    const/16 v5, 0x2b

    invoke-virtual {v0, v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0x38

    invoke-virtual {v0, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceFView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceSepView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->distanceLView:Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    const/16 v1, 0x73

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    const/16 v4, 0xeb

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    const/16 v4, 0x69

    invoke-virtual {v0, v4, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v1, 0xae

    const/16 v4, 0xe2

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v5, 0xe6

    const/16 v6, 0x6c

    invoke-virtual {v0, v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceMView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSeqMView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceSView:Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSeqView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0xd2

    const/16 v4, 0x35

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v4, 0xa8

    invoke-virtual {v0, v4, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iput-byte v3, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportTimeValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->caloriesView:Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->sportDistanceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->heartRateSview:Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->speedValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->paceValueLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView3:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView4:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView5:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->slptBgView6:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClock;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

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

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->value_num:[[B

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

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

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->time_num:[[B

    iget-object v6, p0, Lcom/huami/watch/watchface/sportface/IndroorLayout6;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
