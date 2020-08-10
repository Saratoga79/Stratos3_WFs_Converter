.class Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$1;
.super Ljava/lang/Object;
.source "AutoAlarmQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;->sort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$1;->this$0:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)I
    .locals 6
    .param p1, "lhs"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;
    .param p2, "rhs"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 124
    const/4 v1, 0x1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 126
    const/4 v1, -0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$1;->compare(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)I

    move-result v0

    return v0
.end method
