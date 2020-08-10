.class public abstract Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;
.super Landroid/os/Binder;
.source "IRemoteWakeLockService.java"

# interfaces
.implements Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;

    .line 41
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    const/4 v0, 0x1

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I

    move-result v1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->unregisterRemoteWakeLockCallback(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->newRemoteWakeLock(IIILjava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    invoke-virtual {p0, v1, v2}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->destroyRemoteWakeLock(II)V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 103
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->acquireWakeLock(IIJ)V

    goto :goto_0

    .line 108
    :pswitch_5
    const-string v1, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    invoke-virtual {p0, v1, v2}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;->releaseWakeLock(II)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
