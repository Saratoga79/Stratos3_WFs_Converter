.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportSetStatistics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;


# instance fields
.field private bitField0_:I

.field private mSportSetStatus_:I

.field private mSportSetTotalCalories_:F

.field private mSportSetTotalDistance_:F

.field private mSportSetTotalTime_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4935
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 4936
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    .line 4937
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 2

    .prologue
    .line 4846
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    if-nez v0, :cond_1

    .line 4847
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4849
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    if-nez v0, :cond_0

    .line 4850
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    .line 4852
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4854
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    return-object v0

    .line 4852
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5046
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5040
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4940
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4941
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    .line 4942
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    .line 4943
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    .line 4944
    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    .line 4945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4946
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->cachedSize:I

    .line 4947
    return-object p0
.end method

.method public clearMSportSetStatus()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1

    .prologue
    .line 4873
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    .line 4874
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4875
    return-object p0
.end method

.method public clearMSportSetTotalCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1

    .prologue
    .line 4930
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    .line 4931
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4932
    return-object p0
.end method

.method public clearMSportSetTotalDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1

    .prologue
    .line 4911
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    .line 4912
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4913
    return-object p0
.end method

.method public clearMSportSetTotalTime()Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 2

    .prologue
    .line 4892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    .line 4893
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4894
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 4970
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4971
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4972
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4975
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4976
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4979
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4980
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4983
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4984
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4987
    :cond_3
    return v0
.end method

.method public getMSportSetStatus()I
    .locals 1

    .prologue
    .line 4862
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    return v0
.end method

.method public getMSportSetTotalCalories()F
    .locals 1

    .prologue
    .line 4919
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    return v0
.end method

.method public getMSportSetTotalDistance()F
    .locals 1

    .prologue
    .line 4900
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    return v0
.end method

.method public getMSportSetTotalTime()J
    .locals 2

    .prologue
    .line 4881
    iget-wide v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    return-wide v0
.end method

.method public hasMSportSetStatus()Z
    .locals 1

    .prologue
    .line 4870
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportSetTotalCalories()Z
    .locals 1

    .prologue
    .line 4927
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportSetTotalDistance()Z
    .locals 1

    .prologue
    .line 4908
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportSetTotalTime()Z
    .locals 1

    .prologue
    .line 4889
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 4840
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4995
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4996
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5000
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5001
    :sswitch_0
    return-object p0

    .line 5006
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5007
    .local v1, "value":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 5013
    :sswitch_2
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    .line 5014
    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    goto :goto_0

    .line 5020
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    .line 5021
    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    goto :goto_0

    .line 5025
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    .line 5026
    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    goto :goto_0

    .line 5030
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    .line 5031
    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    goto :goto_0

    .line 4996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1d -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch

    .line 5007
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMSportSetStatus(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4865
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    .line 4866
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4867
    return-object p0
.end method

.method public setMSportSetTotalCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4922
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    .line 4923
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4924
    return-object p0
.end method

.method public setMSportSetTotalDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4903
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    .line 4904
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4905
    return-object p0
.end method

.method public setMSportSetTotalTime(J)Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4884
    iput-wide p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    .line 4885
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    .line 4886
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
    .line 4953
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4954
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4956
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4957
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 4959
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4960
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4962
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4963
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportSetStatistics;->mSportSetTotalCalories_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4965
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4966
    return-void
.end method
