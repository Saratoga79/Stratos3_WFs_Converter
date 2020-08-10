.class Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteDeviceStatusCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "com.ingenic.iwds.remotedevice.IRemoteDeviceStatusCallback"

    return-object v0
.end method

.method public onRemoteDeviceReady(Z)V
    .locals 5
    .param p1, "isReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 77
    :try_start_0
    const-string v4, "com.ingenic.iwds.remotedevice.IRemoteDeviceStatusCallback"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
