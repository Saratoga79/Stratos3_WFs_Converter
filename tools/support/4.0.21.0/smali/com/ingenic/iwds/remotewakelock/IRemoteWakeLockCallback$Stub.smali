.class public abstract Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteWakeLockCallback.java"

# interfaces
.implements Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;
    .locals 1
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockCallback"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;

    .line 37
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 46
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
    const/4 v1, 0x1

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 54
    :pswitch_0
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;->performAcquireResult(IIJ)V

    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "com.ingenic.iwds.remotewakelock.IRemoteWakeLockCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 67
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;->performAvailableChanged(Z)V

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
