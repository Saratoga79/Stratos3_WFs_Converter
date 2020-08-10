.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryDataProvider"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mBatteryMax:I

.field private mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    new-instance p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider$1;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->updateBatteryLevel(Landroid/content/Intent;)V

    return-void
.end method

.method private updateBatteryLevel(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryLevel:I

    const-string v1, "scale"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryMax:I

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryDataProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->requestData()V

    :cond_0
    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->unregister()V

    return-void
.end method

.method register()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->updateBatteryLevel(Landroid/content/Intent;)V

    return-void
.end method

.method requestData()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$BatteryDataProvider;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
