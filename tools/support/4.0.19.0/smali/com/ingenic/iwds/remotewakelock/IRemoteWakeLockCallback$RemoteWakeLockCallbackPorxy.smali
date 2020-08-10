.class public Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;
.super Ljava/lang/Object;
.source "IRemoteWakeLockCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteWakeLockCallbackPorxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;->a:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public performAcquireResult(IIJ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "resultCode"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public performAvailableChanged(Z)V
    .locals 5
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 111
    const-string v2, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockCallback"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 121
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
