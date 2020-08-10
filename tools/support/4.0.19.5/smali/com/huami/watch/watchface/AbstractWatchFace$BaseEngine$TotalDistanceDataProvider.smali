.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TotalDistanceDataProvider"
.end annotation


# instance fields
.field private distance:D

.field private mTotalDistanceObserver:Landroid/database/ContentObserver;

.field private mUpdateTotalDistanceTask:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mUpdateTotalDistanceTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mTotalDistanceObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->updateSportTotalDistance()V

    return-void
.end method

.method static synthetic access$3100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mUpdateTotalDistanceTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private updateSportTotalDistance()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/util/SingletonWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getTotalDistance()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2900(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->distance:D

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->distance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->unregister()V

    return-void
.end method

.method register()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_total_distance"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mTotalDistanceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->updateSportTotalDistance()V

    return-void
.end method

.method requestData()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->distance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->distance:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

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

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mTotalDistanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->mUpdateTotalDistanceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
