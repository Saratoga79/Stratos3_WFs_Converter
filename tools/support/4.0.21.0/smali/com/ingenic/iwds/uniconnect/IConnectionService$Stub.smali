.class public abstract Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/ingenic/iwds/uniconnect/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/uniconnect/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/uniconnect/IConnectionService;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lcom/ingenic/iwds/uniconnect/IConnectionService;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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

    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 66
    goto :goto_0

    .line 70
    :sswitch_1
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/IConnectionCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;->createConnection(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/IConnection;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    .line 82
    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :sswitch_2
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;->getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v1

    .line 94
    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
