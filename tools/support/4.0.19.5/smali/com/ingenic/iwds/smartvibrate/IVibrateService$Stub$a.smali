.class Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;
.super Ljava/lang/Object;
.source "IVibrateService.java"

# interfaces
.implements Lcom/ingenic/iwds/smartvibrate/IVibrateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;->a:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public Drv2605Vibrate([I)I
    .locals 5
    .param p1, "effect"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 80
    :try_start_0
    const-string v0, "com.ingenic.iwds.smartvibrate.IVibrateService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    return v0

    .line 88
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
