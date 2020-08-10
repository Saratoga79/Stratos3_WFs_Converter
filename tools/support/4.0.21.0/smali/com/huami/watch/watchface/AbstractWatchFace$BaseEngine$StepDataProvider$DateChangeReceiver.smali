.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "WAKEUP_SOURCE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive date change action, wakup source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "sensorhub.reach.day.end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2202(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2200(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    invoke-static {p2}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->access$2300(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p1, v1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$2400(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$StepDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->postInvalidate()V

    :cond_0
    return-void
.end method
