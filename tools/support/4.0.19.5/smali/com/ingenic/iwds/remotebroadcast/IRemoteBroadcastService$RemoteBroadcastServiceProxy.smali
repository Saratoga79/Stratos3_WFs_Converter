.class public Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;
.super Ljava/lang/Object;
.source "IRemoteBroadcastService.java"

# interfaces
.implements Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteBroadcastServiceProxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I
    .locals 5
    .param p1, "callback"    # Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 134
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 144
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 147
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public registerRemoteReceiver(IILandroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "requestPermission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 168
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    if-eqz p3, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p3, v1, v2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    :goto_0
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 176
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendRemoteBroadcast(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "perm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 209
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    return-void

    .line 216
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public unregisterRemoteBroadcastCallback(I)V
    .locals 5
    .param p1, "callerId"    # I

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterRemoteReceiver(II)V
    .locals 5
    .param p1, "callerId"    # I
    .param p2, "id"    # I

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
