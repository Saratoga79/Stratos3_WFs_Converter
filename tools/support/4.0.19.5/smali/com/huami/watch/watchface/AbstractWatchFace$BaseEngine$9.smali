.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$1100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeFormat changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$1102(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->access$1100(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->onHourFormatChanged(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$9;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
