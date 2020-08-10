.class public Lcom/huami/watchface/SlptWatchService;
.super Landroid/app/Service;
.source "SlptWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;
    }
.end annotation


# static fields
.field public static final CLOCK_WATCH_FACE:I = 0x2

.field public static final ENTER_IN_GPS_SEARCH_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.enter_gps"

.field public static final KLVP_WAKEUP_ACTION:Ljava/lang/String; = "com.huami.watch.action.SENSOR_WAKEUP"

.field public static final LEAVE_GPS_SEARCH_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.leave_gps"

.field public static final PROP_GPS_STATUS:Ljava/lang/String; = "sys.watchface.gps.status"

.field private static final RUNING_MODE_NORMAL:I = 0x0

.field private static final RUNING_MODE_ROPESKIPPING:I = 0x2

.field private static final RUNING_MODE_TRAIN:I = 0x1

.field public static final SPORT_RUNING_TRAIN_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.new_train_unit"

.field public static final SPORT_VIEW_DISABLE_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.disable.sportView"

.field public static final SPORT_VIEW_ENABLE_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.enable.sportView"

.field public static final SPORT_VIEW_RESTART_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.restart.sportView"

.field public static final SPORT_VIEW_STOP_ACTION:Ljava/lang/String; = "com.huami.watchface.SlptWatchService.stop.sportView"

.field public static final SPORT_WATCH_FACE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentIntent:Landroid/content/Intent;

.field private intentChangeWatch:Landroid/content/Intent;

.field private intentGpsStatus:Landroid/content/Intent;

.field private intentRunTrainWatch:Landroid/content/Intent;

.field private intentSportRunWatch:Landroid/content/Intent;

.field private intentSportStopWatch:Landroid/content/Intent;

.field private intentSportWatchManager:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mSlptWatchFaceReceiver:Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const-string v0, "SlptWatchService"

    iput-object v0, p0, Lcom/huami/watchface/SlptWatchService;->TAG:Ljava/lang/String;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->currentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/huami/watchface/SlptWatchService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huami/watchface/SlptWatchService;->currentIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentSportRunWatch:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentChangeWatch:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentSportWatchManager:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentGpsStatus:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentSportStopWatch:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huami/watchface/SlptWatchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watchface/SlptWatchService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->intentRunTrainWatch:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getSportMode(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v2, "sport_bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    const-string v2, "sport_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 143
    :cond_0
    return v1
.end method

.method public getTrainUnit(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, ""

    .line 151
    .local v1, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, "sport_bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    const-string v2, "train_unit"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_0
    return-object v1
.end method

.method public isTrainMode(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v4, "sport_bundle"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    const-string v4, "sport_mode"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "mode":I
    if-ne v1, v2, :cond_0

    .line 135
    .end local v1    # "mode":I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "SlptWatchService"

    const-string v2, "onCreate ---------------!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/huami/watchface/SlptWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->mContext:Landroid/content/Context;

    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportRunWatch:Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportRunWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.SportWatchService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportRunWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentChangeWatch:Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentChangeWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.SportChangePauseService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentChangeWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportStopWatch:Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportStopWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.SlptSportStopService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportStopWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentGpsStatus:Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentGpsStatus:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.SportGpsStatusService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentGpsStatus:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportWatchManager:Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportWatchManager:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.SportWatchManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentSportWatchManager:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentRunTrainWatch:Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentRunTrainWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.sportface.RunTrainModeService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->intentRunTrainWatch:Landroid/content/Intent;

    const-string v2, "com.huami.watch.watchface.analogyellow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v1, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;

    invoke-direct {v1, p0}, Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;-><init>(Lcom/huami/watchface/SlptWatchService;)V

    iput-object v1, p0, Lcom/huami/watchface/SlptWatchService;->mSlptWatchFaceReceiver:Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.huami.watchface.SlptWatchService.stop.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.huami.watch.action.SENSOR_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.huami.watchface.SlptWatchService.enter_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "com.huami.watchface.SlptWatchService.leave_gps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.huami.watchface.SlptWatchService.restart.sportView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "com.huami.watchface.SlptWatchService.new_train_unit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 104
    iget-object v1, p0, Lcom/huami/watchface/SlptWatchService;->mSlptWatchFaceReceiver:Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huami/watchface/SlptWatchService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "SlptWatchService"

    const-string v1, "onDestroy ---------------!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/huami/watchface/SlptWatchService;->mSlptWatchFaceReceiver:Lcom/huami/watchface/SlptWatchService$SlptWatchFaceReceiver;

    invoke-virtual {p0, v0}, Lcom/huami/watchface/SlptWatchService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method
