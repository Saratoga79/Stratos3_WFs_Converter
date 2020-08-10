.class public Lcom/huami/watch/wearubc/UbcInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/wearubc/UbcInterface$MsgParams;,
        Lcom/huami/watch/wearubc/UbcInterface$UbcHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static EVENT_TEST1_ID1_LAUGH:Ljava/lang/String; = "xx0001"

.field public static EVENT_TEST1_ID2_CRY:Ljava/lang/String; = "xx0002"

.field public static EVENT_TEST1_ID3_YEAL:Ljava/lang/String; = "xx0003"

.field private static TAG:Ljava/lang/String; = "UbcInterface"

.field private static sAppId:Ljava/lang/String;

.field private static sAppVer:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sLooper:Landroid/os/Looper;

.field private static sUbcDataManager:Lcom/huami/watch/wearubc/UbcDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/huami/watch/wearubc/GlobalConfig;->DEBUG:Z

    sput-boolean v0, Lcom/huami/watch/wearubc/UbcInterface;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/huami/watch/wearubc/UbcInterface;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/wearubc/UbcInterface$MsgParams;)V
    .locals 0

    invoke-static {p0}, Lcom/huami/watch/wearubc/UbcInterface;->recordEvent(Lcom/huami/watch/wearubc/UbcInterface$MsgParams;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/huami/watch/wearubc/UbcInterface;->releaseDelayed()V

    return-void
.end method

.method private static checkHandler()V
    .locals 2

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call initialize first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-enter v0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lcom/huami/watch/wearubc/UbcInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p0, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p0

    const-class p1, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-exit p1

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    const-class v0, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must have appId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "must have appVer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sLooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sAppId:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sAppVer:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    const-string p1, "already initialized~~"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sContext:Landroid/content/Context;

    if-nez v0, :cond_4

    sput-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sContext:Landroid/content/Context;

    :cond_4
    new-instance p0, Lcom/huami/watch/wearubc/UbcDataManager;

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/wearubc/UbcDataManager;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sUbcDataManager:Lcom/huami/watch/wearubc/UbcDataManager;

    if-eqz p3, :cond_5

    sput-object p3, Lcom/huami/watch/wearubc/UbcInterface;->sLooper:Landroid/os/Looper;

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    sput-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sLooper:Landroid/os/Looper;

    :goto_0
    sget-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sLooper:Landroid/os/Looper;

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no looper prepared in this thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/huami/watch/wearubc/UbcInterface$UbcHandler;

    sget-object p3, Lcom/huami/watch/wearubc/UbcInterface;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, p3}, Lcom/huami/watch/wearubc/UbcInterface$UbcHandler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sHandler:Landroid/os/Handler;

    sput-object p1, Lcom/huami/watch/wearubc/UbcInterface;->sAppId:Ljava/lang/String;

    sput-object p2, Lcom/huami/watch/wearubc/UbcInterface;->sAppVer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-class p0, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-exit p0

    return-void

    :goto_2
    const-class p1, Lcom/huami/watch/wearubc/UbcInterface;

    monitor-exit p1

    throw p0
.end method

.method private static paramsToJson(Lcom/huami/watch/wearubc/UbcInterface$MsgParams;)Lorg/json/JSONObject;
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    const-string v1, "msgParams is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eid"

    sget-object v4, Lcom/huami/watch/wearubc/UbcDataManager;->WATCH_EVENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mEventId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ver"

    iget-object v3, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mAppVer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stmp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mParams:Ljava/util/Map;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;->mParams:Ljava/util/Map;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    const-string p0, "pms"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    return-object v0
.end method

.method private static recordEvent(Lcom/huami/watch/wearubc/UbcInterface$MsgParams;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    const-string v0, "null msg params"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/huami/watch/wearubc/UbcInterface;->paramsToJson(Lcom/huami/watch/wearubc/UbcInterface$MsgParams;)Lorg/json/JSONObject;

    move-result-object p0

    sget-boolean v0, Lcom/huami/watch/wearubc/UbcInterface;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Json put in database:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->sUbcDataManager:Lcom/huami/watch/wearubc/UbcDataManager;

    invoke-virtual {v0, p0}, Lcom/huami/watch/wearubc/UbcDataManager;->putEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs recordPropertyEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "properties is null of event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "UBC_TEST_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordPropertyEvent eventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huami/watch/wearubc/UbcDataManager;->WATCH_EVENT_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huami/watch/wearubc/UbcInterface;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "UBC_TEST_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "properties:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/huami/watch/wearubc/UbcInterface;->checkHandler()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    :goto_1
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/huami/watch/wearubc/UbcInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/huami/watch/wearubc/UbcInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propertyValues:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p1, "event_property"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_count"

    const-string v1, "1"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;

    sget-object v1, Lcom/huami/watch/wearubc/UbcInterface;->sAppVer:Ljava/lang/String;

    sget-object v2, Lcom/huami/watch/wearubc/UbcInterface;->sAppId:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/huami/watch/wearubc/UbcInterface$MsgParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lcom/huami/watch/wearubc/UbcInterface;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static releaseDelayed()V
    .locals 0

    return-void
.end method
