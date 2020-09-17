.class public abstract Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;
.super Landroid/os/Binder;
.source "ISensorEventCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/smartsense/ISensorEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/ISensorEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ingenic.iwds.smartsense.ISensorEventCallback"

.field static final TRANSACTION_onAccuracyChanged:I = 0x2

.field static final TRANSACTION_onSensorChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.smartsense.ISensorEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartsense/ISensorEventCallback;
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
    const-string v0, "com.ingenic.iwds.smartsense.ISensorEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.ingenic.iwds.smartsense.ISensorEventCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.ingenic.iwds.smartsense.ISensorEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v0, Lcom/ingenic/iwds/smartsense/SensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;->onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "com.ingenic.iwds.smartsense.ISensorEventCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    sget-object v0, Lcom/ingenic/iwds/smartsense/Sensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;->onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 73
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method