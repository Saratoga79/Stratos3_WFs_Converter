.class Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConfigFinishDispatcher.java"

# interfaces
.implements Lcom/huami/watch/sensor/IConfigFinishDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dispatchConfigFinish(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.huami.watch.sensor.IConfigFinishDispatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "com.huami.watch.sensor.IConfigFinishDispatcher"

    return-object v0
.end method
