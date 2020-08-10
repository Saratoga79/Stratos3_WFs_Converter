.class final Lcom/ingenic/iwds/smartsense/RemoteSensorRequest$1;
.super Ljava/lang/Object;
.source "RemoteSensorRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
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
        "Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    invoke-direct {v1}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->type:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensorRate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-class v0, Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/smartsense/Sensor;

    iput-object v0, v1, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;->sensor:Lcom/ingenic/iwds/smartsense/Sensor;

    .line 94
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/RemoteSensorRequest$1;->newArray(I)[Lcom/ingenic/iwds/smartsense/RemoteSensorRequest;

    move-result-object v0

    return-object v0
.end method
