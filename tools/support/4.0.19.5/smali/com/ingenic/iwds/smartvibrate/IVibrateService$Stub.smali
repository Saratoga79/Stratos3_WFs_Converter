.class public abstract Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;
.super Landroid/os/Binder;
.source "IVibrateService.java"

# interfaces
.implements Lcom/ingenic/iwds/smartvibrate/IVibrateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartvibrate/IVibrateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ingenic.iwds.smartvibrate.IVibrateService"

    invoke-virtual {p0, p0, v0}, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.ingenic.iwds.smartvibrate.IVibrateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.ingenic.iwds.smartvibrate.IVibrateService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.ingenic.iwds.smartvibrate.IVibrateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;->Drv2605Vibrate([I)I

    move-result v2

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method