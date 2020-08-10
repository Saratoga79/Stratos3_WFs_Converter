.class public Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoAlarmBroadCastReceiver"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.huami.watch.http_support.AUTOMATIC_TRANS_DATA"


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;


# direct methods
.method public constructor <init>(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    const-class v3, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->onTimeChanged()V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.huami.watch.http_support.AUTOMATIC_TRANS_DATA"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v0, v3

    .line 141
    .local v0, "id":J
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->onAlert(Ljava/lang/String;J)V

    goto :goto_0
.end method
