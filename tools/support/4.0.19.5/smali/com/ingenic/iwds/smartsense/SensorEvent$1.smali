.class final Lcom/ingenic/iwds/smartsense/SensorEvent$1;
.super Ljava/lang/Object;
.source "SensorEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/smartsense/SensorEvent;
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
        "Lcom/ingenic/iwds/smartsense/SensorEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/SensorEvent;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    new-instance v2, Lcom/ingenic/iwds/smartsense/SensorEvent;

    invoke-direct {v2, v1}, Lcom/ingenic/iwds/smartsense/SensorEvent;-><init>(I)V

    .line 274
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    iget-object v3, v2, Lcom/ingenic/iwds/smartsense/SensorEvent;->values:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Lcom/ingenic/iwds/smartsense/SensorEvent;->accuracy:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v2, Lcom/ingenic/iwds/smartsense/SensorEvent;->sensorType:I

    .line 280
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/SensorEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ingenic/iwds/smartsense/SensorEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ingenic/iwds/smartsense/SensorEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 285
    new-array v0, p1, [Lcom/ingenic/iwds/smartsense/SensorEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/smartsense/SensorEvent$1;->newArray(I)[Lcom/ingenic/iwds/smartsense/SensorEvent;

    move-result-object v0

    return-object v0
.end method
