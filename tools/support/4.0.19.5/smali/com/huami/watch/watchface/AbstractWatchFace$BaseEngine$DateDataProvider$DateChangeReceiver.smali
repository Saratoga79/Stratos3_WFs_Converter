.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;Lcom/huami/watch/watchface/AbstractWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;)V

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

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider$DateChangeReceiver;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;

    iget-object p2, p2, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$DateDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p2, p2, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p2}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
