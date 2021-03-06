.class public Lcom/huami/watch/watchface/sportface/WalkWatchService;
.super Landroid/app/Service;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private clockPeriod:I

.field public linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

.field private mContext:Landroid/content/Context;

.field private mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field private time_num:[[B

.field private value_num:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    const/16 v0, 0xa

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->time_num:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    new-instance v0, Lcom/huami/watch/watchface/sportface/WalkWatchService$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/sportface/WalkWatchService$1;-><init>(Lcom/huami/watch/watchface/sportface/WalkWatchService;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/sportface/WalkWatchService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/sportface/WalkWatchService;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/sportface/WalkWatchService;)Lcom/ingenic/iwds/slpt/SlptClock;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/sportface/WalkWatchService;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->clockPeriod:I

    return p0
.end method

.method private createDefaultLayout(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createBackGroudLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->time_num:[[B

    invoke-static {p1, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSystemTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportTimeTitlLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lcom/huami/watch/watchface/sportface/SportListUtil;->mWalkingInfoOrder:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/huami/watch/watchface/sportface/SportListUtil;->mWalkingInfoOrder:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/huami/watch/watchface/sportface/SportListUtil;->mWalkingInfoOrder:[I

    aget v3, v3, v1

    invoke-direct {p0, p1, v3, v2}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->createItemLayout(Landroid/content/Context;II)V

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createItemLayout(Landroid/content/Context;II)V
    .locals 2

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportStepView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportStepTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createAvgSpeedView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createAvgSpeedTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSpeedView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSpeedTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createHeartrateView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createHeartrateTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createCalarieView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createCalarieTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, p3, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createDistanceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p2, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1, p3, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createDistanceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createLayout(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getSportItemOrder(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->parseStringToOrder(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->createDefaultLayout(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->createOrderLayout(Landroid/content/Context;[I)V

    :goto_0
    new-instance p1, Lcom/ingenic/iwds/slpt/SlptClock;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-void
.end method

.method private createOrderLayout(Landroid/content/Context;[I)V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createBackGroudLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->time_num:[[B

    invoke-static {p1, v1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSystemTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    array-length v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-ge v2, v3, :cond_1

    if-ge v1, v5, :cond_1

    aget v3, p2, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    iget-object v4, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

    invoke-static {p1, v4}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->linearLayout:Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->createSportTimeTitlLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_3

    if-ge v1, v5, :cond_3

    aget v2, p2, v0

    if-ne v4, v2, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "WalkWatchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add view "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " position "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, p2, v0

    invoke-direct {p0, p1, v2, v1}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->createItemLayout(Landroid/content/Context;II)V

    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
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

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->value_num:[[B

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

    iget-object v5, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->time_num:[[B

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

    const-string v0, "WalkWatchService"

    const-string v1, "onCreate ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getSlptSportItemCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/huami/watch/watchface/sportface/WalkScreenLayout6;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/sportface/WalkScreenLayout6;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClock:Lcom/ingenic/iwds/slpt/SlptClock;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->init_num_mem()V

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/sportface/WalkWatchService;->createLayout(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WalkWatchService"

    const-string v1, "onDestroy ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mContext:Landroid/content/Context;

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

    iput p1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->clockPeriod:I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const-string p2, "WalkWatchService"

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/WalkWatchService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p1, p0, p2, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method
