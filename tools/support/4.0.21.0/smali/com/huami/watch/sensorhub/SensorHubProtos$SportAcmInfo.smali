.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportAcmInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;


# instance fields
.field private bitField0_:I

.field private mAscendMeter_:F

.field private mBasicCalories_:F

.field private mDescendMeter_:F

.field private mDistance_:F

.field private mSportCalories_:F

.field private mStep_:I

.field private mTimer_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3155
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 3156
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 3157
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 2

    .prologue
    .line 3009
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v0, :cond_1

    .line 3010
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3012
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    if-nez v0, :cond_0

    .line 3013
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    .line 3015
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3017
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    return-object v0

    .line 3015
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3296
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3290
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3160
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3161
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    .line 3162
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    .line 3163
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    .line 3164
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    .line 3165
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    .line 3166
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    .line 3167
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    .line 3168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3169
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->cachedSize:I

    .line 3170
    return-object p0
.end method

.method public clearMAscendMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3131
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    .line 3132
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3133
    return-object p0
.end method

.method public clearMBasicCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3112
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    .line 3113
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3114
    return-object p0
.end method

.method public clearMDescendMeter()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3150
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    .line 3151
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3152
    return-object p0
.end method

.method public clearMDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3055
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    .line 3056
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3057
    return-object p0
.end method

.method public clearMSportCalories()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3093
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    .line 3094
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3095
    return-object p0
.end method

.method public clearMStep()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3074
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    .line 3075
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3076
    return-object p0
.end method

.method public clearMTimer()Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1

    .prologue
    .line 3036
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    .line 3037
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3038
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3202
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3203
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3204
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3207
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3208
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3211
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3212
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3215
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3216
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3219
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3220
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3223
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3224
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3227
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3228
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3231
    :cond_6
    return v0
.end method

.method public getMAscendMeter()F
    .locals 1

    .prologue
    .line 3120
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    return v0
.end method

.method public getMBasicCalories()F
    .locals 1

    .prologue
    .line 3101
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    return v0
.end method

.method public getMDescendMeter()F
    .locals 1

    .prologue
    .line 3139
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    return v0
.end method

.method public getMDistance()F
    .locals 1

    .prologue
    .line 3044
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    return v0
.end method

.method public getMSportCalories()F
    .locals 1

    .prologue
    .line 3082
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    return v0
.end method

.method public getMStep()I
    .locals 1

    .prologue
    .line 3063
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    return v0
.end method

.method public getMTimer()F
    .locals 1

    .prologue
    .line 3025
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    return v0
.end method

.method public hasMAscendMeter()Z
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMBasicCalories()Z
    .locals 1

    .prologue
    .line 3109
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDescendMeter()Z
    .locals 1

    .prologue
    .line 3147
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDistance()Z
    .locals 1

    .prologue
    .line 3052
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSportCalories()Z
    .locals 1

    .prologue
    .line 3090
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMStep()Z
    .locals 1

    .prologue
    .line 3071
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTimer()Z
    .locals 1

    .prologue
    .line 3033
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 3003
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3240
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3244
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3245
    :sswitch_0
    return-object p0

    .line 3250
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    .line 3251
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3255
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    .line 3256
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3260
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    .line 3261
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3265
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    .line 3266
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3270
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    .line 3271
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3275
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    .line 3276
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3280
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    .line 3281
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    goto :goto_0

    .line 3240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
    .end sparse-switch
.end method

.method public setMAscendMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3123
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    .line 3124
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3125
    return-object p0
.end method

.method public setMBasicCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3104
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    .line 3105
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3106
    return-object p0
.end method

.method public setMDescendMeter(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3142
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    .line 3143
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3144
    return-object p0
.end method

.method public setMDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3047
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    .line 3048
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3049
    return-object p0
.end method

.method public setMSportCalories(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3085
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    .line 3086
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3087
    return-object p0
.end method

.method public setMStep(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3066
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    .line 3067
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3068
    return-object p0
.end method

.method public setMTimer(F)Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3028
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    .line 3029
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    .line 3030
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
    .line 3176
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3177
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mTimer_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3179
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3180
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3182
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3183
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mStep_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3185
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3186
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mSportCalories_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3188
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3189
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mBasicCalories_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3191
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3192
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mAscendMeter_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3194
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3195
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportAcmInfo;->mDescendMeter_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3197
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3198
    return-void
.end method
