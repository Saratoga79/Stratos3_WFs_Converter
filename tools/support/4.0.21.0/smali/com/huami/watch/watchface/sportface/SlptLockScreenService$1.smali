.class Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$500()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$600(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptSystemProperites;->getSportfaceValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v2

    invoke-static {v0, v2}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTodayDistance(F)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v2

    invoke-static {v0, v2}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTotalDistance(F)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$800()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setLastHeartrate(I)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->enableSlpt()Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method
