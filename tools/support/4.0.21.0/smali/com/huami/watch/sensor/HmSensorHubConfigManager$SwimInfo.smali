.class public Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;
.super Ljava/lang/Object;
.source "HmSensorHubConfigManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensor/HmSensorHubConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwimInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvgDistancePerStroke:F

.field public mAvgStrokeSpeed:F

.field public mLapStrokeSpeed:F

.field public mLapStrokes:I

.field public mLapSwolf:I

.field public mMaxStrokeSpeed:F

.field public mRtDistancePerStroke:F

.field public mRtStrokeSpeed:F

.field public mSwolfPerFixedMeters:I

.field public mTotalStrokes:I

.field public mTotalTrips:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 699
    new-instance v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo$1;

    invoke-direct {v0}, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo$1;-><init>()V

    sput-object v0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mSwolfPerFixedMeters:I

    .line 661
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalStrokes:I

    .line 663
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalTrips:I

    .line 665
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtDistancePerStroke:F

    .line 667
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtStrokeSpeed:F

    .line 669
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgStrokeSpeed:F

    .line 671
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mMaxStrokeSpeed:F

    .line 673
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgDistancePerStroke:F

    .line 675
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokes:I

    .line 677
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokeSpeed:F

    .line 679
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapSwolf:I

    .line 683
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mSwolfPerFixedMeters:I

    .line 661
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalStrokes:I

    .line 663
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalTrips:I

    .line 665
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtDistancePerStroke:F

    .line 667
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtStrokeSpeed:F

    .line 669
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgStrokeSpeed:F

    .line 671
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mMaxStrokeSpeed:F

    .line 673
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgDistancePerStroke:F

    .line 675
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokes:I

    .line 677
    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokeSpeed:F

    .line 679
    iput v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapSwolf:I

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mSwolfPerFixedMeters:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalStrokes:I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalTrips:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtDistancePerStroke:F

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtStrokeSpeed:F

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgStrokeSpeed:F

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mMaxStrokeSpeed:F

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgDistancePerStroke:F

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokes:I

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokeSpeed:F

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapSwolf:I

    .line 697
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwimInfo{mSwolfPerFixedMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mSwolfPerFixedMeters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalStrokes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalStrokes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalTrips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalTrips:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRtDistancePerStroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtDistancePerStroke:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRtStrokeSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtStrokeSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvgStrokeSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgStrokeSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxStrokeSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mMaxStrokeSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvgDistancePerStroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgDistancePerStroke:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLapStrokes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLapStrokeSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokeSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLapSwolf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapSwolf:I

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
    .line 718
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mSwolfPerFixedMeters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalStrokes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mTotalTrips:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtDistancePerStroke:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 722
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mRtStrokeSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 723
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgStrokeSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 724
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mMaxStrokeSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 725
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mAvgDistancePerStroke:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 726
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapStrokeSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 728
    iget v0, p0, Lcom/huami/watch/sensor/HmSensorHubConfigManager$SwimInfo;->mLapSwolf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    return-void
.end method
