.class public Lcom/huami/watch/sensor/SensorDataInfo;
.super Ljava/lang/Object;
.source "SensorDataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/sensor/SensorDataInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFloorCount:I

.field mHeartRate:I

.field mQuality:I

.field mSportCalories:F

.field mU4HeartRate:I

.field mU4Step:I

.field mU4Vercode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/huami/watch/sensor/SensorDataInfo$1;

    invoke-direct {v0}, Lcom/huami/watch/sensor/SensorDataInfo$1;-><init>()V

    sput-object v0, Lcom/huami/watch/sensor/SensorDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/huami/watch/sensor/SensorDataInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Vercode:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Step:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4HeartRate:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mSportCalories:F

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mHeartRate:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mQuality:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mFloorCount:I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getFloorCount()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mFloorCount:I

    return v0
.end method

.method public getHeartRate()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mHeartRate:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mQuality:I

    return v0
.end method

.method public getSportCalories()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mSportCalories:F

    return v0
.end method

.method public getU4HeartRate()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4HeartRate:I

    return v0
.end method

.method public getU4Step()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Step:I

    return v0
.end method

.method public getU4Vercode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Vercode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorDataInfo{mU4Vercode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Vercode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mU4Step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mU4HeartRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4HeartRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSportCalories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mSportCalories:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeartRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mHeartRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFloorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mFloorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Vercode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4Step:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mU4HeartRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mSportCalories:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mHeartRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/huami/watch/sensor/SensorDataInfo;->mFloorCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
