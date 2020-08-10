.class public Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlptWatchFaceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "total_distance"

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$402(F)F

    const-string p1, "today_distance"

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$102(F)F

    const-string p1, "HmSlptLockScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport end set Lock screen  currentTotalDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " currentTodayDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v0

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->createSlptLayout(FF)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "HmSlptLockScreen"

    const-string v0, "disenable Lock screen "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "HmSlptLockScreen"

    const-string p2, "screenoff set sport data"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "sport_total_distance"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$402(F)F

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "sport_today_distance"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$102(F)F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HmSlptLockScreen"

    const-string v0, "request todayDistance = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentTotalDistance = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result p2

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->setSportValue(FF)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getTodaySportDistance(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$102(F)F

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/LockScreenPreference;->getTotalSportDistance(Landroid/content/Context;)F

    move-result p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$402(F)F

    const-string p1, "HmSlptLockScreen"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request sport value error get preference todayDistance = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentTotalDistance = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
