.class Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;
.super Ljava/lang/Object;
.source "WifiTransAutomaticAlarm.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoAlarmAlert(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)Z
    .locals 5
    .param p1, "autoAlarm"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    sget-object v2, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->name:Ljava/lang/String;

    const-string v3, "autoAlarmAlert:com.huami.watch.wifiuploaddata.AUTOMATIC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 38
    .local v0, "isAirPlane":Z
    :cond_0
    if-nez v0, :cond_1

    .line 39
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huami.watch.wifiuploaddata.AUTOMATIC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    sget-object v2, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->name:Ljava/lang/String;

    const-string v3, "send:com.huami.watch.wifiuploaddata.AUTOMATIC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return v1

    .line 42
    :cond_1
    sget-object v2, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->name:Ljava/lang/String;

    const-string v3, "maybe switched on the air plane mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
