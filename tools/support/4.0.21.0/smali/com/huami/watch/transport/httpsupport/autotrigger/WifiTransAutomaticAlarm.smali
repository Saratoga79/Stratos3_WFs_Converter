.class public Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;
.super Ljava/lang/Object;
.source "WifiTransAutomaticAlarm.java"


# static fields
.field public static final TRIGGER_ACTION:Ljava/lang/String; = "com.huami.watch.wifiuploaddata.AUTOMATIC"

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
    const-string v0, "auto_wifi_upload_alert"

    sput-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->context:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm$1;-><init>(Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    .line 48
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v1, 0x7d0

    const/16 v2, 0xb

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    new-instance v0, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;

    const/16 v1, 0x7d1

    const/16 v2, 0x16

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarm;-><init>(IIIILcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
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
    .line 53
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->autoAlarmList:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->listener:Lcom/huami/watch/transport/httpsupport/autotrigger/baseautoalarm/AutoAlarmQueue$AutoAlarmAlertListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/huami/watch/transport/httpsupport/autotrigger/WifiTransAutomaticAlarm;->name:Ljava/lang/String;

    return-object v0
.end method
