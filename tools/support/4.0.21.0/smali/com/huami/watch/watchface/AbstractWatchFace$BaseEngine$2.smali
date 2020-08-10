.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object p1, p1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$2;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->invalidate()V

    return-void
.end method
