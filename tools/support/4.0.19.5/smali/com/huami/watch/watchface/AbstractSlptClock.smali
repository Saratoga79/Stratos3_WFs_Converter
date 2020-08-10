.class public abstract Lcom/huami/watch/watchface/AbstractSlptClock;
.super Landroid/app/Service;


# instance fields
.field callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

.field private hourForamt:I

.field private mContext:Landroid/content/Context;

.field private mListDrawedPictureGroup26WS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mListDrawedPictureGroup8S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

.field private periodSecond:Z

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "AbstractSlptClock"

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    new-instance v0, Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup8S:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup26WS:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->hourForamt:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->periodSecond:Z

    sget-object v0, Lcom/huami/watch/watchface/util/Util;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/huami/watch/watchface/AbstractSlptClock$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/AbstractSlptClock$2;-><init>(Lcom/huami/watch/watchface/AbstractSlptClock;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/AbstractSlptClock;)I
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->enableSlptClock()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/AbstractSlptClock;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/AbstractSlptClock;)Lcom/ingenic/iwds/slpt/SlptClockClient;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    return-object p0
.end method

.method private enableSlptClock()I
    .locals 5

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSportfaceValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->lockService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    const-string v1, "lock service error!"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v2}, Lcom/huami/watch/watchface/AbstractSlptClock;->setClockPeriodSecond(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->clearAllClock()Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-direct {v3, v0}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup8S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/SlptClock;->addPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableOneClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/ingenic/iwds/slpt/SlptClock;

    invoke-direct {v3, v0}, Lcom/ingenic/iwds/slpt/SlptClock;-><init>(Lcom/ingenic/iwds/slpt/view/core/SlptLayout;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup26WS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;

    invoke-virtual {v3, v4}, Lcom/ingenic/iwds/slpt/SlptClock;->addPreDrawedPicture(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableOneClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->clearDrawdPictureGroup()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->selectClockIndex(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    :goto_3
    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->isClockPeriodSecond()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    const/16 v1, 0x3c

    :goto_4
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->disableSportMode()Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSlpt()Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unlockService()Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    sget v1, Lcom/ingenic/iwds/slpt/view/utils/SlptWatchFaceConst;->KEY_WAEUP_STATUS_UP:I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setKeyWakeupStatus(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    const-string v1, "enable clock success"

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->unlockService()Z

    :goto_5
    return v2
.end method

.method private getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;Z)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 9

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getDataType()I

    move-result v0

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getY()I

    move-result v4

    invoke-virtual {p1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getModel()I

    move-result v7

    const/4 p1, 0x1

    const/4 v1, 0x3

    const/16 v2, 0x54

    const/16 v5, 0x64

    if-eq v7, p1, :cond_2

    if-eq v7, v1, :cond_1

    const/4 p1, 0x4

    if-eq v7, p1, :cond_0

    const/16 v5, 0x54

    const/16 v6, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    const/16 v6, 0x18

    goto :goto_0

    :cond_1
    const/16 v6, 0x64

    goto :goto_0

    :cond_2
    const/16 p1, 0x15

    const/16 v2, 0x78

    const/16 v5, 0x78

    const/16 v6, 0x15

    :goto_0
    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptTodayFloorWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptTodayFloorWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto/16 :goto_3

    :pswitch_2
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto/16 :goto_3

    :pswitch_3
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v7, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 p1, 0x5

    if-ne v7, p1, :cond_4

    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;

    const/16 v5, 0x20

    const/16 v6, 0x20

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto/16 :goto_3

    :cond_4
    const/4 p1, 0x6

    if-eq v7, p1, :cond_8

    const/4 p1, 0x7

    if-ne v7, p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    if-eq v7, p1, :cond_7

    const/16 p1, 0x9

    if-eq v7, p1, :cond_7

    const/16 p1, 0xa

    if-eq v7, p1, :cond_7

    const/16 p1, 0xb

    if-ne v7, p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;

    const/16 v5, 0x78

    const/16 v6, 0x15

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :cond_7
    :goto_1
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;

    const/16 v5, 0xb4

    const/16 v6, 0x12

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :cond_8
    :goto_2
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;

    const/16 v5, 0xa0

    const/16 v6, 0x1e

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :pswitch_5
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :pswitch_6
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :pswitch_7
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptTotalDistanceWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptTotalDistanceWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :pswitch_8
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptTodayDistanceWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptTodayDistanceWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    goto :goto_3

    :pswitch_9
    new-instance p1, Lcom/huami/watch/watchface/widget/slpt/SlptStepWidget;

    move-object v1, p1

    move-object v2, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/slpt/SlptStepWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    :goto_3
    invoke-virtual {p1}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;->getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDrawedPictureGroup26WC(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup26WS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDrawedPictureGroup8C(Lcom/ingenic/iwds/slpt/view/core/PreDrawedPictureGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup8S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearDrawdPictureGroup()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup8S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mListDrawedPictureGroup26WS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected abstract createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
.end method

.method protected abstract createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
.end method

.method protected get26WCDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractSlptClock;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;Z)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    return-object p1
.end method

.method protected get8cDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractSlptClock;->getDataWidget(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;Z)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object p1

    return-object p1
.end method

.method protected abstract initWatchFaceConfig()V
.end method

.method public isClockPeriodSecond()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->periodSecond:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mContext:Landroid/content/Context;

    const-string v0, "AbstractSlptClock"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    const-string v1, "onDestroy!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mContext:Landroid/content/Context;

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
    .locals 2

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    const-string p2, "onStartCommand!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    invoke-virtual {p1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->serviceIsConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/huami/watch/watchface/AbstractSlptClock$1;

    invoke-direct {p2, p0}, Lcom/huami/watch/watchface/AbstractSlptClock$1;-><init>(Lcom/huami/watch/watchface/AbstractSlptClock;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mSlptClockClient:Lcom/ingenic/iwds/slpt/SlptClockClient;

    iget-object p3, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {p2, p3, v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setClockPeriodSecond(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->periodSecond:Z

    return-void
.end method

.method public setHourFormat(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock;->hourForamt:I

    :goto_0
    return-void
.end method
