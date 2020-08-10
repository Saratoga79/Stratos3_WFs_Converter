.class public Lcom/huami/watch/watchface/util/SingletonWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_HEART_URI:Landroid/net/Uri;

.field private static volatile INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastUpdate:J

.field private mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

.field private mSensorHubConfigManager:Lcom/huami/watch/sensor/HmSensorHubConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/watchface/util/SingletonWrapper;->INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;

    const-string v0, "content://com.huami.watch.health.heartdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huami/watch/watchface/util/SingletonWrapper;->CONTENT_HEART_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorHubConfigManager:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mLastUpdate:J

    iput-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static echo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    check-cast p0, [B

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " byte[] : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getContentValues(JI)Landroid/content/ContentValues;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "utc_time"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "time_zone"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "heart_rate"

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/util/SingletonWrapper;
    .locals 1

    sget-object v0, Lcom/huami/watch/watchface/util/SingletonWrapper;->INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;

    if-nez v0, :cond_1

    const-class v0, Lcom/huami/watch/watchface/util/SingletonWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/huami/watch/watchface/util/SingletonWrapper;->INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huami/watch/watchface/util/SingletonWrapper;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/watchface/util/SingletonWrapper;->INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;

    :cond_0
    const-class p0, Lcom/huami/watch/watchface/util/SingletonWrapper;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-class v0, Lcom/huami/watch/watchface/util/SingletonWrapper;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->INSTANCE:Lcom/huami/watch/watchface/util/SingletonWrapper;

    return-object p0
.end method

.method public static getLastHeartRato(Landroid/content/Context;)I
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huami/watch/watchface/util/SingletonWrapper;->CONTENT_HEART_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "utc_time DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "heart_rate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isFullDayOpen(Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "key_settings_system_full_day_enable"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return v0
.end method

.method public static final isSupportDataType(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestHeartRateHistory(Landroid/content/ContentResolver;)[I
    .locals 8

    invoke-static {p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->isFullDayOpen(Landroid/content/ContentResolver;)Z

    move-result v0

    const-string v1, "SingletonWrapper"

    if-eqz v0, :cond_1

    const/16 v0, 0x78

    new-array v0, v0, [I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    sub-long v4, v2, v4

    invoke-static {p0, v4, v5, v2, v3}, Lcom/huami/watch/datacenter/dailymotion/DailyMotionProcessor;->queryDailyMotionData(Landroid/content/ContentResolver;JJ)[B

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeartRates data length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->echo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0xc

    add-int/lit8 v3, v2, 0xc

    array-length v4, p0

    if-gt v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x6

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/huami/watch/datacenter/Utils;->formInt([BII)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/huami/watch/watchface/util/SingletonWrapper;->CONTENT_HEART_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "utc_time DESC limit 12"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-array v0, v0, [I

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "heart_rate"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const-string p0, " Cursor is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 p0, 0xa

    new-array v0, p0, [I

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static requestStepHistory(Landroid/content/ContentResolver;)[I
    .locals 11

    const/16 v0, 0xd

    new-array v1, v0, [I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x2932e00

    sub-long/2addr v7, v9

    invoke-static {p0, v7, v8, v3, v4}, Lcom/huami/watch/datacenter/dailymotion/DailyMotionProcessor;->queryDailyMotionData(Landroid/content/ContentResolver;JJ)[B

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steps data length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SingletonWrapper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v0, 0x3c

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v7, v4, 0xc

    array-length v8, p0

    if-gt v7, v8, :cond_1

    add-int/lit8 v4, v4, 0x4

    const/4 v7, 0x2

    invoke-static {p0, v4, v7}, Lcom/huami/watch/datacenter/Utils;->formInt([BII)I

    move-result v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eq v4, v7, :cond_0

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static saveLastHeartRato(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/huami/watch/watchface/util/SingletonWrapper;->CONTENT_HEART_URI:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/huami/watch/watchface/util/SingletonWrapper;->getContentValues(JI)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private updateSensorDataInfo()V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorHubConfigManager:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    iget-object v1, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorHubConfigManager:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mLastUpdate:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iput-wide v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mLastUpdate:J

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorHubConfigManager:Lcom/huami/watch/sensor/HmSensorHubConfigManager;

    invoke-virtual {v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager;->getSensorDatainfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

    :cond_1
    return-void
.end method


# virtual methods
.method public getFloorCount()I
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->updateSensorDataInfo()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/sensor/SensorDataInfo;->getFloorCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeartRato()I
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->updateSensorDataInfo()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/sensor/SensorDataInfo;->getHeartRate()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSportCalories()F
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/util/SingletonWrapper;->updateSensorDataInfo()V

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mSensorDataInfo:Lcom/huami/watch/sensor/SensorDataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huami/watch/sensor/SensorDataInfo;->getSportCalories()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTodayDistance()D
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_today_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTotalDistance()D
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/util/SingletonWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sport_total_distance"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
