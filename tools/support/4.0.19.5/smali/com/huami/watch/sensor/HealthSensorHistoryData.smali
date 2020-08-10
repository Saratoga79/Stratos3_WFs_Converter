.class public Lcom/huami/watch/sensor/HealthSensorHistoryData;
.super Ljava/lang/Object;
.source "HealthSensorHistoryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/sensor/HealthSensorHistoryData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HealthSensorHistoryData"


# instance fields
.field public data:[B

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/huami/watch/sensor/HealthSensorHistoryData$1;

    invoke-direct {v0}, Lcom/huami/watch/sensor/HealthSensorHistoryData$1;-><init>()V

    sput-object v0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "id2"    # I
    .param p2, "data2"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    .line 37
    iput p1, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    .line 38
    iput-object p2, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    .line 33
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/HealthSensorHistoryData;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 61
    const-string v1, "HealthSensorHistoryData"

    const-string v2, "no bytes in return of parcel"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    .line 66
    iget-object v1, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    if-nez v0, :cond_0

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/huami/watch/sensor/HealthSensorHistoryData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
