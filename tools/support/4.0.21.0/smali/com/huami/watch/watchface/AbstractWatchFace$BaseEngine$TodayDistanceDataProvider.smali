.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TodayDistanceDataProvider"
.end annotation


# instance fields
.field private distance:D

.field private mTodayDistanceObserver:Landroid/database/ContentObserver;

.field private mUpdateTodayDistanceTask:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mUpdateTodayDistanceTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$2;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mTodayDistanceObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->updateSportTodayDistance()V

    return-void
.end method

.method static synthetic access$2800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mUpdateTodayDistanceTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private updateSportTodayDistance()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/util/SingletonWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getTodayDistance()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2900(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->distance:D

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->distance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->unregister()V

    return-void
.end method

.method register()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_today_distance"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mTodayDistanceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->updateSportTodayDistance()V

    return-void
.end method

.method requestData()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->distance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->distance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {p1, v1, v0}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mTodayDistanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->mUpdateTodayDistanceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
