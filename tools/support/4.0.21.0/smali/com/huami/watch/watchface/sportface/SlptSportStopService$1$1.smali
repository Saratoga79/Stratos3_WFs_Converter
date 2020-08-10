.class Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v0, v0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$200(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v1, v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v2, v2, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v2}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$300(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClock;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->tryEnableClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "slptStopSview"

    const-string v2, "unable to enable watchface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v1, v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v2, v2, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v2}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$400(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v1, v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v2, v2, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v2}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$500(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setSportStopTime(J)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v1, v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSportMode()Z

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;->this$1:Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;

    iget-object v1, v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSlpt()Z

    goto :goto_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
