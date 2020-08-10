.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;
.super Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateDataProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;
    }
.end annotation


# instance fields
.field private mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WatchDataProvider;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    new-instance v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    invoke-direct {v1, p0, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V

    iput-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.huami.watch.action.SENSOR_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->mDateReceiver:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method register()V
    .locals 0

    return-void
.end method

.method requestData()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4000(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    return-void
.end method

.method requestData(Lcom/huami/watch/watchface/WatchDataListener;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4000(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$4400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/huami/watch/watchface/WatchDataListener;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method unregister()V
    .locals 0

    return-void
.end method
