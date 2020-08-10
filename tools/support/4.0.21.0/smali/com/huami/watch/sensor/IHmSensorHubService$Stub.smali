.class public abstract Lcom/huami/watch/sensor/IHmSensorHubService$Stub;
.super Landroid/os/Binder;
.source "IHmSensorHubService.java"

# interfaces
.implements Lcom/huami/watch/sensor/IHmSensorHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/IHmSensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/IHmSensorHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huami.watch.sensor.IHmSensorHubService"

.field static final TRANSACTION_cancelHealthSensorHistory:I = 0x10

.field static final TRANSACTION_configSLPTUpdate1Hz:I = 0x12

.field static final TRANSACTION_configureSensorHubAlgorithm:I = 0x3

.field static final TRANSACTION_configureSensorHubAlgorithmWP:I = 0x4

.field static final TRANSACTION_configureSensorHubGps:I = 0x2

.field static final TRANSACTION_configureSensorHubWakeupSource:I = 0x5

.field static final TRANSACTION_configureSensorhub:I = 0x1

.field static final TRANSACTION_getAllGpsLocation:I = 0x7

.field static final TRANSACTION_getGpsState:I = 0xb

.field static final TRANSACTION_getHeartHistoryData:I = 0x6

.field static final TRANSACTION_getMcuSportTimes:I = 0x1e

.field static final TRANSACTION_getSensorDataInfo:I = 0x13

.field static final TRANSACTION_getSportInfoFinished:I = 0x8

.field static final TRANSACTION_readWholedayStressData:I = 0x1c

.field static final TRANSACTION_readWholedayStressDataBlocked:I = 0x1d

.field static final TRANSACTION_registerBleNotifyDispatcher:I = 0x18

.field static final TRANSACTION_registerStressDataDispatcher:I = 0x1b

.field static final TRANSACTION_releaseHealthSensorHistory:I = 0xf

.field static final TRANSACTION_releaseHealthSensorHistoryData:I = 0xd

.field static final TRANSACTION_requestHealthSensorHistory:I = 0xe

.field static final TRANSACTION_requestHealthSensorHistoryData:I = 0xc

.field static final TRANSACTION_requestWearDetection:I = 0x14

.field static final TRANSACTION_requestWearDetections:I = 0x15

.field static final TRANSACTION_sendBleKlvpRequest:I = 0x17

.field static final TRANSACTION_sendKlvpRequest:I = 0x11

.field static final TRANSACTION_setApSportTimes:I = 0x1f

.field static final TRANSACTION_setEnableTouch:I = 0x19

.field static final TRANSACTION_setSportControl:I = 0xa

.field static final TRANSACTION_syncGpxTrailData:I = 0x16

.field static final TRANSACTION_syncSportCfgData:I = 0x9

.field static final TRANSACTION_updateBleChannelCrowdState:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p0, p0, v0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IHmSensorHubService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huami/watch/sensor/IHmSensorHubService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huami/watch/sensor/IHmSensorHubService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huami/watch/sensor/IHmSensorHubService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 421
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 52
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configureSensorhub(I[B)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :sswitch_2
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 63
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configureSensorHubGps(ILandroid/os/IBinder;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_3
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 77
    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IConfigFinishDispatcher;

    move-result-object v5

    .local v5, "_arg4":Lcom/huami/watch/sensor/IConfigFinishDispatcher;
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configureSensorHubAlgorithm(IIFLjava/lang/String;Lcom/huami/watch/sensor/IConfigFinishDispatcher;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Lcom/huami/watch/sensor/IConfigFinishDispatcher;
    :sswitch_4
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 99
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IConfigFinishDispatcher;

    move-result-object v5

    .restart local v5    # "_arg4":Lcom/huami/watch/sensor/IConfigFinishDispatcher;
    move-object v0, p0

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configureSensorHubAlgorithmWP(IILandroid/os/Bundle;Ljava/lang/String;Lcom/huami/watch/sensor/IConfigFinishDispatcher;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 96
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Lcom/huami/watch/sensor/IConfigFinishDispatcher;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 114
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 116
    .local v3, "_arg2":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configureSensorHubWakeupSource(IZ[FLjava/lang/String;)I

    move-result v10

    .line 118
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":[F
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 124
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getHeartHistoryData()[B

    move-result-object v10

    .line 126
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 132
    .end local v10    # "_result":[B
    :sswitch_7
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getAllGpsLocation()[B

    move-result-object v10

    .line 134
    .restart local v10    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    .end local v10    # "_result":[B
    :sswitch_8
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getSportInfoFinished(II)[B

    move-result-object v10

    .line 146
    .restart local v10    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":[B
    :sswitch_9
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 156
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->syncSportCfgData([BI)I

    move-result v10

    .line 158
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_a
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->setSportControl(II)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getGpsState()Z

    move-result v10

    .line 178
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 184
    .end local v10    # "_result":Z
    :sswitch_c
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->requestHealthSensorHistoryData(I)Lcom/huami/watch/sensor/HealthSensorHistoryData;

    move-result-object v10

    .line 188
    .local v10, "_result":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v10, :cond_3

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/huami/watch/sensor/HealthSensorHistoryData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 200
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :sswitch_d
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    sget-object v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HealthSensorHistoryData;

    .line 208
    .local v1, "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->releaseHealthSensorHistoryData(Lcom/huami/watch/sensor/HealthSensorHistoryData;)I

    move-result v10

    .line 209
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 206
    .end local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    .end local v10    # "_result":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    goto :goto_5

    .line 215
    .end local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :sswitch_e
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 219
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/sensor/IDataDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IDataDispatcher;

    move-result-object v2

    .line 221
    .local v2, "_arg1":Lcom/huami/watch/sensor/IDataDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->requestHealthSensorHistory(Landroid/os/IBinder;Lcom/huami/watch/sensor/IDataDispatcher;I)J

    move-result-wide v10

    .line 223
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/huami/watch/sensor/IDataDispatcher;
    .end local v3    # "_arg2":I
    .end local v10    # "_result":J
    :sswitch_f
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    sget-object v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/sensor/HealthSensorHistoryData;

    .line 238
    .local v1, "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 239
    .local v8, "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->releaseHealthSensorHistory(Lcom/huami/watch/sensor/HealthSensorHistoryData;J)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 235
    .end local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    .end local v8    # "_arg1":J
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    goto :goto_6

    .line 245
    .end local v1    # "_arg0":Lcom/huami/watch/sensor/HealthSensorHistoryData;
    :sswitch_10
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 248
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->cancelHealthSensorHistory(J)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    .end local v6    # "_arg0":J
    :sswitch_11
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    sget-object v0, Lcom/huami/watch/klvp/KlvpRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/klvp/KlvpRequest;

    .line 263
    .local v1, "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    move-result-object v2

    .line 264
    .local v2, "_arg1":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->sendKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    move-result v10

    .line 265
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 260
    .end local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "_arg1":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    .end local v10    # "_result":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    goto :goto_7

    .line 271
    .end local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    :sswitch_12
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 274
    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->configSLPTUpdate1Hz(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 273
    .end local v1    # "_arg0":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 280
    :sswitch_13
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getSensorDataInfo()Lcom/huami/watch/sensor/SensorDataInfo;

    move-result-object v10

    .line 282
    .local v10, "_result":Lcom/huami/watch/sensor/SensorDataInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v10, :cond_8

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/huami/watch/sensor/SensorDataInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 294
    .end local v10    # "_result":Lcom/huami/watch/sensor/SensorDataInfo;
    :sswitch_14
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 298
    .restart local v1    # "_arg0":Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 299
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->requestWearDetection(ZLandroid/os/IBinder;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 296
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 305
    :sswitch_15
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 311
    .local v2, "_arg1":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 312
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->requestWearDetections(Ljava/lang/String;ZLandroid/os/IBinder;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 309
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 318
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 322
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->syncGpxTrailData([BI)I

    move-result v10

    .line 324
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 330
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_17
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 333
    sget-object v0, Lcom/huami/watch/klvp/KlvpRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/klvp/KlvpRequest;

    .line 339
    .local v1, "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    move-result-object v2

    .line 340
    .local v2, "_arg1":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    invoke-virtual {p0, v1, v2}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->sendBleKlvpRequest(Lcom/huami/watch/klvp/KlvpRequest;Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)I

    move-result v10

    .line 341
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 336
    .end local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    .end local v2    # "_arg1":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    .end local v10    # "_result":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    goto :goto_c

    .line 347
    .end local v1    # "_arg0":Lcom/huami/watch/klvp/KlvpRequest;
    :sswitch_18
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/klvp/IKlvpResponseDispatcher;

    move-result-object v1

    .line 350
    .local v1, "_arg0":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->registerBleNotifyDispatcher(Lcom/huami/watch/klvp/IKlvpResponseDispatcher;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    .end local v1    # "_arg0":Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
    :sswitch_19
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 359
    .local v1, "_arg0":Z
    :goto_d
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->setEnableTouch(Z)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 358
    .end local v1    # "_arg0":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 365
    :sswitch_1a
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->updateBleChannelCrowdState(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":I
    :sswitch_1b
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/sensor/IStressDataDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huami/watch/sensor/IStressDataDispatcher;

    move-result-object v1

    .line 377
    .local v1, "_arg0":Lcom/huami/watch/sensor/IStressDataDispatcher;
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->registerStressDataDispatcher(Lcom/huami/watch/sensor/IStressDataDispatcher;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 383
    .end local v1    # "_arg0":Lcom/huami/watch/sensor/IStressDataDispatcher;
    :sswitch_1c
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 386
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->readWholedayStressData([B)I

    move-result v10

    .line 387
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 390
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_1d
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 397
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->readWholedayStressDataBlocked([B)I

    move-result v10

    .line 398
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 401
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_1e
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->getMcuSportTimes()I

    move-result v10

    .line 407
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 413
    .end local v10    # "_result":I
    :sswitch_1f
    const-string v0, "com.huami.watch.sensor.IHmSensorHubService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/huami/watch/sensor/IHmSensorHubService$Stub;->setApSportTimes(I)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
