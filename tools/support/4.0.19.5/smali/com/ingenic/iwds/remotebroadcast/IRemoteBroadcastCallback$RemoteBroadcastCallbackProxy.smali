.class public Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;
.super Ljava/lang/Object;
.source "IRemoteBroadcastCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteBroadcastCallbackProxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;->a:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public performReceive(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    if-eqz p2, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 131
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public performSendResult(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "resultCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_0
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    return-void

    .line 107
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
