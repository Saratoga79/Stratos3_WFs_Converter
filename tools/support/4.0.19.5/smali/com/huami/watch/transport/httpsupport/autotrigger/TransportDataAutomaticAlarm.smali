.class public Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;
.super Ljava/lang/Object;
.source "TransportDataAutomaticAlarm.java"


# static fields
.field public static final TRIGGER_ACTION:Ljava/lang/String; = "com.huami.watch.http_support.TRANS_AUTOMATIC"

.field public static name:Ljava/lang/String;


# instance fields
.field private autoAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "automatic_trans_alert"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->context:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 32
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/autotrigger/AutoTransTriggerTransporter;

    .line 33
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm$1;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    .line 49
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v1, 0x3e8

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v1, 0x3e9

    const/16 v2, 0xd

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v5, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v6, 0x3ea

    const/16 v7, 0x15

    const/16 v8, 0x2d

    iget-object v10, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v1, 0x3eb

    const/16 v2, 0x17

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public getAutoAlarmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/TransportDataAutomaticAlarm;->name:Ljava/lang/String;

    return-object v0
.end method
