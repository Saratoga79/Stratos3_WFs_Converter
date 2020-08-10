.class final Lcom/huami/watch/sensor/HealthSensorHistoryData$1;
.super Ljava/lang/Object;
.source "HealthSensorHistoryData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HealthSensorHistoryData;
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
        "Lcom/huami/watch/sensor/HealthSensorHistoryData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/sensor/HealthSensorHistoryData;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 23
    new-instance v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;

    invoke-direct {v0, p1}, Lcom/huami/watch/sensor/HealthSensorHistoryData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HealthSensorHistoryData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huami/watch/sensor/HealthSensorHistoryData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huami/watch/sensor/HealthSensorHistoryData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 28
    new-array v0, p1, [Lcom/huami/watch/sensor/HealthSensorHistoryData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensor/HealthSensorHistoryData$1;->newArray(I)[Lcom/huami/watch/sensor/HealthSensorHistoryData;

    move-result-object v0

    return-object v0
.end method
