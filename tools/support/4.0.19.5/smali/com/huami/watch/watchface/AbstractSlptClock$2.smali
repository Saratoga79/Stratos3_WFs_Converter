.class Lcom/huami/watch/watchface/AbstractSlptClock$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractSlptClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/AbstractSlptClock;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractSlptClock;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huami/watch/watchface/AbstractSlptClock$2$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/AbstractSlptClock$2$1;-><init>(Lcom/huami/watch/watchface/AbstractSlptClock$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$200(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slpt clock service has crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$000(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$400(Lcom/huami/watch/watchface/AbstractSlptClock;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v2}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$300(Lcom/huami/watch/watchface/AbstractSlptClock;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v3}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$200(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    iget-object v4, v4, Lcom/huami/watch/watchface/AbstractSlptClock;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
