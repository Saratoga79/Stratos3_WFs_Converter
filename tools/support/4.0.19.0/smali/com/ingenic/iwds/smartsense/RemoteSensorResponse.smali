.class public Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
.super Ljava/lang/Object;
.source "RemoteSensorResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_SENSEOR_SERVICE_CONNECTED:I = 0x1

.field public static final TYPE_SENSOR_ACCURACY_CHANGED:I = 0x3

.field public static final TYPE_SENSOR_CHANGED:I = 0x2

.field public static final TYPE_SENSOR_LIST:I


# instance fields
.field public accuracy:I

.field public result:I

.field private sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

.field public sensor:Lcom/ingenic/iwds/smartsense/Sensor;

.field public sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

.field public sensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse$1;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse$1;-><init>()V

    sput-object v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static obtain()Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;-><init>()V

    return-object v0
.end method

.method public static obtain(Lcom/ingenic/iwds/datatransactor/DataTransactor;)Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
    .locals 1
    .param p0, "sender"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 52
    invoke-static {}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->obtain()Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    move-result-object v0

    .line 54
    iput-object p0, v0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 56
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getSender()Lcom/ingenic/iwds/datatransactor/DataTransactor;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    return-object v0
.end method

.method public sendToRemote()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setSender(Lcom/ingenic/iwds/datatransactor/DataTransactor;)V
    .locals 0
    .param p1, "sender"    # Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sender:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    iget v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->accuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 102
    :goto_2
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
