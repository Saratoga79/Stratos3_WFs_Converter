.class public Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;
.super Ljava/lang/Object;
.source "IRemoteWakeLockService.java"

# interfaces
.implements Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteWakeLockProxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public acquireWakeLock(IIJ)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 210
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public destroyRemoteWakeLock(II)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 194
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public newRemoteWakeLock(IIILjava/lang/String;)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "levelAndFlags"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 175
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I
    .locals 5
    .param p1, "callback"    # Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 140
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 150
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public releaseWakeLock(II)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterRemoteWakeLockCallback(I)V
    .locals 5
    .param p1, "callerId"    # I

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
