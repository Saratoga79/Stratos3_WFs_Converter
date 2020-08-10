.class final Lcom/ingenic/iwds/smartsense/RemoteSensorResponse$1;
.super Ljava/lang/Object;
.source "RemoteSensorResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 108
    new-instance v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    invoke-direct {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->type:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->result:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->accuracy:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-class v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-class v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/SensorEvent;

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorEvent:Lcom/ingenic/iwds/smartsense/SensorEvent;

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-class v0, Lcom/ingenic/iwds/smartsense/Sensor;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;->sensorList:Ljava/util/ArrayList;

    .line 129
    :cond_2
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 134
    new-array v0, p1, [Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorResponse$1;->newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteSensorResponse;

    move-result-object v0

    return-object v0
.end method
