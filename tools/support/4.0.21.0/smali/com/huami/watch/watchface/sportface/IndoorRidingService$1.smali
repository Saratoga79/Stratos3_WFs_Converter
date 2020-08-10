.class Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/IndoorRidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$200(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->tryEnableClock(Lcom/ingenic/iwds/slpt/SlptClock;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IndoorRidingService"

    const-string v1, "write slpt watch face error, unlock service"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$300(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setClockPeriod(I)Z

    const-string v0, "IndoorRidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set clock period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v2}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$300(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSportMode()Z

    const-string v0, "IndoorRidingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable clock format 24 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v2}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$000(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$000(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setHourFormat(I)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSlpt()Z

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$000(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setMeasurement(I)Z

    const-string v0, "IndoorRidingService"

    const-string v1, "enable slpt success"

    goto/16 :goto_0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 4

    const-string v0, "IndoorRidingService"

    const-string v1, "slpt clock service has crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$100(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->access$000(Lcom/huami/watch/watchface/sportface/IndoorRidingService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "IndoorRidingService"

    iget-object v3, p0, Lcom/huami/watch/watchface/sportface/IndoorRidingService$1;->this$0:Lcom/huami/watch/watchface/sportface/IndoorRidingService;

    iget-object v3, v3, Lcom/huami/watch/watchface/sportface/IndoorRidingService;->callback:Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ingenic/iwds/slpt/SlptClockClient;->bindService(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
