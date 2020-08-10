.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportStatistics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;


# instance fields
.field private bitField0_:I

.field private mAgpsWriteTimestamp_:J

.field private mCurSportGpsStatus_:I

.field private mCurSportStatus_:I

.field private mCurSportType_:I

.field private mCurrentSportId_:I

.field public mGPSLonLatPoint:[J

.field private mOnWristVerifiedState_:I

.field public mOutStepModel:[I

.field public mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

.field public mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field private mReminder_:I

.field public mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

.field public mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field public mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

.field public mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field public mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field private mSportCurSubStartTimestamp_:J

.field private mSportElapsedTime_:F

.field private mSportEndTimestamp_:J

.field public mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

.field public mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field private mSportKiloNum_:I

.field public mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field private mSportLapNum_:I

.field public mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field public mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field public mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field private mSportMileNum_:I

.field public mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

.field public mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

.field private mSportStartTimestamp_:J

.field public mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

.field public mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

.field public mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

.field public mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

.field public mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field private mTodayFloorCount_:I

.field public mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field public mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

.field private mWatchOnWristState_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6687
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 6688
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    .line 6689
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 2

    .prologue
    .line 6277
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    if-nez v0, :cond_1

    .line 6278
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6280
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    if-nez v0, :cond_0

    .line 6281
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    .line 6283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6285
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    return-object v0

    .line 6283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7604
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7598
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6692
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6693
    iput-wide v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    .line 6694
    iput-wide v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    .line 6695
    iput-wide v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    .line 6696
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    .line 6697
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    .line 6698
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    .line 6699
    iput v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    .line 6700
    iput v3, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    .line 6701
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6702
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6703
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6704
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6705
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6706
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6707
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6708
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6709
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6710
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    .line 6711
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6712
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6713
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    .line 6714
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6715
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6716
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    .line 6717
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6718
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6719
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6720
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6721
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 6722
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6723
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    .line 6724
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    .line 6725
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    .line 6726
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    .line 6727
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    .line 6728
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 6729
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    .line 6730
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    .line 6731
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    .line 6732
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    .line 6733
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    .line 6734
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    .line 6735
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    .line 6736
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    .line 6737
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    .line 6738
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    .line 6739
    iput-wide v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    .line 6740
    iput-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6741
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->cachedSize:I

    .line 6742
    return-object p0
.end method

.method public clearMAgpsWriteTimestamp()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 2

    .prologue
    .line 6682
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    .line 6683
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6684
    return-object p0
.end method

.method public clearMCurSportGpsStatus()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6437
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    .line 6438
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6439
    return-object p0
.end method

.method public clearMCurSportStatus()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6418
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    .line 6419
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6420
    return-object p0
.end method

.method public clearMCurSportType()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6399
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    .line 6400
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6401
    return-object p0
.end method

.method public clearMCurrentSportId()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6663
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    .line 6664
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6665
    return-object p0
.end method

.method public clearMOnWristVerifiedState()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6644
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    .line 6645
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6646
    return-object p0
.end method

.method public clearMReminder()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6380
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    .line 6381
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6382
    return-object p0
.end method

.method public clearMSportCurSubStartTimestamp()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 2

    .prologue
    .line 6342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    .line 6343
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6344
    return-object p0
.end method

.method public clearMSportElapsedTime()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6361
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    .line 6362
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6363
    return-object p0
.end method

.method public clearMSportEndTimestamp()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 2

    .prologue
    .line 6323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    .line 6324
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6325
    return-object p0
.end method

.method public clearMSportKiloNum()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6508
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    .line 6509
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6510
    return-object p0
.end method

.method public clearMSportLapNum()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6483
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    .line 6484
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6485
    return-object p0
.end method

.method public clearMSportMileNum()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6533
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    .line 6534
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6535
    return-object p0
.end method

.method public clearMSportStartTimestamp()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 2

    .prologue
    .line 6304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    .line 6305
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6306
    return-object p0
.end method

.method public clearMTodayFloorCount()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6576
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    .line 6577
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6578
    return-object p0
.end method

.method public clearMWatchOnWristState()Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1

    .prologue
    .line 6625
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    .line 6626
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6627
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 6898
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v4

    .line 6899
    .local v4, "size":I
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6900
    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 6903
    :cond_0
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 6904
    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 6907
    :cond_1
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 6908
    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 6911
    :cond_2
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 6912
    const/4 v5, 0x4

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 6915
    :cond_3
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 6916
    const/4 v5, 0x5

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6919
    :cond_4
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 6920
    const/4 v5, 0x6

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6923
    :cond_5
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 6924
    const/4 v5, 0x7

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6927
    :cond_6
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 6928
    const/16 v5, 0x8

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6931
    :cond_7
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_8

    .line 6932
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6935
    :cond_8
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_9

    .line 6936
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6939
    :cond_9
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_a

    .line 6940
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6943
    :cond_a
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_b

    .line 6944
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6947
    :cond_b
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_c

    .line 6948
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6951
    :cond_c
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_d

    .line 6952
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6955
    :cond_d
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_e

    .line 6956
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6959
    :cond_e
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_f

    .line 6960
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6963
    :cond_f
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_10

    .line 6964
    const/16 v5, 0x11

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6967
    :cond_10
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_11

    .line 6968
    const/16 v5, 0x12

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6971
    :cond_11
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_12

    .line 6972
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6975
    :cond_12
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_13

    .line 6976
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6979
    :cond_13
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_14

    .line 6980
    const/16 v5, 0x15

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6983
    :cond_14
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_15

    .line 6984
    const/16 v5, 0x16

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6987
    :cond_15
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_16

    .line 6988
    const/16 v5, 0x17

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6991
    :cond_16
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_17

    .line 6992
    const/16 v5, 0x18

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 6995
    :cond_17
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_18

    .line 6996
    const/16 v5, 0x19

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 6999
    :cond_18
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_19

    .line 7000
    const/16 v5, 0x1a

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7003
    :cond_19
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_1a

    .line 7004
    const/16 v5, 0x1b

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7007
    :cond_1a
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_1b

    .line 7008
    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7011
    :cond_1b
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v5, :cond_1c

    .line 7012
    const/16 v5, 0x1d

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7015
    :cond_1c
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_1d

    .line 7016
    const/16 v5, 0x1e

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7019
    :cond_1d
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    if-eqz v5, :cond_1e

    .line 7020
    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7023
    :cond_1e
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v5, v5

    if-lez v5, :cond_20

    .line 7024
    const/4 v0, 0x0

    .line 7025
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1f

    .line 7026
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    aget v2, v5, v1

    .line 7027
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 7025
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7030
    .end local v2    # "element":I
    :cond_1f
    add-int/2addr v4, v0

    .line 7031
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 7033
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_20
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_21

    .line 7034
    const/16 v5, 0x21

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7037
    :cond_21
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    if-eqz v5, :cond_22

    .line 7038
    const/16 v5, 0x22

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7041
    :cond_22
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    if-eqz v5, :cond_23

    .line 7042
    const/16 v5, 0x23

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7045
    :cond_23
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v5, :cond_24

    .line 7046
    const/16 v5, 0x24

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7049
    :cond_24
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    if-eqz v5, :cond_25

    .line 7050
    const/16 v5, 0x25

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7053
    :cond_25
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    if-eqz v5, :cond_26

    .line 7054
    const/16 v5, 0x26

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7057
    :cond_26
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    if-eqz v5, :cond_27

    .line 7058
    const/16 v5, 0x27

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7061
    :cond_27
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v5, v5

    if-lez v5, :cond_29

    .line 7062
    const/4 v0, 0x0

    .line 7063
    .restart local v0    # "dataSize":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v5, v5

    if-ge v1, v5, :cond_28

    .line 7064
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    aget-wide v2, v5, v1

    .line 7065
    .local v2, "element":J
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    .line 7063
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7068
    .end local v2    # "element":J
    :cond_28
    add-int/2addr v4, v0

    .line 7069
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 7071
    .end local v0    # "dataSize":I
    .end local v1    # "i":I
    :cond_29
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    if-eqz v5, :cond_2a

    .line 7072
    const/16 v5, 0x29

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7075
    :cond_2a
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    if-eqz v5, :cond_2b

    .line 7076
    const/16 v5, 0x2a

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7079
    :cond_2b
    iget-object v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    if-eqz v5, :cond_2c

    .line 7080
    const/16 v5, 0x2b

    iget-object v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 7083
    :cond_2c
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_2d

    .line 7084
    const/16 v5, 0x2c

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7087
    :cond_2d
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_2e

    .line 7088
    const/16 v5, 0x2d

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7091
    :cond_2e
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_2f

    .line 7092
    const/16 v5, 0x2e

    iget v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 7095
    :cond_2f
    iget v5, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_30

    .line 7096
    const/16 v5, 0x2f

    iget-wide v6, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 7099
    :cond_30
    return v4
.end method

.method public getMAgpsWriteTimestamp()J
    .locals 2

    .prologue
    .line 6671
    iget-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    return-wide v0
.end method

.method public getMCurSportGpsStatus()I
    .locals 1

    .prologue
    .line 6426
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    return v0
.end method

.method public getMCurSportStatus()I
    .locals 1

    .prologue
    .line 6407
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    return v0
.end method

.method public getMCurSportType()I
    .locals 1

    .prologue
    .line 6388
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    return v0
.end method

.method public getMCurrentSportId()I
    .locals 1

    .prologue
    .line 6652
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    return v0
.end method

.method public getMOnWristVerifiedState()I
    .locals 1

    .prologue
    .line 6633
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    return v0
.end method

.method public getMReminder()I
    .locals 1

    .prologue
    .line 6369
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    return v0
.end method

.method public getMSportCurSubStartTimestamp()J
    .locals 2

    .prologue
    .line 6331
    iget-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    return-wide v0
.end method

.method public getMSportElapsedTime()F
    .locals 1

    .prologue
    .line 6350
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    return v0
.end method

.method public getMSportEndTimestamp()J
    .locals 2

    .prologue
    .line 6312
    iget-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    return-wide v0
.end method

.method public getMSportKiloNum()I
    .locals 1

    .prologue
    .line 6497
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    return v0
.end method

.method public getMSportLapNum()I
    .locals 1

    .prologue
    .line 6472
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    return v0
.end method

.method public getMSportMileNum()I
    .locals 1

    .prologue
    .line 6522
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    return v0
.end method

.method public getMSportStartTimestamp()J
    .locals 2

    .prologue
    .line 6293
    iget-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    return-wide v0
.end method

.method public getMTodayFloorCount()I
    .locals 1

    .prologue
    .line 6565
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    return v0
.end method

.method public getMWatchOnWristState()I
    .locals 1

    .prologue
    .line 6614
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    return v0
.end method

.method public hasMAgpsWriteTimestamp()Z
    .locals 2

    .prologue
    .line 6679
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCurSportGpsStatus()Z
    .locals 1

    .prologue
    .line 6434
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCurSportStatus()Z
    .locals 1

    .prologue
    .line 6415
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCurSportType()Z
    .locals 1

    .prologue
    .line 6396
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCurrentSportId()Z
    .locals 1

    .prologue
    .line 6660
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMOnWristVerifiedState()Z
    .locals 1

    .prologue
    .line 6641
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMReminder()Z
    .locals 1

    .prologue
    .line 6377
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportCurSubStartTimestamp()Z
    .locals 1

    .prologue
    .line 6339
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportElapsedTime()Z
    .locals 1

    .prologue
    .line 6358
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportEndTimestamp()Z
    .locals 1

    .prologue
    .line 6320
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportKiloNum()Z
    .locals 1

    .prologue
    .line 6505
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportLapNum()Z
    .locals 1

    .prologue
    .line 6480
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportMileNum()Z
    .locals 1

    .prologue
    .line 6530
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportStartTimestamp()Z
    .locals 1

    .prologue
    .line 6301
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTodayFloorCount()Z
    .locals 1

    .prologue
    .line 6573
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMWatchOnWristState()Z
    .locals 1

    .prologue
    .line 6622
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6271
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 12
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 7107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 7108
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 7112
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7113
    :sswitch_0
    return-object p0

    .line 7118
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    .line 7119
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7123
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    .line 7124
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7128
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    .line 7129
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7133
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    .line 7134
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7138
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    .line 7139
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7143
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 7144
    .local v7, "value":I
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 7235
    :pswitch_1
    iput v7, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    .line 7236
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7242
    .end local v7    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 7243
    .restart local v7    # "value":I
    sparse-switch v7, :sswitch_data_1

    goto :goto_0

    .line 7249
    :sswitch_8
    iput v7, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    .line 7250
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto :goto_0

    .line 7256
    .end local v7    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 7257
    .restart local v7    # "value":I
    sparse-switch v7, :sswitch_data_2

    goto :goto_0

    .line 7263
    :sswitch_a
    iput v7, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    .line 7264
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x80

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7270
    .end local v7    # "value":I
    :sswitch_b
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_1

    .line 7271
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7273
    :cond_1
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7277
    :sswitch_c
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_2

    .line 7278
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7280
    :cond_2
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7284
    :sswitch_d
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_3

    .line 7285
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7287
    :cond_3
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7291
    :sswitch_e
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_4

    .line 7292
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7294
    :cond_4
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7298
    :sswitch_f
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_5

    .line 7299
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7301
    :cond_5
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7305
    :sswitch_10
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_6

    .line 7306
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7308
    :cond_6
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7312
    :sswitch_11
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_7

    .line 7313
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7315
    :cond_7
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7319
    :sswitch_12
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_8

    .line 7320
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7322
    :cond_8
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7326
    :sswitch_13
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_9

    .line 7327
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7329
    :cond_9
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7333
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    .line 7334
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7338
    :sswitch_15
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_a

    .line 7339
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7341
    :cond_a
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7345
    :sswitch_16
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_b

    .line 7346
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7348
    :cond_b
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7352
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    .line 7353
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x200

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7357
    :sswitch_18
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_c

    .line 7358
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7360
    :cond_c
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7364
    :sswitch_19
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_d

    .line 7365
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7367
    :cond_d
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7371
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    .line 7372
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x400

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7376
    :sswitch_1b
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_e

    .line 7377
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7379
    :cond_e
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7383
    :sswitch_1c
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_f

    .line 7384
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7386
    :cond_f
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7390
    :sswitch_1d
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_10

    .line 7391
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7393
    :cond_10
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7397
    :sswitch_1e
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_11

    .line 7398
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7400
    :cond_11
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7404
    :sswitch_1f
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v9, :cond_12

    .line 7405
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 7407
    :cond_12
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7411
    :sswitch_20
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_13

    .line 7412
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7414
    :cond_13
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7418
    :sswitch_21
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    if-nez v9, :cond_14

    .line 7419
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    .line 7421
    :cond_14
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7425
    :sswitch_22
    const/16 v9, 0x100

    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7427
    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    if-nez v9, :cond_16

    move v1, v8

    .line 7428
    .local v1, "i":I
    :goto_1
    add-int v9, v1, v0

    new-array v4, v9, [I

    .line 7429
    .local v4, "newArray":[I
    if-eqz v1, :cond_15

    .line 7430
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7432
    :cond_15
    :goto_2
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_17

    .line 7433
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 7434
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7432
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7427
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_16
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v1, v9

    goto :goto_1

    .line 7437
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 7438
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    goto/16 :goto_0

    .line 7442
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 7443
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 7445
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 7446
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 7447
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_18

    .line 7448
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 7449
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7451
    :cond_18
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7452
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    if-nez v9, :cond_1a

    move v1, v8

    .line 7453
    .restart local v1    # "i":I
    :goto_4
    add-int v9, v1, v0

    new-array v4, v9, [I

    .line 7454
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_19

    .line 7455
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7457
    :cond_19
    :goto_5
    array-length v9, v4

    if-ge v1, v9, :cond_1b

    .line 7458
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 7457
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7452
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_1a
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v1, v9

    goto :goto_4

    .line 7460
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_1b
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    .line 7461
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 7465
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    .line 7466
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x800

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7470
    :sswitch_25
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    if-nez v9, :cond_1c

    .line 7471
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    .line 7473
    :cond_1c
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7477
    :sswitch_26
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    if-nez v9, :cond_1d

    .line 7478
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    .line 7480
    :cond_1d
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7484
    :sswitch_27
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v9, :cond_1e

    .line 7485
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 7487
    :cond_1e
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7491
    :sswitch_28
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    if-nez v9, :cond_1f

    .line 7492
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    .line 7494
    :cond_1f
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7498
    :sswitch_29
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    if-nez v9, :cond_20

    .line 7499
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    .line 7501
    :cond_20
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7505
    :sswitch_2a
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    if-nez v9, :cond_21

    .line 7506
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    .line 7508
    :cond_21
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7512
    :sswitch_2b
    const/16 v9, 0x140

    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7514
    .restart local v0    # "arrayLength":I
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    if-nez v9, :cond_23

    move v1, v8

    .line 7515
    .restart local v1    # "i":I
    :goto_6
    add-int v9, v1, v0

    new-array v4, v9, [J

    .line 7516
    .local v4, "newArray":[J
    if-eqz v1, :cond_22

    .line 7517
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 7519
    :cond_22
    :goto_7
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_24

    .line 7520
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v10

    aput-wide v10, v4, v1

    .line 7521
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7519
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7514
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_23
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v1, v9

    goto :goto_6

    .line 7524
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v10

    aput-wide v10, v4, v1

    .line 7525
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    goto/16 :goto_0

    .line 7529
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 7530
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 7532
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 7533
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 7534
    .restart local v5    # "startPos":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_25

    .line 7535
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 7536
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7538
    :cond_25
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7539
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    if-nez v9, :cond_27

    move v1, v8

    .line 7540
    .restart local v1    # "i":I
    :goto_9
    add-int v9, v1, v0

    new-array v4, v9, [J

    .line 7541
    .restart local v4    # "newArray":[J
    if-eqz v1, :cond_26

    .line 7542
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 7544
    :cond_26
    :goto_a
    array-length v9, v4

    if-ge v1, v9, :cond_28

    .line 7545
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v10

    aput-wide v10, v4, v1

    .line 7544
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 7539
    .end local v1    # "i":I
    .end local v4    # "newArray":[J
    :cond_27
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v1, v9

    goto :goto_9

    .line 7547
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[J
    :cond_28
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    .line 7548
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 7552
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[J
    .end local v5    # "startPos":I
    :sswitch_2d
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    if-nez v9, :cond_29

    .line 7553
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    .line 7555
    :cond_29
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7559
    :sswitch_2e
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    if-nez v9, :cond_2a

    .line 7560
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    .line 7562
    :cond_2a
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7566
    :sswitch_2f
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    if-nez v9, :cond_2b

    .line 7567
    new-instance v9, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-direct {v9}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;-><init>()V

    iput-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    .line 7569
    :cond_2b
    iget-object v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7573
    :sswitch_30
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    .line 7574
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7578
    :sswitch_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    .line 7579
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7583
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v9

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    .line 7584
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7588
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    .line 7589
    iget v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v10, 0x8000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    goto/16 :goto_0

    .line 7108
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_9
        0x4a -> :sswitch_b
        0x52 -> :sswitch_c
        0x5a -> :sswitch_d
        0x62 -> :sswitch_e
        0x6a -> :sswitch_f
        0x72 -> :sswitch_10
        0x7a -> :sswitch_11
        0x82 -> :sswitch_12
        0x8a -> :sswitch_13
        0x90 -> :sswitch_14
        0x9a -> :sswitch_15
        0xa2 -> :sswitch_16
        0xa8 -> :sswitch_17
        0xb2 -> :sswitch_18
        0xba -> :sswitch_19
        0xc0 -> :sswitch_1a
        0xca -> :sswitch_1b
        0xd2 -> :sswitch_1c
        0xda -> :sswitch_1d
        0xe2 -> :sswitch_1e
        0xea -> :sswitch_1f
        0xf2 -> :sswitch_20
        0xfa -> :sswitch_21
        0x100 -> :sswitch_22
        0x102 -> :sswitch_23
        0x108 -> :sswitch_24
        0x112 -> :sswitch_25
        0x11a -> :sswitch_26
        0x122 -> :sswitch_27
        0x12a -> :sswitch_28
        0x132 -> :sswitch_29
        0x13a -> :sswitch_2a
        0x140 -> :sswitch_2b
        0x142 -> :sswitch_2c
        0x14a -> :sswitch_2d
        0x152 -> :sswitch_2e
        0x15a -> :sswitch_2f
        0x160 -> :sswitch_30
        0x168 -> :sswitch_31
        0x170 -> :sswitch_32
        0x178 -> :sswitch_33
    .end sparse-switch

    .line 7144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 7243
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
    .end sparse-switch

    .line 7257
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x4 -> :sswitch_a
        0x8 -> :sswitch_a
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method public setMAgpsWriteTimestamp(J)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 6674
    iput-wide p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    .line 6675
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6676
    return-object p0
.end method

.method public setMCurSportGpsStatus(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6429
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    .line 6430
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6431
    return-object p0
.end method

.method public setMCurSportStatus(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6410
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    .line 6411
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6412
    return-object p0
.end method

.method public setMCurSportType(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6391
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    .line 6392
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6393
    return-object p0
.end method

.method public setMCurrentSportId(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6655
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    .line 6656
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6657
    return-object p0
.end method

.method public setMOnWristVerifiedState(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6636
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    .line 6637
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6638
    return-object p0
.end method

.method public setMReminder(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6372
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    .line 6373
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6374
    return-object p0
.end method

.method public setMSportCurSubStartTimestamp(J)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6334
    iput-wide p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    .line 6335
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6336
    return-object p0
.end method

.method public setMSportElapsedTime(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 6353
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    .line 6354
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6355
    return-object p0
.end method

.method public setMSportEndTimestamp(J)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6315
    iput-wide p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    .line 6316
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6317
    return-object p0
.end method

.method public setMSportKiloNum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6500
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    .line 6501
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6502
    return-object p0
.end method

.method public setMSportLapNum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6475
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    .line 6476
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6477
    return-object p0
.end method

.method public setMSportMileNum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6525
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    .line 6526
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6527
    return-object p0
.end method

.method public setMSportStartTimestamp(J)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6296
    iput-wide p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    .line 6297
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6298
    return-object p0
.end method

.method public setMTodayFloorCount(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6568
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    .line 6569
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6570
    return-object p0
.end method

.method public setMWatchOnWristState(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6617
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    .line 6618
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    .line 6619
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6748
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6749
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportStartTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 6751
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6752
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEndTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 6754
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 6755
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubStartTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 6757
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 6758
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportElapsedTime_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6760
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 6761
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mReminder_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6763
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 6764
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6766
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 6767
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6769
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 6770
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurSportGpsStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6772
    :cond_7
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_8

    .line 6773
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6775
    :cond_8
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_9

    .line 6776
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTotalTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6778
    :cond_9
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_a

    .line 6779
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6781
    :cond_a
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_b

    .line 6782
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRealtimeAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6784
    :cond_b
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_c

    .line 6785
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6787
    :cond_c
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_d

    .line 6788
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportTempAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6790
    :cond_d
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_e

    .line 6791
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6793
    :cond_e
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_f

    .line 6794
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportPreSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6796
    :cond_f
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_10

    .line 6797
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportCurSubAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6799
    :cond_10
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_11

    .line 6800
    const/16 v1, 0x12

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6802
    :cond_11
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_12

    .line 6803
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6805
    :cond_12
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_13

    .line 6806
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6808
    :cond_13
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_14

    .line 6809
    const/16 v1, 0x15

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6811
    :cond_14
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_15

    .line 6812
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6814
    :cond_15
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_16

    .line 6815
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportKiloAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6817
    :cond_16
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_17

    .line 6818
    const/16 v1, 0x18

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileNum_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6820
    :cond_17
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_18

    .line 6821
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6823
    :cond_18
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_19

    .line 6824
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMileAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6826
    :cond_19
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_1a

    .line 6827
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6829
    :cond_1a
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_1b

    .line 6830
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMinAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6832
    :cond_1b
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-eqz v1, :cond_1c

    .line 6833
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAcm:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6835
    :cond_1c
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_1d

    .line 6836
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRtSportLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6838
    :cond_1d
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    if-eqz v1, :cond_1e

    .line 6839
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRiddingInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6841
    :cond_1e
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v1, v1

    if-lez v1, :cond_1f

    .line 6842
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 6843
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOutStepModel:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6846
    .end local v0    # "i":I
    :cond_1f
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_20

    .line 6847
    const/16 v1, 0x21

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTodayFloorCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6849
    :cond_20
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    if-eqz v1, :cond_21

    .line 6850
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportSetStat:Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6852
    :cond_21
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    if-eqz v1, :cond_22

    .line 6853
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSwimInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6855
    :cond_22
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-eqz v1, :cond_23

    .line 6856
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportMaxLapAvg:Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6858
    :cond_23
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    if-eqz v1, :cond_24

    .line 6859
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportEteInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6861
    :cond_24
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    if-eqz v1, :cond_25

    .line 6862
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6864
    :cond_25
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    if-eqz v1, :cond_26

    .line 6865
    const/16 v1, 0x27

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSportThaWorkout:Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6867
    :cond_26
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v1, v1

    if-lez v1, :cond_27

    .line 6868
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 6869
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mGPSLonLatPoint:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6868
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6872
    .end local v0    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    if-eqz v1, :cond_28

    .line 6873
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mTennisInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6875
    :cond_28
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    if-eqz v1, :cond_29

    .line 6876
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mRabbitInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6878
    :cond_29
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    if-eqz v1, :cond_2a

    .line 6879
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mSkipRopeInfo:Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6881
    :cond_2a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2b

    .line 6882
    const/16 v1, 0x2c

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mWatchOnWristState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6884
    :cond_2b
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_2c

    .line 6885
    const/16 v1, 0x2d

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mOnWristVerifiedState_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6887
    :cond_2c
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2d

    .line 6888
    const/16 v1, 0x2e

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mCurrentSportId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6890
    :cond_2d
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    .line 6891
    const/16 v1, 0x2f

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportStatistics;->mAgpsWriteTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 6893
    :cond_2e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6894
    return-void
.end method
