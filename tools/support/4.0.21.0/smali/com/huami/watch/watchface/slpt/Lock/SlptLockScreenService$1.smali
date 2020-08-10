.class Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    const-string v0, " currentTotalDistance = "

    const-string v1, "HmSlptLockScreen"

    :try_start_0
    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/LockScreenPreference;->getTargetStept(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$402(I)I

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sport_total_distance"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$302(F)F

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sport_today_distance"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$502(F)F

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->getHeartRato(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$602(I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request todayDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$500()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$300()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$502(F)F

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$302(F)F

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$602(I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request sport value error get preference todayDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$500()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$300()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$400()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSportfaceValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$800(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTargetSportStep(I)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$800(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$500()F

    move-result v2

    invoke-static {v0, v2}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTodayDistance(F)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$800(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$300()F

    move-result v2

    invoke-static {v0, v2}, Lcom/huami/watch/watchface/util/Util;->getDistance(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setTotalDistance(F)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$800(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v0

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$600()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/SlptClockClient;->setLastHeartrate(I)Z

    :goto_1
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method
