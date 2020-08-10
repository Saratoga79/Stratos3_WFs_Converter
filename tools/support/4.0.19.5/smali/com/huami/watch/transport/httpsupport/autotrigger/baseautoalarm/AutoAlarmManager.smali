.class public Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;
.super Ljava/lang/Object;
.source "AutoAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field private static instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;


# instance fields
.field private autoAlarmQueues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;",
            ">;"
        }
    .end annotation
.end field

.field private broadCastReceiver:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->broadCastReceiver:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    .line 31
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    .line 33
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->init()V

    .line 34
    return-void
.end method

.method private createAutoAlarms(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "automatics"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;>;"
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huami.watch.http_support.AUTOMATIC_TRANS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->broadCastReceiver:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAutoAlarms(Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "autoAlarms"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->createAutoAlarms(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    .local v0, "autoQu":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public addAutoAlarms(Ljava/lang/String;Ljava/util/List;)Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;)",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "autoAlarms":Ljava/util/List;, "Ljava/util/List<Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;>;"
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 60
    .local v0, "autoQu":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoAlarmQueues.add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object p0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    .line 102
    .local v0, "queue":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->clear()V

    .line 105
    :cond_1
    sget-object v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    const-string v2, "clear"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearAll()V
    .locals 6

    .prologue
    .line 109
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 110
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    .line 115
    .local v2, "queue":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->clear()V

    goto :goto_1

    .line 119
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "queue":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    :cond_3
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->broadCastReceiver:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->broadCastReceiver:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager$AutoAlarmBroadCastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    :cond_4
    const/4 v4, 0x0

    sput-object v4, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->instance:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;

    .line 123
    sget-object v4, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    const-string v5, "clearAll"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAlert(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 88
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    .line 90
    .local v0, "queue":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->notice(Landroid/content/Context;J)V

    .line 92
    sget-object v1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAlert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "queue":Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 5

    .prologue
    .line 78
    sget-object v3, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->TAG:Ljava/lang/String;

    const-string v4, "onTimeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 80
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->autoAlarmQueues:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->timeChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
