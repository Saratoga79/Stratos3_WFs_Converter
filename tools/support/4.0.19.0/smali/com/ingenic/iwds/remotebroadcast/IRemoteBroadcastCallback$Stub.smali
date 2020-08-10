.class public abstract Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteBroadcastCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const-string v0, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastCallback"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;

    .line 37
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    const-string v2, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    invoke-virtual {p0, v0, v2, v3}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;->performSendResult(Landroid/content/Intent;Ljava/lang/String;I)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 66
    :pswitch_1
    const-string v2, "com.ingenic.iwds.remotebroadcast.IRemoteBroadcastCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 74
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;->performReceive(ILandroid/content/Intent;)V

    move v0, v1

    .line 75
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
