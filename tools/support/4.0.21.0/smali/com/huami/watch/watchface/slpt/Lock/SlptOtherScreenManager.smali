.class public Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;
.super Ljava/lang/Object;


# static fields
.field private static LastMode:I

.field private static sInstance:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

.field private mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field private serviceBinded:Z

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->sInstance:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_NORMAL:I

    sput v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->LastMode:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huami/watch/watchface/util/Util;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->serviceBinded:Z

    new-instance v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;-><init>(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->serviceBinded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClock;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    return p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableDisplayOffMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableWatchMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    return-void
.end method

.method private createNegativeOneScreen(Landroid/graphics/Bitmap;)Lcom/ingenic/iwds/slpt/SlptClock;
    .locals 14

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/16 v8, 0xa

    new-array v9, v8, [[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "thirdScreen/negativeOne/%d.png"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    const-string v11, "thirdScreen/negativeOne/colon.png"

    invoke-static {v8, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    const/16 v3, 0x16

    invoke-virtual {v2, v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v3, 0x168

    const v4, 0x7ffffffe

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v3, 0x2

    iput-byte v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    new-instance p1, Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-direct {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    return-object p1
.end method

.method private enableDisplayOffMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 1

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_DISPLAY_OFF:I

    sput v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->LastMode:I

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_DISPLAY_OFF:I

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->setSlptRuningMode(I)V

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_DISPLAY_OFF:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockSlptMode(I)Z

    const v0, 0x98967f

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    return-void
.end method

.method private enableNormalMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 1

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_NORMAL:I

    sput v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->LastMode:I

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_NORMAL:I

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->setSlptRuningMode(I)V

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_NORMAL:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockSlptMode(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->needSlptRefreshSecond(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    return-void
.end method

.method private enableWatchMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 1

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_WATCH:I

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->setSlptRuningMode(I)V

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_WATCH:I

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockSlptMode(I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->sInstance:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->sInstance:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    :cond_0
    sget-object p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->sInstance:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    return-object p0
.end method


# virtual methods
.method public bindService()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->serviceBinded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v2, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    const-string v3, "SlptOtherScreenManager"

    iget-object v4, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createScreen(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    iget v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    const/4 v1, 0x1

    const-string v2, "SlptOtherScreenManager"

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_2

    :cond_0
    const-string p1, "start to disable slpt watch"

    goto :goto_0

    :cond_1
    const-string p1, "start to create watch mode screen"

    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    iput-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

    goto :goto_1

    :cond_2
    const-string v0, "start to create negative one screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "screenShot"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->createNegativeOneScreen(Landroid/graphics/Bitmap;)Lcom/ingenic/iwds/slpt/SlptClock;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->createNegativeOneScreen(Landroid/graphics/Bitmap;)Lcom/ingenic/iwds/slpt/SlptClock;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

    :goto_1
    iget p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    :goto_2
    return p1
.end method

.method public enableSlptClock(Lcom/ingenic/iwds/slpt/SlptClockClient;)V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->checkWatchFaceLocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SlptOtherScreenManager"

    if-eqz v0, :cond_0

    const-string p1, "slpt watchface locked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->lockService()Z

    move-result v0

    const-string v2, "lock service error!"

    if-nez v0, :cond_1

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->clearAllClock()Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableOneClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock26W:Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableOneClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    :cond_3
    invoke-virtual {p1, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    :goto_1
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unlockService()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->lockWatchFace(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public hideScreen(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const-string v1, "SlptOtherScreenManager"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "enable slpt Watchface normal mode"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableNormalMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->LastMode:I

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_DISPLAY_OFF:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableDisplayOffMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    const-string p1, "exist slpt watch mode enter display off mode"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableNormalMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    const-string p1, "exist slpt watch mode enter normal mode"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->unlockWatchFace(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public showScreen()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->serviceBinded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SlptOtherScreenManager"

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v2, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClock8c:Lcom/ingenic/iwds/slpt/SlptClock;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "slpt set display off mode , disable display"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableDisplayOffMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "slpt set watch mode , enable display on "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableWatchMode(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$1;-><init>(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
