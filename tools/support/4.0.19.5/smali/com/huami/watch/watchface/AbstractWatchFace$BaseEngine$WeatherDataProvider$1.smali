.class Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "WeatherDataProvider onChange."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->access$4500(Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider$1;->this$2:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine$WeatherDataProvider;->this$1:Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractWatchFace$BaseEngine;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
