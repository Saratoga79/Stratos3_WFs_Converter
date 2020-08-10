.class public Lcom/huami/watch/transport/WifiUploadAutomaticAlarm;
.super Ljava/lang/Object;
.source "WifiUploadAutomaticAlarm.java"


# static fields
.field public static final ALARM_TIME_CHANGE:I = 0x33

.field public static final ALARM_TIME_NEXT:I = 0x34

.field private static final TIME_JITTER:I = 0x1e

.field private static final TIME_ONE:I = 0xb

.field private static final TIME_TWO:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmTime(I)J
    .locals 12
    .param p0, "flag"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v9, 0x0

    const/16 v8, 0x16

    const/16 v10, 0xc

    const/16 v7, 0xb

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 55
    .local v1, "hourNow":I
    const/16 v2, 0x1e

    .line 56
    .local v2, "jitter":I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 57
    .local v4, "minuteNow":I
    if-ge v1, v7, :cond_1

    .line 58
    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 85
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 86
    .local v5, "randomMinute":I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 87
    .local v3, "minute":I
    add-int v6, v3, v5

    invoke-virtual {v0, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 89
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    return-wide v6

    .line 60
    .end local v3    # "minute":I
    .end local v5    # "randomMinute":I
    :cond_1
    if-ne v1, v7, :cond_3

    .line 61
    const/16 v6, 0x1e

    if-ge v4, v6, :cond_2

    const/16 v6, 0x34

    if-eq p0, v6, :cond_2

    .line 62
    rsub-int/lit8 v2, v4, 0x1e

    .line 63
    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 68
    :cond_3
    if-le v1, v7, :cond_4

    if-ge v1, v8, :cond_4

    .line 69
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 70
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 71
    :cond_4
    if-ne v1, v8, :cond_6

    .line 72
    const/16 v6, 0x1e

    if-ge v4, v6, :cond_5

    const/16 v6, 0x34

    if-eq p0, v6, :cond_5

    .line 73
    rsub-int/lit8 v2, v4, 0x1e

    .line 74
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 80
    :cond_6
    if-le v1, v8, :cond_0

    .line 81
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 82
    invoke-virtual {v0, v7, v7}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/huami/watch/transport/WifiUploadAlarmBroadCastReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 48
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 49
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 50
    return-void
.end method

.method public static settingAlarmClock(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    const/4 v8, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/huami/watch/transport/WifiUploadAutomaticAlarm;->alarmTime(I)J

    move-result-wide v0

    .line 29
    .local v0, "alarmTime":J
    const-string v5, "wifi_automatic_receive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "settingAlarmClock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/huami/watch/transport/WifiUploadAlarmBroadCastReceiver;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "alarm_time"

    invoke-virtual {v3, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 34
    .local v4, "sender":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 41
    .local v2, "am":Landroid/app/AlarmManager;
    invoke-virtual {v2, v8, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
