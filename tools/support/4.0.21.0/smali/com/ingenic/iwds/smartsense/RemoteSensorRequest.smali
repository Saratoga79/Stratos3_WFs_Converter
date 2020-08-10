.class public Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
.super Ljava/lang/Object;
.source "RemoteSensorRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_REGISTER_LISTENER:I = 0x1

.field public static final TYPE_SENSOR_LIST:I = 0x0

.field public static final TYPE_UNREGISTER_LISTENER:I = 0x2


# instance fields
.field private sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field public sensor:Lcom/ingenic/iwds/smartsense/Sensor;

.field public sensorRate:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static obtain()Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;-><init>()V

    return-object v0
.end method

.method public static obtain(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
    .locals 1
    .param p0, "sender"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 45
    invoke-static {}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->obtain()Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    move-result-object v0

    .line 47
    iput-object p0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 49
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getSender()Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method public sendToRemote()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setSender(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0
    .param p1, "sender"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
