.class final Lcom/ingenic/iwds/smartsense/Sensor$1;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/Sensor;
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
        "Lcom/ingenic/iwds/smartsense/Sensor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/ingenic/iwds/smartsense/Sensor;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/Sensor;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/Sensor;->access$002(Lcom/ingenic/iwds/smartsense/Sensor;I)I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/Sensor;->access$102(Lcom/ingenic/iwds/smartsense/Sensor;F)F

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/Sensor;->access$202(Lcom/ingenic/iwds/smartsense/Sensor;F)F

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartsense/Sensor;->access$302(Lcom/ingenic/iwds/smartsense/Sensor;I)I

    .line 183
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/Sensor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/Sensor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/smartsense/Sensor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 188
    new-array v0, p1, [Lcom/ingenic/iwds/smartsense/Sensor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/Sensor$1;->newArray(I)[Lcom/ingenic/iwds/smartsense/Sensor;

    move-result-object v0

    return-object v0
.end method
