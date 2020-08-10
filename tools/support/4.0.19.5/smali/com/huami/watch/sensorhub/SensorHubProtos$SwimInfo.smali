.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwimInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;


# instance fields
.field private bitField0_:I

.field private mAvgDistancePerStroke_:F

.field private mAvgStrokeSpeed_:F

.field private mLapStrokeSpeed_:F

.field private mLapStrokes_:I

.field private mLapSwolf_:I

.field private mMaxStrokeSpeed_:F

.field private mRtDistancePerStroke_:F

.field private mRtStrokeSpeed_:F

.field private mSwimStyle_:I

.field private mSwolfPerFixedMeters_:I

.field private mTotalStrokes_:I

.field private mTotalTrips_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4173
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 4174
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    .line 4175
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 2

    .prologue
    .line 3932
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    if-nez v0, :cond_1

    .line 3933
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3935
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    if-nez v0, :cond_0

    .line 3936
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    .line 3938
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    return-object v0

    .line 3938
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4379
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4373
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4178
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4179
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    .line 4180
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    .line 4181
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    .line 4182
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    .line 4183
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    .line 4184
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    .line 4185
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    .line 4186
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    .line 4187
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    .line 4188
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    .line 4189
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    .line 4190
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    .line 4191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4192
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->cachedSize:I

    .line 4193
    return-object p0
.end method

.method public clearMAvgDistancePerStroke()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4035
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    .line 4036
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4037
    return-object p0
.end method

.method public clearMAvgStrokeSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4054
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    .line 4055
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4056
    return-object p0
.end method

.method public clearMLapStrokeSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4130
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    .line 4131
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4132
    return-object p0
.end method

.method public clearMLapStrokes()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4111
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    .line 4112
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4113
    return-object p0
.end method

.method public clearMLapSwolf()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4149
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    .line 4150
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4151
    return-object p0
.end method

.method public clearMMaxStrokeSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4073
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    .line 4074
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4075
    return-object p0
.end method

.method public clearMRtDistancePerStroke()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 3997
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    .line 3998
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3999
    return-object p0
.end method

.method public clearMRtStrokeSpeed()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4016
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    .line 4017
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4018
    return-object p0
.end method

.method public clearMSwimStyle()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4168
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    .line 4169
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4170
    return-object p0
.end method

.method public clearMSwolfPerFixedMeters()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 4092
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    .line 4093
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4094
    return-object p0
.end method

.method public clearMTotalStrokes()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 3959
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    .line 3960
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3961
    return-object p0
.end method

.method public clearMTotalTrips()Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1

    .prologue
    .line 3978
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    .line 3979
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3980
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4240
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4241
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4242
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4245
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4246
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4249
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4250
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4253
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4254
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4257
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4258
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4261
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4262
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4265
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4266
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4269
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 4270
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4273
    :cond_7
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 4274
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4277
    :cond_8
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 4278
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4281
    :cond_9
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 4282
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4285
    :cond_a
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 4286
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4289
    :cond_b
    return v0
.end method

.method public getMAvgDistancePerStroke()F
    .locals 1

    .prologue
    .line 4024
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    return v0
.end method

.method public getMAvgStrokeSpeed()F
    .locals 1

    .prologue
    .line 4043
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    return v0
.end method

.method public getMLapStrokeSpeed()F
    .locals 1

    .prologue
    .line 4119
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    return v0
.end method

.method public getMLapStrokes()I
    .locals 1

    .prologue
    .line 4100
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    return v0
.end method

.method public getMLapSwolf()I
    .locals 1

    .prologue
    .line 4138
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    return v0
.end method

.method public getMMaxStrokeSpeed()F
    .locals 1

    .prologue
    .line 4062
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    return v0
.end method

.method public getMRtDistancePerStroke()F
    .locals 1

    .prologue
    .line 3986
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    return v0
.end method

.method public getMRtStrokeSpeed()F
    .locals 1

    .prologue
    .line 4005
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    return v0
.end method

.method public getMSwimStyle()I
    .locals 1

    .prologue
    .line 4157
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    return v0
.end method

.method public getMSwolfPerFixedMeters()I
    .locals 1

    .prologue
    .line 4081
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    return v0
.end method

.method public getMTotalStrokes()I
    .locals 1

    .prologue
    .line 3948
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    return v0
.end method

.method public getMTotalTrips()I
    .locals 1

    .prologue
    .line 3967
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    return v0
.end method

.method public hasMAvgDistancePerStroke()Z
    .locals 1

    .prologue
    .line 4032
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMAvgStrokeSpeed()Z
    .locals 1

    .prologue
    .line 4051
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMLapStrokeSpeed()Z
    .locals 1

    .prologue
    .line 4127
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMLapStrokes()Z
    .locals 1

    .prologue
    .line 4108
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMLapSwolf()Z
    .locals 1

    .prologue
    .line 4146
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMaxStrokeSpeed()Z
    .locals 1

    .prologue
    .line 4070
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMRtDistancePerStroke()Z
    .locals 1

    .prologue
    .line 3994
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMRtStrokeSpeed()Z
    .locals 1

    .prologue
    .line 4013
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSwimStyle()Z
    .locals 1

    .prologue
    .line 4165
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSwolfPerFixedMeters()Z
    .locals 1

    .prologue
    .line 4089
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTotalStrokes()Z
    .locals 1

    .prologue
    .line 3956
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTotalTrips()Z
    .locals 1

    .prologue
    .line 3975
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

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
    .line 3926
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4297
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4298
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4302
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4303
    :sswitch_0
    return-object p0

    .line 4308
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    .line 4309
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4313
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    .line 4314
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4318
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    .line 4319
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4323
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    .line 4324
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4328
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    .line 4329
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4333
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    .line 4334
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4338
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    .line 4339
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4343
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    .line 4344
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto :goto_0

    .line 4348
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    .line 4349
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4353
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    .line 4354
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4358
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    .line 4359
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4363
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    .line 4364
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4298
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method public setMAvgDistancePerStroke(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4027
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    .line 4028
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4029
    return-object p0
.end method

.method public setMAvgStrokeSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4046
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    .line 4047
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4048
    return-object p0
.end method

.method public setMLapStrokeSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4122
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    .line 4123
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4124
    return-object p0
.end method

.method public setMLapStrokes(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4103
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    .line 4104
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4105
    return-object p0
.end method

.method public setMLapSwolf(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4141
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    .line 4142
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4143
    return-object p0
.end method

.method public setMMaxStrokeSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4065
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    .line 4066
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4067
    return-object p0
.end method

.method public setMRtDistancePerStroke(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3989
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    .line 3990
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3991
    return-object p0
.end method

.method public setMRtStrokeSpeed(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 4008
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    .line 4009
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4010
    return-object p0
.end method

.method public setMSwimStyle(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4160
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    .line 4161
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4162
    return-object p0
.end method

.method public setMSwolfPerFixedMeters(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4084
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    .line 4085
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 4086
    return-object p0
.end method

.method public setMTotalStrokes(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3951
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    .line 3952
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3953
    return-object p0
.end method

.method public setMTotalTrips(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3970
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    .line 3971
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    .line 3972
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
    .line 4199
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4200
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalStrokes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4202
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4203
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mTotalTrips_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4205
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4206
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtDistancePerStroke_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4208
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4209
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mRtStrokeSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4211
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4212
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgDistancePerStroke_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4214
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4215
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mAvgStrokeSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4217
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4218
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mMaxStrokeSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4220
    :cond_6
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 4221
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwolfPerFixedMeters_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4223
    :cond_7
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 4224
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokes_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4226
    :cond_8
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 4227
    const/16 v0, 0xa

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapStrokeSpeed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4229
    :cond_9
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 4230
    const/16 v0, 0xb

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mLapSwolf_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4232
    :cond_a
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 4233
    const/16 v0, 0xc

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SwimInfo;->mSwimStyle_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4235
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4236
    return-void
.end method
