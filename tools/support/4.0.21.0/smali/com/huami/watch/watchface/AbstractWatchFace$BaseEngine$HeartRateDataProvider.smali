.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartRateDataProvider"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHeartRato:I

.field private mLastHeartRato:I

.field private mUpdateHeartTask:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mLastHeartRato:I

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mUpdateHeartTask:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->updateLastHeartInfo()V

    return-void
.end method

.method static synthetic access$3300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mUpdateHeartTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private updateHeartInfo()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/util/SingletonWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getHeartRato()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mLastHeartRato:I

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    :cond_0
    return-void
.end method

.method private updateLastHeartInfo()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getLastHeartRato(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mLastHeartRato:I

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLastHeartInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mLastHeartRato:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->requestData()V

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->unregister()V

    return-void
.end method

.method register()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/util/SingletonWrapper;->CONTENT_HEART_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->updateLastHeartInfo()V

    return-void
.end method

.method requestData()V
    .locals 4

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->updateHeartInfo()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->updateHeartInfo()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mHeartRato:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->mUpdateHeartTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
