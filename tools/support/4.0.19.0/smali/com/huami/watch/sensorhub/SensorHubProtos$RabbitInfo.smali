.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RabbitInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;


# instance fields
.field private bitField0_:I

.field private mCatchUpDistance_:F

.field private mCatchUpTimer_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6191
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 6192
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    .line 6193
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 2

    .prologue
    .line 6140
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    if-nez v0, :cond_1

    .line 6141
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6143
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    if-nez v0, :cond_0

    .line 6144
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    .line 6146
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6148
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    return-object v0

    .line 6146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6267
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6261
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6196
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    .line 6197
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    .line 6198
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    .line 6199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6200
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->cachedSize:I

    .line 6201
    return-object p0
.end method

.method public clearMCatchUpDistance()Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1

    .prologue
    .line 6186
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    .line 6187
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    .line 6188
    return-object p0
.end method

.method public clearMCatchUpTimer()Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1

    .prologue
    .line 6167
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    .line 6168
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    .line 6169
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 6218
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6219
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6220
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 6223
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 6224
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 6227
    :cond_1
    return v0
.end method

.method public getMCatchUpDistance()F
    .locals 1

    .prologue
    .line 6175
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    return v0
.end method

.method public getMCatchUpTimer()F
    .locals 1

    .prologue
    .line 6156
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    return v0
.end method

.method public hasMCatchUpDistance()Z
    .locals 1

    .prologue
    .line 6183
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMCatchUpTimer()Z
    .locals 1

    .prologue
    .line 6164
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

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
    .line 6134
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6235
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6236
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6240
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6241
    :sswitch_0
    return-object p0

    .line 6246
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    .line 6247
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    goto :goto_0

    .line 6251
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    .line 6252
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    goto :goto_0

    .line 6236
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMCatchUpDistance(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 6178
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    .line 6179
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    .line 6180
    return-object p0
.end method

.method public setMCatchUpTimer(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 6159
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    .line 6160
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    .line 6161
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
    .line 6207
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6208
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpTimer_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6210
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6211
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RabbitInfo;->mCatchUpDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 6213
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6214
    return-void
.end method
