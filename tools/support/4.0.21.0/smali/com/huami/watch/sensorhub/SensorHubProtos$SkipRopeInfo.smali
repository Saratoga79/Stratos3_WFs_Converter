.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkipRopeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;


# instance fields
.field private bitField0_:I

.field private mAvgPaddleTime_:F

.field private mAvgReturnPaddleTime_:F

.field private mAvgSpeed_:F

.field private mCount_:I

.field private mCurGroupNum_:I

.field private mGroupAvgCadence_:F

.field private mGroupAvgHeartRate_:I

.field private mGroupCalories_:F

.field private mGroupCount_:I

.field private mGroupTimer_:F

.field private mMaxSpeed_:F

.field private mRtSpeed_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4630
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 4631
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    .line 4632
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 2

    .prologue
    .line 4389
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    if-nez v0, :cond_1

    .line 4390
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4392
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    if-nez v0, :cond_0

    .line 4393
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    .line 4395
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4397
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    return-object v0

    .line 4395
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4836
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4830
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4635
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4636
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    .line 4637
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    .line 4638
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    .line 4639
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    .line 4640
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    .line 4641
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    .line 4642
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    .line 4643
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    .line 4644
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    .line 4645
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    .line 4646
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    .line 4647
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    .line 4648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4649
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->cachedSize:I

    .line 4650
    return-object p0
.end method

.method public clearMAvgPaddleTime()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4606
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    .line 4607
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4608
    return-object p0
.end method

.method public clearMAvgReturnPaddleTime()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4625
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    .line 4626
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4627
    return-object p0
.end method

.method public clearMAvgSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4473
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    .line 4474
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4475
    return-object p0
.end method

.method public clearMCount()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4435
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    .line 4436
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4437
    return-object p0
.end method

.method public clearMCurGroupNum()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4416
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    .line 4417
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4418
    return-object p0
.end method

.method public clearMGroupAvgCadence()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4587
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    .line 4588
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4589
    return-object p0
.end method

.method public clearMGroupAvgHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4568
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    .line 4569
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4570
    return-object p0
.end method

.method public clearMGroupCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4549
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    .line 4550
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4551
    return-object p0
.end method

.method public clearMGroupCount()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4511
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    .line 4512
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4513
    return-object p0
.end method

.method public clearMGroupTimer()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4530
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    .line 4531
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4532
    return-object p0
.end method

.method public clearMMaxSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4492
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    .line 4493
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4494
    return-object p0
.end method

.method public clearMRtSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1

    .prologue
    .line 4454
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    .line 4455
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4456
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4697
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4698
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4699
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4702
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4703
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4706
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4707
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4710
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4711
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4714
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4715
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4718
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4719
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4722
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4723
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4726
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 4727
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4730
    :cond_7
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 4731
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4734
    :cond_8
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 4735
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4738
    :cond_9
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 4739
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4742
    :cond_a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 4743
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4746
    :cond_b
    return v0
.end method

.method public getMAvgPaddleTime()F
    .locals 1

    .prologue
    .line 4595
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    return v0
.end method

.method public getMAvgReturnPaddleTime()F
    .locals 1

    .prologue
    .line 4614
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    return v0
.end method

.method public getMAvgSpeed()F
    .locals 1

    .prologue
    .line 4462
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    return v0
.end method

.method public getMCount()I
    .locals 1

    .prologue
    .line 4424
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    return v0
.end method

.method public getMCurGroupNum()I
    .locals 1

    .prologue
    .line 4405
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    return v0
.end method

.method public getMGroupAvgCadence()F
    .locals 1

    .prologue
    .line 4576
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    return v0
.end method

.method public getMGroupAvgHeartRate()I
    .locals 1

    .prologue
    .line 4557
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    return v0
.end method

.method public getMGroupCalories()F
    .locals 1

    .prologue
    .line 4538
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    return v0
.end method

.method public getMGroupCount()I
    .locals 1

    .prologue
    .line 4500
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    return v0
.end method

.method public getMGroupTimer()F
    .locals 1

    .prologue
    .line 4519
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    return v0
.end method

.method public getMMaxSpeed()F
    .locals 1

    .prologue
    .line 4481
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    return v0
.end method

.method public getMRtSpeed()F
    .locals 1

    .prologue
    .line 4443
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    return v0
.end method

.method public hasMAvgPaddleTime()Z
    .locals 1

    .prologue
    .line 4603
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMAvgReturnPaddleTime()Z
    .locals 1

    .prologue
    .line 4622
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMAvgSpeed()Z
    .locals 1

    .prologue
    .line 4470
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCount()Z
    .locals 1

    .prologue
    .line 4432
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCurGroupNum()Z
    .locals 1

    .prologue
    .line 4413
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGroupAvgCadence()Z
    .locals 1

    .prologue
    .line 4584
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGroupAvgHeartRate()Z
    .locals 1

    .prologue
    .line 4565
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGroupCalories()Z
    .locals 1

    .prologue
    .line 4546
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGroupCount()Z
    .locals 1

    .prologue
    .line 4508
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMGroupTimer()Z
    .locals 1

    .prologue
    .line 4527
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMaxSpeed()Z
    .locals 1

    .prologue
    .line 4489
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMRtSpeed()Z
    .locals 1

    .prologue
    .line 4451
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

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
    .line 4383
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4755
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4759
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4760
    :sswitch_0
    return-object p0

    .line 4765
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    .line 4766
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4770
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    .line 4771
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4775
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    .line 4776
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4780
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    .line 4781
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4785
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    .line 4786
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4790
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    .line 4791
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4795
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    .line 4796
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4800
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    .line 4801
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto :goto_0

    .line 4805
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    .line 4806
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4810
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    .line 4811
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4815
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    .line 4816
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4820
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    .line 4821
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4755
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
    .end sparse-switch
.end method

.method public setMAvgPaddleTime(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4598
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    .line 4599
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4600
    return-object p0
.end method

.method public setMAvgReturnPaddleTime(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4617
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    .line 4618
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4619
    return-object p0
.end method

.method public setMAvgSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4465
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    .line 4466
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4467
    return-object p0
.end method

.method public setMCount(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4427
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    .line 4428
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4429
    return-object p0
.end method

.method public setMCurGroupNum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4408
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    .line 4409
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4410
    return-object p0
.end method

.method public setMGroupAvgCadence(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4579
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    .line 4580
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4581
    return-object p0
.end method

.method public setMGroupAvgHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4560
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    .line 4561
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4562
    return-object p0
.end method

.method public setMGroupCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4541
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    .line 4542
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4543
    return-object p0
.end method

.method public setMGroupCount(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4503
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    .line 4504
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4505
    return-object p0
.end method

.method public setMGroupTimer(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4522
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    .line 4523
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4524
    return-object p0
.end method

.method public setMMaxSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4484
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    .line 4485
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4486
    return-object p0
.end method

.method public setMRtSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4446
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    .line 4447
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    .line 4448
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
    .line 4656
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4657
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCurGroupNum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4659
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4660
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4662
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4663
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mRtSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4665
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4666
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4668
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4669
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mMaxSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4671
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4672
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4674
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4675
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupTimer_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4677
    :cond_6
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 4678
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupCalories_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4680
    :cond_7
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 4681
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgHeartRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4683
    :cond_8
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 4684
    const/16 v0, 0xa

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mGroupAvgCadence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4686
    :cond_9
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 4687
    const/16 v0, 0xb

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgPaddleTime_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4689
    :cond_a
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 4690
    const/16 v0, 0xc

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SkipRopeInfo;->mAvgReturnPaddleTime_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4692
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4693
    return-void
.end method
