.class public abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteDeviceAppCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

.field static final TRANSACTION_onDoneDeleteApp:I = 0x5

.field static final TRANSACTION_onDoneInstallApp:I = 0x4

.field static final TRANSACTION_onRemoteAppInfoListAvailable:I = 0x1

.field static final TRANSACTION_onRemoteStorageInfoAvailable:I = 0x2

.field static final TRANSACTION_onResponseClearAllAppDataAndCache:I = 0x8

.field static final TRANSACTION_onResponseClearAppDataOrCache:I = 0x7

.field static final TRANSACTION_onResponsePkgSizeInfo:I = 0x6

.field static final TRANSACTION_onSendFileProgressForInstall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;
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
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onRemoteAppInfoListAvailable(Lcom/ingenic/iwds/remotedevice/RemoteApplicationInfoList;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v1, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    sget-object v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onRemoteStorageInfoAvailable(Lcom/ingenic/iwds/remotedevice/RemoteStorageInfo;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 71
    goto :goto_0

    .line 75
    :sswitch_3
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onSendFileProgressForInstall(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 82
    goto :goto_0

    .line 86
    :sswitch_4
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onDoneInstallApp(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 93
    goto :goto_0

    .line 97
    :sswitch_5
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onDoneDeleteApp(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 104
    goto :goto_0

    .line 108
    :sswitch_6
    const-string v1, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    sget-object v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemotePackageStats;

    .line 117
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onResponsePkgSizeInfo(Lcom/ingenic/iwds/remotedevice/RemotePackageStats;I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 120
    goto/16 :goto_0

    .line 124
    :sswitch_7
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    invoke-virtual {p0, v0, v1, v2}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onResponseClearAppDataOrCache(Ljava/lang/String;II)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 133
    goto/16 :goto_0

    .line 137
    :sswitch_8
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceAppCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceAppCallback$Stub;->onResponseClearAllAppDataAndCache(IILjava/lang/String;II)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 150
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
