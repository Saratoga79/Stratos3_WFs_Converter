.class public Lcom/huami/watch/transport/httpsupport/global/ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionReceiver.java"


# static fields
.field public static final ACTION_ASSISTANT_SYNC_DATA:Ljava/lang/String; = "com.huami.watch.companion.action.HOST_START_SYNC_DATA"

.field public static final ACTION_CALL_OF_DUTY:Ljava/lang/String; = "com.huami.watch.httpsupport.COLLECT_DATA"

.field public static final ACTION_WATCH_UNBIND:Ljava/lang/String; = "com.huami.watch.companion.action.UnbindDeviceStart"

.field public static final CALL_OF_DUTY_REQ_CODE_WEAR_COMPANION:I = 0x0

.field public static final CALL_OF_DUTY_REQ_CODE_WEAR_SERVICES:I = 0x1

.field public static final KEY_INTERVAL:Ljava/lang/String; = "itvl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleWearCompanionOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x8

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->kick(Landroid/content/Context;I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "com.huami.watch.WATCH_CONNED_4_COMPANION"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->kick(Landroid/content/Context;I)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "com.huami.watch.companion.action.UnbindDeviceStart"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v1, :cond_3

    .line 129
    const-string v1, "WH-ASSIST"

    const-string v2, "------> \u6536\u5230\u624b\u52a9\u89e3\u7ed1\u6d88\u606f \u5373\u5c06\u89e6\u53d1\uff0c\u7f13\u5b58\u624b\u52a9\u4fe1\u606f\u7684\u91cd\u4f20"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SRV"

    const-string v3, "------> \u6536\u5230\u624b\u52a9\u89e3\u7ed1\u6d88\u606f \u5373\u5c06\u89e6\u53d1\uff0c\u7f13\u5b58\u624b\u52a9\u4fe1\u606f\u7684\u91cd\u4f20"

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->kick(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handleWearServiceOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.huami.watch.action.DEVICE_CONNECTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.huami.watch.action.DEVICE_CONNECTION_CHANGED_IOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->kick(Landroid/content/Context;I)V

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-static {p1}, Lclc/utils/debug/slog/SolidLogger;->withContext(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.huami.watch.httpsupport.COLLECT_DATA"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "WH-ASSIST"

    const-string v3, "------> \u6536\u5230Call of duty ,\u8bbe\u7f6edriver..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "------> \u6536\u5230Call of duty ,\u8bbe\u7f6edriver..."

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "itvl"

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    .local v0, "interval":J
    invoke-static {p1, v0, v1}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->startAlarmDriver(Landroid/content/Context;J)Landroid/app/PendingIntent;

    .line 66
    .end local v0    # "interval":J
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v2, :cond_2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/global/ConnectionReceiver;->handleWearServiceOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/global/ConnectionReceiver;->handleWearCompanionOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
