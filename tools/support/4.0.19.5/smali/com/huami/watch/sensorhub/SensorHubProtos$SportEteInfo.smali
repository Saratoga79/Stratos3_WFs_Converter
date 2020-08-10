.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportEteInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;


# instance fields
.field private bitField0_:I

.field private eTEdailyPerformance_:I

.field private eTEmaximalMET_:I

.field private eTEphraseNumber_:I

.field private eTEphraseVariable_:I

.field private eTEresourceRecovery_:I

.field private eTEtrainingEffect_:I

.field private eTEtrainingLoadPeak_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5202
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 5203
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    .line 5204
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 2

    .prologue
    .line 5056
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    if-nez v0, :cond_1

    .line 5057
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5059
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    if-nez v0, :cond_0

    .line 5060
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    .line 5062
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5064
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    return-object v0

    .line 5062
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5343
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5337
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5207
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5208
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    .line 5209
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    .line 5210
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    .line 5211
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    .line 5212
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    .line 5213
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    .line 5214
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    .line 5215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5216
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->cachedSize:I

    .line 5217
    return-object p0
.end method

.method public clearETEdailyPerformance()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5159
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    .line 5160
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5161
    return-object p0
.end method

.method public clearETEmaximalMET()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5121
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    .line 5122
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5123
    return-object p0
.end method

.method public clearETEphraseNumber()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5178
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    .line 5179
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5180
    return-object p0
.end method

.method public clearETEphraseVariable()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5197
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    .line 5198
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5199
    return-object p0
.end method

.method public clearETEresourceRecovery()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5140
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    .line 5141
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5142
    return-object p0
.end method

.method public clearETEtrainingEffect()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5102
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    .line 5103
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5104
    return-object p0
.end method

.method public clearETEtrainingLoadPeak()Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1

    .prologue
    .line 5083
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    .line 5084
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5085
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5249
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5250
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5251
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5254
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5255
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5258
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5259
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5262
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5263
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5266
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5267
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5270
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 5271
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5274
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 5275
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5278
    :cond_6
    return v0
.end method

.method public getETEdailyPerformance()I
    .locals 1

    .prologue
    .line 5148
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    return v0
.end method

.method public getETEmaximalMET()I
    .locals 1

    .prologue
    .line 5110
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    return v0
.end method

.method public getETEphraseNumber()I
    .locals 1

    .prologue
    .line 5167
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    return v0
.end method

.method public getETEphraseVariable()I
    .locals 1

    .prologue
    .line 5186
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    return v0
.end method

.method public getETEresourceRecovery()I
    .locals 1

    .prologue
    .line 5129
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    return v0
.end method

.method public getETEtrainingEffect()I
    .locals 1

    .prologue
    .line 5091
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    return v0
.end method

.method public getETEtrainingLoadPeak()I
    .locals 1

    .prologue
    .line 5072
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    return v0
.end method

.method public hasETEdailyPerformance()Z
    .locals 1

    .prologue
    .line 5156
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEmaximalMET()Z
    .locals 1

    .prologue
    .line 5118
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEphraseNumber()Z
    .locals 1

    .prologue
    .line 5175
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEphraseVariable()Z
    .locals 1

    .prologue
    .line 5194
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEresourceRecovery()Z
    .locals 1

    .prologue
    .line 5137
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEtrainingEffect()Z
    .locals 1

    .prologue
    .line 5099
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasETEtrainingLoadPeak()Z
    .locals 1

    .prologue
    .line 5080
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

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
    .line 5050
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5286
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5287
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5291
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5292
    :sswitch_0
    return-object p0

    .line 5297
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    .line 5298
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5302
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    .line 5303
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    .line 5308
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5312
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    .line 5313
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5317
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    .line 5318
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5322
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    .line 5323
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5327
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    .line 5328
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    goto :goto_0

    .line 5287
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

.method public setETEdailyPerformance(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5151
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    .line 5152
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5153
    return-object p0
.end method

.method public setETEmaximalMET(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5113
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    .line 5114
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5115
    return-object p0
.end method

.method public setETEphraseNumber(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5170
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    .line 5171
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5172
    return-object p0
.end method

.method public setETEphraseVariable(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5189
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    .line 5190
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5191
    return-object p0
.end method

.method public setETEresourceRecovery(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5132
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    .line 5133
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5134
    return-object p0
.end method

.method public setETEtrainingEffect(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5094
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    .line 5095
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5096
    return-object p0
.end method

.method public setETEtrainingLoadPeak(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5075
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    .line 5076
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    .line 5077
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
    .line 5223
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5224
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingLoadPeak_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5226
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5227
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEtrainingEffect_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5229
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5230
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEmaximalMET_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5232
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5233
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEresourceRecovery_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5235
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5236
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEdailyPerformance_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5238
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5239
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5241
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 5242
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SportEteInfo;->eTEphraseVariable_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 5244
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5245
    return-void
.end method
