.class Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;
.super Ljava/lang/Object;
.source "IConnectionService.java"

# interfaces
.implements Lcom/ingenic/iwds/uniconnect/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;->a:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public createConnection(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/IConnection;
    .locals 5
    .param p1, "callback"    # Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 125
    :try_start_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 127
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 135
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/uniconnect/IConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 140
    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 151
    :try_start_0
    const-string v0, "com.ingenic.iwds.uniconnect.IConnectionService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 158
    sget-object v0, Lcom/ingenic/iwds/DeviceDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ingenic/iwds/DeviceDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
