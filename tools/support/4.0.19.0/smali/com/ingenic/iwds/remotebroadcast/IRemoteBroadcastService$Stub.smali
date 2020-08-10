.class public abstract Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;
.super Landroid/os/Binder;
.source "IRemoteBroadcastService.java"

# interfaces
.implements Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;
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

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;

    .line 40
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I

    move-result v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 66
    :pswitch_1
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->unregisterRemoteBroadcastCallback(I)V

    move v0, v1

    .line 69
    goto :goto_0

    .line 73
    :pswitch_2
    const-string v2, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->registerRemoteReceiver(IILandroid/content/IntentFilter;Ljava/lang/String;)V

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :pswitch_3
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    invoke-virtual {p0, v0, v2}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->unregisterRemoteReceiver(II)V

    move v0, v1

    .line 93
    goto :goto_0

    .line 97
    :pswitch_4
    const-string v2, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 105
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p0, v2, v0, v3}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;->sendRemoteBroadcast(ILandroid/content/Intent;Ljava/lang/String;)V

    move v0, v1

    .line 107
    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
