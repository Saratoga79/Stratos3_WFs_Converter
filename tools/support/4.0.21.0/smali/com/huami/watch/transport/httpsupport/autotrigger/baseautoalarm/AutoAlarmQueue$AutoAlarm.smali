.class public Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;
.super Ljava/lang/Object;
.source "AutoAlarmQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoAlarm"
.end annotation


# instance fields
.field private hour:I

.field private id:I

.field private jitter:I

.field public listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

.field private minute:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "jitter"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->id:I

    .line 168
    iput p2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->hour:I

    .line 169
    iput p3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->minute:I

    .line 170
    iput p4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->jitter:I

    .line 171
    return-void
.end method

.method public constructor <init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "jitter"    # I
    .param p5, "listener"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->id:I

    .line 175
    iput p2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->hour:I

    .line 176
    iput p3, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->minute:I

    .line 177
    iput p4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->jitter:I

    .line 178
    iput-object p5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    .prologue
    .line 158
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->id:I

    return v0
.end method

.method private getUTC()J
    .locals 4

    .prologue
    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 220
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->id:I

    return v0
.end method

.method public getListener()Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    return-object v0
.end method

.method getUtcAddJitter()J
    .locals 6

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 199
    .local v0, "calender":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUTC()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    const/16 v1, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->jitter:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 201
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method getUtcTime()J
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method nextDayUTC(Z)J
    .locals 6
    .param p1, "isJitter"    # Z

    .prologue
    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "calender":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->getUtcTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const/16 v1, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->jitter:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->id:I

    .line 195
    return-void
.end method

.method public setListener(Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .line 187
    return-void
.end method
