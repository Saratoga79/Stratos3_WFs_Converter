.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportThaInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;


# instance fields
.field private bitField0_:I

.field private fitnessClass_:I

.field private fitnessLevelIncrease_:I

.field private trainingLoadTrend_:I

.field private vo2MaxTrend_:I

.field private wtlStatus_:I

.field private wtlSumOptimalMax_:I

.field private wtlSumOptimalMin_:I

.field private wtlSumOverreaching_:I

.field private wtlSum_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5537
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 5538
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    .line 5539
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 2

    .prologue
    .line 5353
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    if-nez v0, :cond_1

    .line 5354
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5356
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    if-nez v0, :cond_0

    .line 5357
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    .line 5359
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5361
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    return-object v0

    .line 5359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5704
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5698
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5542
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5543
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    .line 5544
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    .line 5545
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    .line 5546
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    .line 5547
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    .line 5548
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    .line 5549
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    .line 5550
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    .line 5551
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    .line 5552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5553
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->cachedSize:I

    .line 5554
    return-object p0
.end method

.method public clearFitnessClass()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5513
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    .line 5514
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5515
    return-object p0
.end method

.method public clearFitnessLevelIncrease()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5532
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    .line 5533
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5534
    return-object p0
.end method

.method public clearTrainingLoadTrend()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5399
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    .line 5400
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5401
    return-object p0
.end method

.method public clearVo2MaxTrend()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5380
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    .line 5381
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5382
    return-object p0
.end method

.method public clearWtlStatus()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5418
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    .line 5419
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5420
    return-object p0
.end method

.method public clearWtlSum()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5437
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    .line 5438
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5439
    return-object p0
.end method

.method public clearWtlSumOptimalMax()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5475
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    .line 5476
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5477
    return-object p0
.end method

.method public clearWtlSumOptimalMin()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5456
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    .line 5457
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5458
    return-object p0
.end method

.method public clearWtlSumOverreaching()Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1

    .prologue
    .line 5494
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    .line 5495
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5496
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5592
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5593
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5594
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5597
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5598
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5601
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5602
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5605
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5606
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5609
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5610
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5613
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 5614
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5617
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 5618
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5621
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 5622
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5625
    :cond_7
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 5626
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5629
    :cond_8
    return v0
.end method

.method public getFitnessClass()I
    .locals 1

    .prologue
    .line 5502
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    return v0
.end method

.method public getFitnessLevelIncrease()I
    .locals 1

    .prologue
    .line 5521
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    return v0
.end method

.method public getTrainingLoadTrend()I
    .locals 1

    .prologue
    .line 5388
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    return v0
.end method

.method public getVo2MaxTrend()I
    .locals 1

    .prologue
    .line 5369
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    return v0
.end method

.method public getWtlStatus()I
    .locals 1

    .prologue
    .line 5407
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    return v0
.end method

.method public getWtlSum()I
    .locals 1

    .prologue
    .line 5426
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    return v0
.end method

.method public getWtlSumOptimalMax()I
    .locals 1

    .prologue
    .line 5464
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    return v0
.end method

.method public getWtlSumOptimalMin()I
    .locals 1

    .prologue
    .line 5445
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    return v0
.end method

.method public getWtlSumOverreaching()I
    .locals 1

    .prologue
    .line 5483
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    return v0
.end method

.method public hasFitnessClass()Z
    .locals 1

    .prologue
    .line 5510
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFitnessLevelIncrease()Z
    .locals 1

    .prologue
    .line 5529
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrainingLoadTrend()Z
    .locals 1

    .prologue
    .line 5396
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVo2MaxTrend()Z
    .locals 1

    .prologue
    .line 5377
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWtlStatus()Z
    .locals 1

    .prologue
    .line 5415
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWtlSum()Z
    .locals 1

    .prologue
    .line 5434
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWtlSumOptimalMax()Z
    .locals 1

    .prologue
    .line 5472
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWtlSumOptimalMin()Z
    .locals 1

    .prologue
    .line 5453
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWtlSumOverreaching()Z
    .locals 1

    .prologue
    .line 5491
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 5347
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5638
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5642
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5643
    :sswitch_0
    return-object p0

    .line 5648
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    .line 5649
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5653
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    .line 5654
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5658
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    .line 5659
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5663
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    .line 5664
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5668
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    .line 5669
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5673
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    .line 5674
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5678
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    .line 5679
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5683
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    .line 5684
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto :goto_0

    .line 5688
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    .line 5689
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    goto/16 :goto_0

    .line 5638
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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setFitnessClass(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5505
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    .line 5506
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5507
    return-object p0
.end method

.method public setFitnessLevelIncrease(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5524
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    .line 5525
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5526
    return-object p0
.end method

.method public setTrainingLoadTrend(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5391
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    .line 5392
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5393
    return-object p0
.end method

.method public setVo2MaxTrend(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5372
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    .line 5373
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5374
    return-object p0
.end method

.method public setWtlStatus(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5410
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    .line 5411
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5412
    return-object p0
.end method

.method public setWtlSum(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5429
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    .line 5430
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5431
    return-object p0
.end method

.method public setWtlSumOptimalMax(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5467
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    .line 5468
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5469
    return-object p0
.end method

.method public setWtlSumOptimalMin(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5448
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    .line 5449
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5450
    return-object p0
.end method

.method public setWtlSumOverreaching(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5486
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    .line 5487
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    .line 5488
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
    .line 5560
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5561
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->vo2MaxTrend_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5563
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5564
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->trainingLoadTrend_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5566
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5567
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5569
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5570
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSum_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5572
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5573
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5575
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5576
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOptimalMax_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5578
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 5579
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->wtlSumOverreaching_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5581
    :cond_6
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 5582
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessClass_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5584
    :cond_7
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 5585
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportThaInfo;->fitnessLevelIncrease_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5587
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5588
    return-void
.end method
