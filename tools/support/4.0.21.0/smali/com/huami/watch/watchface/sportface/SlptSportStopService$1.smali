.class Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptSportStopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1$1;-><init>(Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 4

    const-string v0, "slptStopSview"

    const-string v1, "slpt clock service has crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$100(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->access$000(Lcom/huami/watch/watchface/sportface/SlptSportStopService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "slptStopSview"

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/SlptSportStopService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptSportStopService;

    iget-object v3, v3, Lcom/huami/watch/watchface/sportface/SlptSportStopService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
