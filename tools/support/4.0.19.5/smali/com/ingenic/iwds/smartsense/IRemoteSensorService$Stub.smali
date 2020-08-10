.class public abstract Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;
.super Landroid/os/Binder;
.source "IRemoteSensorService.java"

# interfaces
.implements Lcom/ingenic/iwds/smartsense/IRemoteSensorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/IRemoteSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.smartsense.IRemoteSensorService"

.field static final TRANSACTION_getDefaultSensor:I = 0x4

.field static final TRANSACTION_getSensorList:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x5

.field static final TRANSACTION_registerRemoteSensorListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x6

.field static final TRANSACTION_unregisterRemoteSensorListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/IRemoteSensorService;
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
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v0, v3}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->registerRemoteSensorListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;)Z

    move-result v0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 59
    :sswitch_2
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->unregisterRemoteSensorListener(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->getSensorList()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->getDefaultSensor(I)Lcom/ingenic/iwds/smartsense/Sensor;

    move-result-object v0

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v0, p3, v1}, Lcom/ingenic/iwds/smartsense/Sensor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    :sswitch_5
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;

    move-result-object v4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    sget-object v0, Lcom/ingenic/iwds/smartsense/Sensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 105
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->registerListener(Ljava/lang/String;Lcom/ingenic/iwds/smartsense/IRemoteSensorEventCallback;Lcom/ingenic/iwds/smartsense/Sensor;I)Z

    move-result v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 113
    :sswitch_6
    const-string v0, "com.ingenic.iwds.smartsense.IRemoteSensorService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/smartsense/IRemoteSensorService$Stub;->unregisterListener(Ljava/lang/String;)V

    .line 117
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
