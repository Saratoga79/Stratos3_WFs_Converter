.class public abstract Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.super Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$AlarmDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CaloriesDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CustomDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$FloorDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$HeartrateListener;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider$UIUpdateHandler;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TimeDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;,
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$XdripDataProvider;
    }
.end annotation


# instance fields
.field private mAtWatchFaceCallback:Ljava/lang/Runnable;

.field private mAtWatchFaceObserver:Landroid/database/ContentObserver;

.field private mBaseDay:I

.field private mBaseMonth:I

.field private mBaseWeek:I

.field private mBaseYear:I

.field mCalendar:Ljava/util/Calendar;

.field private mClip:Landroid/graphics/Path;

.field private mDataListenersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Lcom/huami/watch/watchface/WatchDataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataProvider:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameUpdateListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/huami/watch/watchface/AbstractWatchFace$FrameUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field private mIsAtWatchFace:Z

.field private mIsShowWatchFace:Z

.field private mLastUpdateDate:J

.field private mLock:Ljava/lang/Object;

.field mLowBitAmbient:Z

.field private mMeasurement:I

.field private mMeasurementChangedCallback:Ljava/lang/Runnable;

.field private mMeasurementObserver:Landroid/database/ContentObserver;

.field mMute:Z

.field mRadius:I

.field mRegisteredTimeZoneReceiver:Z

.field private mShowWatchFaceCallback:Ljava/lang/Runnable;

.field private mShowWatchFaceObserver:Landroid/database/ContentObserver;

.field private mTargetStep:I

.field private mTargetStepObserver:Landroid/database/ContentObserver;

.field private mTimeFormat:I

.field private mTimeFormatChangedCallback:Ljava/lang/Runnable;

.field private mTimeFormatObserver:Landroid/database/ContentObserver;

.field final mTimeZoneReceiver:Landroid/content/BroadcastReceiver;

.field final mUpdateTimeHandler:Landroid/os/Handler;

.field private mVisible:Z

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidth:I

.field final synthetic this$0:Lcom/huami/watch/watchface/AbstractWatchFace;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;-><init>(Landroid/support/wearable/watchface/CanvasWatchFaceService;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mClip:Landroid/graphics/Path;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeZoneReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRegisteredTimeZoneReceiver:Z

    const/16 v0, 0x7df

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseYear:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseMonth:I

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseDay:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseWeek:I

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$3;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$4;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$4;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$5;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$5;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$6;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$6;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$7;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$7;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementChangedCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$8;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$8;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementObserver:Landroid/database/ContentObserver;

    sget-boolean p1, Lcom/huami/watch/watchface/util/Util;->IS_OVERSEA:Z

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatChangedCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$10;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$10;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatObserver:Landroid/database/ContentObserver;

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStep:I

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$11;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$11;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStepObserver:Landroid/database/ContentObserver;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mFrameUpdateListeners:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementChangedCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    return p0
.end method

.method static synthetic access$1102(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    return p1
.end method

.method static synthetic access$1200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatChangedCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStep:I

    return p0
.end method

.method static synthetic access$1302(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStep:I

    return p1
.end method

.method static synthetic access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onDataUpdate(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->convertKm(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Z
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->shouldTimerBeRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateAtWatchFaceValue()V

    return-void
.end method

.method static synthetic access$4000(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateDate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseYear:I

    return p0
.end method

.method static synthetic access$4200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseMonth:I

    return p0
.end method

.method static synthetic access$4300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseDay:I

    return p0
.end method

.method static synthetic access$4400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseWeek:I

    return p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateShowWatchFaceValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurement:I

    return p0
.end method

.method static synthetic access$802(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurement:I

    return p1
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    return-object p0
.end method

.method private convertKm(D)D
    .locals 2

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurement:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->convertKmToMi(D)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private destroyWatchDataListeners()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unregisterDataProvider(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    return-object p1
.end method

.method private onAtWatchFaceChangeInternal(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->register()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->unregister()V

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/WatchDataListener;

    invoke-interface {v2, p1, p2}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final onDestroyWidgets()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->onDestroy()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unregisterWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private onFrameUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mFrameUpdateListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/AbstractWatchFace$FrameUpdateListener;

    invoke-interface {v1}, Lcom/huami/watch/watchface/AbstractWatchFace$FrameUpdateListener;->onFrameUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onShowWatchFaceChangeInternal(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->register()V

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->unregister()V

    :cond_3
    :goto_0
    return-void
.end method

.method private registerDataProvider(I)V
    .locals 3

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDataProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateCurrentDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0x10

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$XdripDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$XdripDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$XdripDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0xf

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$AlarmDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$AlarmDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$AlarmDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0xe

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CustomDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CustomDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CustomDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0xd

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$FloorDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$FloorDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$FloorDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0xc

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0xa

    goto :goto_0

    :pswitch_7
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_8
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TimeDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TimeDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TimeDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$HeartRateDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x5

    goto :goto_0

    :pswitch_b
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CaloriesDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$CaloriesDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_c
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TotalDistanceDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_d
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$TodayDistanceDataProvider;->register()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_e
    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerMeasurementObserverObserver()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurement:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "measurement"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRegisteredTimeZoneReceiver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRegisteredTimeZoneReceiver:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeZoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private registerShowWatchFaceObserverObserver()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prop.launcher.at_watchface"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateAtWatchFaceValue()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prop.launcher.show_watchface"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateShowWatchFaceValue()V

    return-void
.end method

.method private registerTargetStepObserver()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.huami.watch.companion.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStepObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerTimeFormatObserverObserver()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTimeFormatObserverObserver TimeFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private requestWatchData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData(Lcom/huami/watch/watchface/WatchDataListener;)V

    :cond_0
    return-void
.end method

.method private shouldTimerBeRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->isInAmbientMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unRegisterMeasurementObserverObserver()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMeasurementChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unRegisterShowWatchFaceObserverObserver()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mAtWatchFaceCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mShowWatchFaceCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unRegisterTargetStepObserver()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTargetStepObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterTimeFormatObserverObserver()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormatChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterDataProvider(I)V
    .locals 3

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDataProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->onDestroy()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataProvider:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRegisteredTimeZoneReceiver:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRegisteredTimeZoneReceiver:Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeZoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method private updateAtWatchFaceValue()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "prop.launcher.at_watchface"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAtWatchFaceValue old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " visible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    if-eq v1, v0, :cond_1

    iput-boolean v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onAtWatchFaceChangeInternal(Z)V

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onAtWatchFaceChange(Z)V

    :cond_1
    return-void
.end method

.method private updateDataProviderOnDraw()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->getWatchDataProvider(I)Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;->requestData()V

    :cond_3
    return-void
.end method

.method private updateDate()V
    .locals 9

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLastUpdateDate:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseYear:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseMonth:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseDay:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mBaseWeek:I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLastUpdateDate:J

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-void
.end method

.method private updateShowWatchFaceValue()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "prop.launcher.show_watchface"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateShowWatchFaceValue old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " visible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    if-eq v1, v0, :cond_1

    iput-boolean v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onShowWatchFaceChangeInternal(Z)V

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onShowWatchFaceChange(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    return-void
.end method

.method private updateTimer()V
    .locals 2

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "updateTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->shouldTimerBeRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add a null widget to a WatchFace"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDataWidget(Landroid/content/res/Resources;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;
    .locals 3

    invoke-virtual {p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getDataType()I

    move-result v0

    invoke-virtual {p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getX()I

    move-result v1

    invoke-virtual {p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getY()I

    move-result v2

    invoke-virtual {p2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;->getModel()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/huami/watch/watchface/widget/TodayFloorDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/TodayFloorDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/huami/watch/watchface/widget/DigitDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/DigitDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/huami/watch/watchface/widget/HeartRateDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/HeartRateDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/huami/watch/watchface/widget/MileageDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/MileageDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Lcom/huami/watch/watchface/widget/WalkDateWidget;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/huami/watch/watchface/widget/WalkDateWidget;-><init>(Landroid/content/res/Resources;III)V

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_9
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method protected final getHourFormat()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mTimeFormat:I

    return v0
.end method

.method public onAmbientModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onAmbientModeChanged(Z)V

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAmbientModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLowBitAmbient:Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateTimer()V

    return-void
.end method

.method protected onAtWatchFaceChange(Z)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mHeight:I

    iget v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidth:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRadius:I

    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-direct {v0, v2}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/app/Service;)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->setCardPeekMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->setBackgroundVisibility(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->setShowSystemUiTime(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->build()Landroid/support/wearable/watchface/WatchFaceStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->setWatchFaceStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mClip:Landroid/graphics/Path;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mRadius:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerMeasurementObserverObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerTimeFormatObserverObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerTargetStepObserver()V

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onPrepareResources(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerShowWatchFaceObserverObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mUpdateTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unRegisterShowWatchFaceObserverObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unRegisterMeasurementObserverObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unRegisterTimeFormatObserverObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unRegisterTargetStepObserver()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->destroyWatchDataListeners()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onDestroyWidgets()V

    invoke-super {p0}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onDestroy()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float v5, v3, p2

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateDataProviderOnDraw()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onFrameUpdate()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v6, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v4, v5

    invoke-virtual/range {v0 .. v6}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDrawWatchFace(Landroid/graphics/Canvas;FFFFLjava/util/Calendar;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onDrawWidgets(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onDrawWidgets(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->getX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;->getY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onHourFormatChanged(I)V
    .locals 0

    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onInterruptionFilterChanged(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMute:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mMute:Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    return-void
.end method

.method protected abstract onPrepareResources(Landroid/content/res/Resources;)V
.end method

.method public onPropertiesChanged(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onPropertiesChanged(Landroid/os/Bundle;)V

    const-string v0, "low_bit_ambient"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLowBitAmbient:Z

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPropertiesChanged: low-bit ambient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLowBitAmbient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onShowWatchFaceChange(Z)V
    .locals 0

    return-void
.end method

.method public onTimeTick()V
    .locals 3

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeTick: ambient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->isInAmbientMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    return-void
.end method

.method protected onTimeUpdate()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;->onVisibilityChanged(Z)V

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    iget-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerReceiver()V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateShowWatchFaceValue()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateAtWatchFaceValue()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unregisterReceiver()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onAtWatchFaceChangeInternal(Z)V

    iget-boolean v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsAtWatchFace:Z

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onAtWatchFaceChange(Z)V

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    iget-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onShowWatchFaceChangeInternal(Z)V

    iget-boolean p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mIsShowWatchFace:Z

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onShowWatchFaceChange(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->updateTimer()V

    return-void
.end method

.method protected registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->isSupportDataType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->registerDataProvider(I)V

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->requestWatchData(Lcom/huami/watch/watchface/WatchDataListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected unregisterWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/huami/watch/watchface/WatchDataListener;->getDataType()I

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mDataListenersMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->unregisterDataProvider(I)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
