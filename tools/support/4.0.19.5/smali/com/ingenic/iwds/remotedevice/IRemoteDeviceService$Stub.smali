.class public abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;
.super Landroid/os/Binder;
.source "IRemoteDeviceService.java"

# interfaces
.implements Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

.field static final TRANSACTION_registerAppListener:I = 0x3

.field static final TRANSACTION_registerProcessListener:I = 0x5

.field static final TRANSACTION_registerSettingListener:I = 0x7

.field static final TRANSACTION_registerStatusListener:I = 0x1

.field static final TRANSACTION_requestClearAllAppDataAndCache:I = 0xf

.field static final TRANSACTION_requestClearAppDataOrCache:I = 0xe

.field static final TRANSACTION_requestDeleteApp:I = 0xc

.field static final TRANSACTION_requestDoSetting:I = 0x13

.field static final TRANSACTION_requestGetAppList:I = 0x9

.field static final TRANSACTION_requestGetSetting:I = 0x14

.field static final TRANSACTION_requestGetStorageInfo:I = 0xa

.field static final TRANSACTION_requestInstallApp:I = 0xb

.field static final TRANSACTION_requestKillProcess:I = 0x12

.field static final TRANSACTION_requestPkgSizeInfo:I = 0xd

.field static final TRANSACTION_requestRunningAppProcessInfo:I = 0x11

.field static final TRANSACTION_requestSystemMemoryInfo:I = 0x10

.field static final TRANSACTION_unregisterAppListener:I = 0x4

.field static final TRANSACTION_unregisterProcessListener:I = 0x6

.field static final TRANSACTION_unregisterSettingListener:I = 0x8

.field static final TRANSACTION_unregisterStatusListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;
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
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->registerStatusListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)Z

    move-result v2

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->unregisterStatusListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v2, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    move-result-object v3

    .line 73
    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->registerAppListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)Z

    move-result v2

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->unregisterAppListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v2, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    move-result-object v3

    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->registerProcessListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)Z

    move-result v2

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 101
    :sswitch_6
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->unregisterProcessListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 110
    :sswitch_7
    const-string v2, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    move-result-object v3

    .line 115
    invoke-virtual {p0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->registerSettingListener(Ljava/lang/String;Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)Z

    move-result v2

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_8
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->unregisterSettingListener(Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    :sswitch_9
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestGetAppList(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    :sswitch_a
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestGetStorageInfo(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    :sswitch_b
    const-string v2, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 156
    :cond_4
    invoke-virtual {p0, v2, v3, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestInstallApp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    :sswitch_c
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestDeleteApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    :sswitch_d
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestPkgSizeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    :sswitch_e
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    invoke-virtual {p0, v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestClearAppDataOrCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    :sswitch_f
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestClearAllAppDataAndCache(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    :sswitch_10
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestSystemMemoryInfo(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 215
    :sswitch_11
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestRunningAppProcessInfo(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    :sswitch_12
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestKillProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    :sswitch_13
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    invoke-virtual {p0, v0, v2, v3}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestDoSetting(Ljava/lang/String;II)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 248
    :sswitch_14
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceService$Stub;->requestGetSetting(Ljava/lang/String;I)V

    .line 254
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
