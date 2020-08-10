.class public Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
.super Ljava/lang/Object;
.source "AutoAlarmQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;,
        Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;
    }
.end annotation


# instance fields
.field private ID:I

.field private alarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private currentAlarm:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

.field private mContext:Landroid/content/Context;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "autoAlarms":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x64

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->ID:I

    .line 35
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    .line 38
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->init()V

    .line 39
    return-void
.end method

.method private calculateTime()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 99
    .local v2, "timeNow":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->currentAlarm:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .line 103
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcAddJitter()J

    move-result-wide v4

    .line 114
    :goto_1
    return-wide v4

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->currentAlarm:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .line 106
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcAddJitter()J

    move-result-wide v4

    goto :goto_1

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->currentAlarm:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .line 110
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->nextDayUTC(Z)J

    move-result-wide v4

    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 114
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private cancelAlarm(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.huami.watch.http_support.AUTOMATIC_TRANS_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->ID:I

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 68
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 70
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAlarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->ID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private getNextAlarmTime(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->sort()V

    .line 44
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->settingAlarmClock(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private saveNextAlarmTime(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 144
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method

.method private settingAlarmClock(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->calculateTime()J

    move-result-wide v0

    .line 53
    .local v0, "alarmTime":J
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "settingAlarmClock:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.huami.watch.http_support.AUTOMATIC_TRANS_DATA"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "name"

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v5, "id"

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->currentAlarm:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->ID:I

    const/high16 v6, 0x8000000

    invoke-static {p1, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 59
    .local v4, "sender":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 60
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->saveNextAlarmTime(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$1;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public notice(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J

    .prologue
    .line 84
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->alarms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .line 85
    .local v0, "aul":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p2

    if-nez v3, :cond_0

    .line 86
    iget-object v3, v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-interface {v3, v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;->autoAlarmAlert(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)Z

    move-result v2

    .line 87
    .local v2, "isRefreshAlarm":Z
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->settingAlarmClock(Landroid/content/Context;)V

    goto :goto_0

    .line 94
    .end local v0    # "aul":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;
    .end local v2    # "isRefreshAlarm":Z
    :cond_1
    return-void
.end method

.method public timeChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->getNextAlarmTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 76
    .local v0, "nextAlarm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->cancelAlarm(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->settingAlarmClock(Landroid/content/Context;)V

    .line 80
    :cond_0
    return-void
.end method
