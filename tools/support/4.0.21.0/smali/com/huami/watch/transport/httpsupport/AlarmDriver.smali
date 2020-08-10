.class public Lcom/huami/watch/transport/httpsupport/AlarmDriver;
.super Ljava/lang/Object;
.source "AlarmDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarmDriver(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 86
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static inject(Landroid/content/Context;IJLandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmType"    # I
    .param p2, "repeatInterval"    # J
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "reqCode"    # I

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 77
    :goto_0
    return-object v2

    .line 64
    :cond_0
    const-string v3, "HmAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".setCustomRepeatAlarm :  intervalTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 68
    .local v1, "currentCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    const/16 v3, 0xd

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    long-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 72
    const/high16 v3, 0x10000000

    invoke-static {p0, p5, p4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 73
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 75
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static inject(Landroid/content/Context;IIIIJLandroid/content/Intent;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmType"    # I
    .param p2, "hour"    # I
    .param p3, "min"    # I
    .param p4, "second"    # I
    .param p5, "intervalTime"    # J
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "reqCode"    # I

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v3, "HmAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCustomRepeatAlarm : time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intervalTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 33
    .local v10, "currentCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 35
    .local v9, "alarmCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 36
    const/16 v3, 0xb

    invoke-virtual {v9, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 37
    const/16 v3, 0xc

    invoke-virtual {v9, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/16 v3, 0xd

    invoke-virtual {v9, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 40
    :goto_1
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 41
    const-string v3, "HmAlarm"

    const-string v4, "alarmCalendar.before(currentCalendar)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/16 v3, 0xd

    const-wide/16 v4, 0x3e8

    div-long v4, p5, v4

    long-to-int v4, v4

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 45
    :cond_1
    const/high16 v3, 0x10000000

    move/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 46
    .local v8, "pi":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 47
    .local v2, "am":Landroid/app/AlarmManager;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move v3, p1

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public static startAlarmDriver(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interval"    # J

    .prologue
    .line 17
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 20
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.huami.watch.httpsupport.COLLECT_DATA"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, "itvl"

    invoke-virtual {v4, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 22
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->inject(Landroid/content/Context;IJLandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method
