.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportAvgInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;


# instance fields
.field private bitField0_:I

.field private mAltitude_:F

.field private mCadence_:F

.field private mDuration_:I

.field private mHeartRate_:I

.field private mPace_:F

.field private mSlope_:F

.field private mSpeed_:F

.field private mVerticalSpeed_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3471
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 3472
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 3473
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 2

    .prologue
    .line 3306
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v0, :cond_1

    .line 3307
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3309
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    if-nez v0, :cond_0

    .line 3310
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    .line 3312
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3314
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    return-object v0

    .line 3312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3625
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3619
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3476
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3477
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    .line 3478
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    .line 3479
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    .line 3480
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    .line 3481
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    .line 3482
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    .line 3483
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    .line 3484
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    .line 3485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3486
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->cachedSize:I

    .line 3487
    return-object p0
.end method

.method public clearMAltitude()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3409
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    .line 3410
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3411
    return-object p0
.end method

.method public clearMCadence()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3371
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    .line 3372
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3373
    return-object p0
.end method

.method public clearMDuration()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3447
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    .line 3448
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3449
    return-object p0
.end method

.method public clearMHeartRate()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3390
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    .line 3391
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3392
    return-object p0
.end method

.method public clearMPace()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3352
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    .line 3353
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3354
    return-object p0
.end method

.method public clearMSlope()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3466
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    .line 3467
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3468
    return-object p0
.end method

.method public clearMSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3333
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    .line 3334
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3335
    return-object p0
.end method

.method public clearMVerticalSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1

    .prologue
    .line 3428
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    .line 3429
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3430
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3522
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3523
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3524
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3527
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3528
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3531
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3532
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3535
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3536
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3539
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3540
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3543
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3544
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3547
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3548
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3551
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3552
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3555
    :cond_7
    return v0
.end method

.method public getMAltitude()F
    .locals 1

    .prologue
    .line 3398
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    return v0
.end method

.method public getMCadence()F
    .locals 1

    .prologue
    .line 3360
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    return v0
.end method

.method public getMDuration()I
    .locals 1

    .prologue
    .line 3436
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    return v0
.end method

.method public getMHeartRate()I
    .locals 1

    .prologue
    .line 3379
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    return v0
.end method

.method public getMPace()F
    .locals 1

    .prologue
    .line 3341
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    return v0
.end method

.method public getMSlope()F
    .locals 1

    .prologue
    .line 3455
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    return v0
.end method

.method public getMSpeed()F
    .locals 1

    .prologue
    .line 3322
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    return v0
.end method

.method public getMVerticalSpeed()F
    .locals 1

    .prologue
    .line 3417
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    return v0
.end method

.method public hasMAltitude()Z
    .locals 1

    .prologue
    .line 3406
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCadence()Z
    .locals 1

    .prologue
    .line 3368
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDuration()Z
    .locals 1

    .prologue
    .line 3444
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMHeartRate()Z
    .locals 1

    .prologue
    .line 3387
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMPace()Z
    .locals 1

    .prologue
    .line 3349
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSlope()Z
    .locals 1

    .prologue
    .line 3463
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSpeed()Z
    .locals 1

    .prologue
    .line 3330
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMVerticalSpeed()Z
    .locals 1

    .prologue
    .line 3425
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    .line 3300
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3564
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3568
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3569
    :sswitch_0
    return-object p0

    .line 3574
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    .line 3575
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3579
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    .line 3580
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3584
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    .line 3585
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3589
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    .line 3590
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3594
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    .line 3595
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3599
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    .line 3600
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3604
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    .line 3605
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3609
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    .line 3610
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    goto :goto_0

    .line 3564
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x45 -> :sswitch_8
    .end sparse-switch
.end method

.method public setMAltitude(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3401
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    .line 3402
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3403
    return-object p0
.end method

.method public setMCadence(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3363
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    .line 3364
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3365
    return-object p0
.end method

.method public setMDuration(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3439
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    .line 3440
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3441
    return-object p0
.end method

.method public setMHeartRate(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3382
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    .line 3383
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3384
    return-object p0
.end method

.method public setMPace(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3344
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    .line 3345
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3346
    return-object p0
.end method

.method public setMSlope(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3458
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    .line 3459
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3460
    return-object p0
.end method

.method public setMSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3325
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    .line 3326
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3327
    return-object p0
.end method

.method public setMVerticalSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3420
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    .line 3421
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    .line 3422
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
    .line 3493
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3494
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3496
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3497
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mPace_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3499
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3500
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mCadence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3502
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3503
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mHeartRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3505
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3506
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mAltitude_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3508
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3509
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mVerticalSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3511
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3512
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mDuration_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3514
    :cond_6
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3515
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAvgInfo;->mSlope_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3517
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3518
    return-void
.end method
