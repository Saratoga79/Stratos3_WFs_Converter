.class public abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteDeviceProcessCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

.field static final TRANSACTION_onDoneKillProcess:I = 0x3

.field static final TRANSACTION_onResponseRunningAppProcessInfo:I = 0x2

.field static final TRANSACTION_onResponseSystemMemoryInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;
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
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 52
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->onResponseSystemMemoryInfo(JJ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 54
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;

    .line 66
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->onResponseRunningAppProcessInfo(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 68
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :sswitch_3
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;->onDoneKillProcess(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 77
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
