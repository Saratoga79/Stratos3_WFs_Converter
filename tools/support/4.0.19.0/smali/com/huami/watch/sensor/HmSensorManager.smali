.class public Lcom/huami/watch/sensor/HmSensorManager;
.super Ljava/lang/Object;
.source "HmSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    }
.end annotation


# static fields
.field public static final HEALTH_SENSOR_ID_EMPTY:I = -0x1

.field public static final HEALTH_SENSOR_ID_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HmSensorManager"

.field public static _instance:Lcom/huami/watch/sensor/HmSensorManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "/system/lib/libsensorhub.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorManager;->mContext:Landroid/content/Context;

    .line 246
    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorManager;->mContext:Landroid/content/Context;

    .line 246
    iput-object v0, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    .line 56
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorManager;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorManager;->nativeDayStressInit()V

    .line 58
    return-void
.end method

.method private enableRealtimeStress(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 249
    const-string v0, "HmSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STRESS:enableRealtimeStress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeEnableRealtimeStress(Z)V

    .line 252
    return-void
.end method

.method public static getInstance()Lcom/huami/watch/sensor/HmSensorManager;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/huami/watch/sensor/HmSensorManager;

    invoke-direct {v0}, Lcom/huami/watch/sensor/HmSensorManager;-><init>()V

    sput-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    .line 324
    :cond_0
    sget-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/sensor/HmSensorManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    sget-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/huami/watch/sensor/HmSensorManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/HmSensorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    .line 335
    :cond_0
    sget-object v0, Lcom/huami/watch/sensor/HmSensorManager;->_instance:Lcom/huami/watch/sensor/HmSensorManager;

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v3, ""

    .line 80
    :goto_0
    return-object v3

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 67
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    if-eqz v1, :cond_2

    rem-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_2

    .line 75
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "hex":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public configureSensorHubAlgorithm(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "alg"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "reserve"    # Ljava/lang/Object;

    .prologue
    .line 169
    const-string v0, "HmSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to call native function of configureSensorHubAlgorithm to alg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorManager;->nativeConfigureSensorHubAlgorithm(ILjava/lang/Object;)I

    .line 171
    const-string v0, "HmSensorManager"

    const-string v1, "call configureSensorHubAlgorithm sucessful~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public configureSensorHubGps(ILjava/lang/Object;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "reserve"    # Ljava/lang/Object;

    .prologue
    .line 151
    const-string v0, "HmSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to call native function of configureSensorHubGps set mode to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeConfigureSensorHubGps(I)I

    .line 153
    const-string v0, "HmSensorManager"

    const-string v1, "call native function of configureSensorHubGps sucessful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public configureSensorHubWakeupSource(IZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "wakeup_source"    # I
    .param p2, "enable"    # Z
    .param p3, "arg"    # Ljava/lang/Object;
    .param p4, "reserve"    # Ljava/lang/Object;

    .prologue
    .line 234
    const-string v2, "HmSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need to call native function of configureSensorHubWakeupSource wakeup source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    move-object v2, p3

    .line 237
    check-cast v2, [F

    move-object v1, v2

    check-cast v1, [F

    .line 238
    .local v1, "target":[F
    const-string v2, "HmSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target steps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v1    # "target":[F
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/huami/watch/sensor/HmSensorManager;->nativeConfigureSensorHubWakeupSource(IZLjava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "result":I
    const-string v2, "HmSensorManager"

    const-string v3, "nativeConfigureSensorHubWakeupSource called sucessful~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v0
.end method

.method public configureSensorhub(I[BLjava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "arg"    # [B
    .param p3, "reserve"    # Ljava/lang/Object;

    .prologue
    .line 141
    return-void
.end method

.method public dayStressDataReady()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huami.watch.action.SENSOR_WAKEUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WAKEUP_SOURCE"

    const-string v2, "day_stress_data_ready"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    const-string v1, "HmSensorManager"

    const-string v2, "dayStressDataReady. sendBroadcast..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v1, "HmSensorManager"

    const-string v2, "dayStressDataReady. but context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllGpsLocation()[B
    .locals 2

    .prologue
    .line 129
    const-string v0, "HmSensorManager"

    const-string v1, "call native getAllGpsLocation function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorManager;->nativeGetGpsLocation()[B

    move-result-object v0

    return-object v0
.end method

.method public getMcuSportTimes()I
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorManager;->nativeReadSportTimes()I

    move-result v0

    return v0
.end method

.method public getSportInfoFinished(II)[B
    .locals 5
    .param p1, "type"    # I
    .param p2, "time"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 186
    .local v1, "len":I
    if-nez p1, :cond_1

    .line 187
    const/16 v2, 0xac

    new-array v0, v2, [B

    .line 192
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 193
    const-string v2, "HmSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call nativeGetSportInfo failed type is err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    .line 198
    .end local v0    # "buf":[B
    :goto_1
    return-object v0

    .line 188
    .restart local v0    # "buf":[B
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 189
    const/16 v2, 0x30

    new-array v0, v2, [B

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/huami/watch/sensor/HmSensorManager;->nativeGetSportInfo([BII)I

    move-result v1

    .line 197
    const-string v2, "HmSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call nativeGetSportInfo sucessful, read len ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public native nativeConfigureSensorHubAlgorithm(ILjava/lang/Object;)I
.end method

.method public native nativeConfigureSensorHubGps(I)I
.end method

.method public native nativeConfigureSensorHubWakeupSource(IZLjava/lang/Object;)I
.end method

.method public native nativeDayStressInit()V
.end method

.method public native nativeEnableRealtimeStress(Z)V
.end method

.method public native nativeGetGpsLocation()[B
.end method

.method public native nativeGetSportInfo([BII)I
.end method

.method public native nativeReadRealtimeStressData()I
.end method

.method public native nativeReadSensorInfo(Lcom/huami/watch/sensor/SensorDataInfo;)V
.end method

.method public native nativeReadSportTimes()I
.end method

.method public native nativeReadWholedayStressData([B)I
.end method

.method public native nativeReadWholedayStressDataBlocked([B)I
.end method

.method public native nativeReleaseTransaction(I)I
.end method

.method public native nativeRequestTransaction()I
.end method

.method public native nativeRwSportCfg([BI)I
.end method

.method public native nativeSetGpsRouteData([BI)I
.end method

.method public native nativeSetSportControl(II)I
.end method

.method public native nativeStartTransaction(II)[B
.end method

.method public native nativeWriteSportTimes(I)V
.end method

.method public newRealtimeStressData(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    const-string v1, "HmSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newRealtimeStressData: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    invoke-interface {v1, p1}, Lcom/huami/watch/sensor/IStressDataDispatcher;->notifyRealtimeStressData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "HmSensorManager"

    const-string v2, "newRealtimeStressData: stressDataDispatcher is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readWholedayStressData([B)I
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 255
    const-string v1, "HmSensorManager"

    const-string v2, "readWholedayStressData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "len":I
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeReadWholedayStressData([B)I

    move-result v0

    .line 258
    const-string v1, "HmSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call readWholedayStressData sucessful, len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v0
.end method

.method public readWholedayStressDataBlocked([B)I
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 263
    const-string v1, "HmSensorManager"

    const-string v2, "readWholedayStressDataBlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "len":I
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeReadWholedayStressDataBlocked([B)I

    move-result v0

    .line 266
    const-string v1, "HmSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call readWholedayStressDataBlocked sucessful, len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v0
.end method

.method public registerStressDataDispatcher(Lcom/huami/watch/sensor/IStressDataDispatcher;)V
    .locals 3
    .param p1, "dispatcher"    # Lcom/huami/watch/sensor/IStressDataDispatcher;

    .prologue
    .line 270
    const-string v0, "HmSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STRESS:registerStressDataDispatcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-object p1, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    .line 272
    iget-object v0, p0, Lcom/huami/watch/sensor/HmSensorManager;->stressDataDispatcher:Lcom/huami/watch/sensor/IStressDataDispatcher;

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huami/watch/sensor/HmSensorManager;->enableRealtimeStress(Z)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huami/watch/sensor/HmSensorManager;->enableRealtimeStress(Z)V

    goto :goto_0
.end method

.method public releaseHealthSensorHistoryData(Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;)I
    .locals 3
    .param p1, "history"    # Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "ret":I
    iget v1, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 115
    iget v1, p1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeReleaseTransaction(I)I

    move-result v0

    .line 117
    :cond_0
    const-string v1, "HmSensorManager"

    const-string v2, "releaseHealthSensorHistoryData called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0
.end method

.method public requestHealthSensorHistoryData(I)Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    .locals 5
    .param p1, "minIndex"    # I

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "ret":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    invoke-virtual {p0}, Lcom/huami/watch/sensor/HmSensorManager;->nativeRequestTransaction()I

    move-result v0

    .line 94
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 95
    new-instance v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;

    .end local v1    # "ret":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    invoke-direct {v1}, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;-><init>()V

    .line 96
    .restart local v1    # "ret":Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;
    iput v0, v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->id:I

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeStartTransaction(II)[B

    move-result-object v2

    iput-object v2, v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    .line 98
    iget-object v2, v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "HmSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestHealthSensorHistoryData called, data len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v2, "HmSensorManager"

    iget-object v3, v1, Lcom/huami/watch/sensor/HmSensorManager$HealthSensorHistory;->data:[B

    invoke-static {v3}, Lcom/huami/watch/sensor/HmSensorManager;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-object v1
.end method

.method public setApSportTimes(I)V
    .locals 0
    .param p1, "times"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HmSensorManager;->nativeWriteSportTimes(I)V

    .line 314
    return-void
.end method

.method public setSportControl(II)V
    .locals 0
    .param p1, "subType"    # I
    .param p2, "arg"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorManager;->nativeSetSportControl(II)I

    .line 223
    return-void
.end method

.method public syncSportCfg([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rw"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "len":I
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/sensor/HmSensorManager;->nativeRwSportCfg([BI)I

    move-result v0

    .line 207
    const-string v1, "HmSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call syncSportCfg sucessful, len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v0
.end method
