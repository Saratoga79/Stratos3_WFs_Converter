.class public Lcom/huami/watch/watchface/sportface/SlptSportStopService;
.super Landroid/app/Service;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private clockPeriod:I

.field private digitalNums:[Ljava/lang/String;

.field public linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field public slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private slptBgView1Mem:[B

.field sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;

.field sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;

.field sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;

.field private sportTypeface:Landroid/graphics/Typeface;

.field private stoptime:J

.field private timeLayoutPadding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

.field public timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/huami/watch/watchface/util/Util;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLayoutPadding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1Mem:[B

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->digitalNums:[Ljava/lang/String;

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    new-instance v0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;-><init>(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClock;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->clockPeriod:I

    return p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)J
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->stoptime:J

    return-wide v0
.end method

.method private initDefaultSettings(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v0, v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    const/high16 v1, -0x1000000

    iput v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v2, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sport/en/sport_slpt_stop_bg.png"

    :goto_0
    invoke-static {p1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1Mem:[B

    goto :goto_1

    :cond_0
    const-string v0, "sport/sport_slpt_stop_bg.png"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1Mem:[B

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "sport/icomoon.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    const/4 v1, -0x1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p1, v2, v1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v1, v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    return-void
.end method

.method private initLayout()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportHView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportHPauseView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportMView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportMPauseView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeSeqView2:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->sportSView:Lcom/ingenic/iwds/slpt/view/sport/SlptSportSPauseView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/16 v1, 0x140

    const v2, 0x7ffffffe

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->slptBgView1:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->timeLinearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClock;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

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

    const-string v0, "slptStopSview"

    const-string v1, "onCreate ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->initLayout()V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->initDefaultSettings(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "slptStopSview"

    const-string v1, "onDestroy ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unbindService(Landroid/content/Context;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    :try_start_0
    const-string p2, "clockperiod"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->clockPeriod:I

    const-string p2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->stoptime:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "slptStopSview"

    const-string v0, "pause time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->stoptime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " clockPeriod "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->clockPeriod:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string p2, "slptStopSview"

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method
