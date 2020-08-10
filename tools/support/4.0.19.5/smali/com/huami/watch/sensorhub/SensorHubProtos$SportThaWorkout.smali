.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportThaWorkout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;


# instance fields
.field private bitField0_:I

.field private distance_:I

.field private duration_:I

.field private heartRate_:I

.field private intensity_:I

.field private phrase_:I

.field private runningSpeed_:I

.field private trainingEffect_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5860
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 5861
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    .line 5862
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 2

    .prologue
    .line 5714
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    if-nez v0, :cond_1

    .line 5715
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5717
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    if-nez v0, :cond_0

    .line 5718
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    .line 5720
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5722
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    return-object v0

    .line 5720
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6001
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5995
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5865
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5866
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    .line 5867
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    .line 5868
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    .line 5869
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    .line 5870
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    .line 5871
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    .line 5872
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    .line 5873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5874
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->cachedSize:I

    .line 5875
    return-object p0
.end method

.method public clearDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5798
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    .line 5799
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5800
    return-object p0
.end method

.method public clearDuration()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5760
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    .line 5761
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5762
    return-object p0
.end method

.method public clearHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5836
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    .line 5837
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5838
    return-object p0
.end method

.method public clearIntensity()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5817
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    .line 5818
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5819
    return-object p0
.end method

.method public clearPhrase()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5741
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    .line 5742
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5743
    return-object p0
.end method

.method public clearRunningSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5855
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    .line 5856
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5857
    return-object p0
.end method

.method public clearTrainingEffect()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1

    .prologue
    .line 5779
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    .line 5780
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5781
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5907
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5908
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5909
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5912
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5913
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5916
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5917
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5920
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5921
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5924
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5925
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5928
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 5929
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5932
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 5933
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5936
    :cond_6
    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 5787
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 5749
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    return v0
.end method

.method public getHeartRate()I
    .locals 1

    .prologue
    .line 5825
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 5806
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    return v0
.end method

.method public getPhrase()I
    .locals 1

    .prologue
    .line 5730
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    return v0
.end method

.method public getRunningSpeed()I
    .locals 1

    .prologue
    .line 5844
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    return v0
.end method

.method public getTrainingEffect()I
    .locals 1

    .prologue
    .line 5768
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    return v0
.end method

.method public hasDistance()Z
    .locals 1

    .prologue
    .line 5795
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 5757
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeartRate()Z
    .locals 1

    .prologue
    .line 5833
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntensity()Z
    .locals 1

    .prologue
    .line 5814
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhrase()Z
    .locals 1

    .prologue
    .line 5738
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRunningSpeed()Z
    .locals 1

    .prologue
    .line 5852
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrainingEffect()Z
    .locals 1

    .prologue
    .line 5776
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 5708
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5945
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5949
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5950
    :sswitch_0
    return-object p0

    .line 5955
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    .line 5956
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5960
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    .line 5961
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5965
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    .line 5966
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5970
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    .line 5971
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5975
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    .line 5976
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5980
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    .line 5981
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5985
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    .line 5986
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    goto :goto_0

    .line 5945
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDistance(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5790
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    .line 5791
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5792
    return-object p0
.end method

.method public setDuration(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5752
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    .line 5753
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5754
    return-object p0
.end method

.method public setHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5828
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    .line 5829
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5830
    return-object p0
.end method

.method public setIntensity(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5809
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    .line 5810
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5811
    return-object p0
.end method

.method public setPhrase(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5733
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    .line 5734
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5735
    return-object p0
.end method

.method public setRunningSpeed(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5847
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    .line 5848
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5849
    return-object p0
.end method

.method public setTrainingEffect(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5771
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    .line 5772
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    .line 5773
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5881
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5882
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->phrase_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5884
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5885
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->duration_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5887
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5888
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->trainingEffect_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5890
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5891
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->distance_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5893
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5894
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->intensity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5896
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5897
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->heartRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5899
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 5900
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaWorkout;->runningSpeed_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5902
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5903
    return-void
.end method
