.class public abstract Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;
.super Landroid/os/Binder;
.source "ISlptClockService.java"

# interfaces
.implements Lcom/ingenic/iwds/slpt/ISlptClockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/slpt/ISlptClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/ISlptClockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.slpt.ISlptClockService"

.field static final TRANSACTION_clearAllClock:I = 0x18

.field static final TRANSACTION_clearPictureGroup:I = 0x1b

.field static final TRANSACTION_disableLowBattery:I = 0x14

.field static final TRANSACTION_disableSlpt:I = 0x3

.field static final TRANSACTION_disableSportMode:I = 0x12

.field static final TRANSACTION_enableLowBattery:I = 0x13

.field static final TRANSACTION_enableSlpt:I = 0x2

.field static final TRANSACTION_enableSportMode:I = 0x11

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_lockService:I = 0x17

.field static final TRANSACTION_registerCallback:I = 0x15

.field static final TRANSACTION_selectClockIndex:I = 0x19

.field static final TRANSACTION_setClockPeriod:I = 0x5

.field static final TRANSACTION_setClockSlptMode:I = 0x20

.field static final TRANSACTION_setHourFormat:I = 0xc

.field static final TRANSACTION_setKeyWakeupStatus:I = 0xf

.field static final TRANSACTION_setLastHeartrate:I = 0x9

.field static final TRANSACTION_setLongUpKeyStatus:I = 0xe

.field static final TRANSACTION_setMeasurement:I = 0xb

.field static final TRANSACTION_setSafeHeartrate:I = 0xa

.field static final TRANSACTION_setSportStopTime:I = 0xd

.field static final TRANSACTION_setTargetSportStep:I = 0x6

.field static final TRANSACTION_setTodayDistance:I = 0x7

.field static final TRANSACTION_setTotalDistance:I = 0x8

.field static final TRANSACTION_setWakeUpVibratorStatus:I = 0x10

.field static final TRANSACTION_slptIsEnabled:I = 0x4

.field static final TRANSACTION_unlockService:I = 0x1f

.field static final TRANSACTION_unregisterCallback:I = 0x16

.field static final TRANSACTION_writePictureGroup:I = 0x1c

.field static final TRANSACTION_writePictureRle:I = 0x1d

.field static final TRANSACTION_writePreDrawedPicture:I = 0x1e

.field static final TRANSACTION_writeSview:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/slpt/ISlptClockService;
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
    const-string v1, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/slpt/ISlptClockService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/slpt/ISlptClockService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->isAlive()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->enableSlpt()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->disableSlpt()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v7, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->slptIsEnabled()Z

    move-result v4

    .line 70
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setClockPeriod(I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setTargetSportStep(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 97
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setTodayDistance(F)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":F
    :sswitch_8
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 106
    .restart local v0    # "_arg0":F
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setTotalDistance(F)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 112
    .end local v0    # "_arg0":F
    :sswitch_9
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setLastHeartrate(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setSafeHeartrate(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setMeasurement(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setHourFormat(I)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 151
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setSportStopTime(J)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":J
    :sswitch_e
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setLongUpKeyStatus(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setKeyWakeupStatus(I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setWakeUpVibratorStatus(I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->enableSportMode()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    :sswitch_12
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->disableSportMode()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    :sswitch_13
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->enableLowBattery()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 205
    :sswitch_14
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->disableLowBattery()V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    :sswitch_15
    const-string v7, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    move-result-object v2

    .line 217
    .local v2, "_arg1":Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->registerCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v4

    .line 218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v7, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg1":Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->unregisterCallback(Ljava/lang/String;Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;)Z

    move-result v4

    .line 230
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_17
    const-string v7, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->lockService(Ljava/lang/String;)Z

    move-result v4

    .line 240
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->clearAllClock(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 255
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->selectClockIndex(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1a
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 271
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->writeSview(Ljava/lang/String;[B)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    :sswitch_1b
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->clearPictureGroup(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->writePictureGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v5, Lcom/ingenic/iwds/slpt/PictureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/ingenic/iwds/slpt/PictureInfo;

    .line 303
    .local v2, "_arg1":[Lcom/ingenic/iwds/slpt/PictureInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 304
    .local v3, "_arg2":[I
    invoke-virtual {p0, v0, v2, v3}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->writePictureRle(Ljava/lang/String;[Lcom/ingenic/iwds/slpt/PictureInfo;[I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Lcom/ingenic/iwds/slpt/PictureInfo;
    .end local v3    # "_arg2":[I
    :sswitch_1e
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    sget-object v5, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;

    .line 320
    .local v2, "_arg1":Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->writePreDrawedPicture(Ljava/lang/String;Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v2    # "_arg1":Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    goto :goto_1

    .line 326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/ingenic/iwds/slpt/PreDrawedPictureInfo;
    :sswitch_1f
    const-string v7, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->unlockService(Ljava/lang/String;)Z

    move-result v4

    .line 330
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v5, "com.ingenic.iwds.slpt.ISlptClockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;->setClockSlptMode(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
