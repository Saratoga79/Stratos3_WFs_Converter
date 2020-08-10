.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TennisInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;


# instance fields
.field public mSwingCnt:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6025
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 6026
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    .line 6027
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
    .locals 2

    .prologue
    .line 6011
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    if-nez v0, :cond_1

    .line 6012
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6014
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    if-nez v0, :cond_0

    .line 6015
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    .line 6017
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6019
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    return-object v0

    .line 6017
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6130
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6124
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
    .locals 1

    .prologue
    .line 6030
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    .line 6031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6032
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->cachedSize:I

    .line 6033
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 6049
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 6050
    .local v3, "size":I
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 6051
    const/4 v0, 0x0

    .line 6052
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 6053
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    aget v1, v4, v2

    .line 6054
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 6052
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6057
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 6058
    iget-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 6060
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    return v3
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
    .line 6005
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 6068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 6069
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 6073
    invoke-virtual {p0, p1, v6}, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6074
    :sswitch_0
    return-object p0

    .line 6079
    :sswitch_1
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6081
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 6082
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6083
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 6084
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6086
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 6087
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6088
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6086
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6081
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v1, v8

    goto :goto_1

    .line 6091
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6092
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    goto :goto_0

    .line 6096
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 6097
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 6099
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 6100
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 6101
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 6102
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    .line 6103
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6105
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6106
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 6107
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 6108
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 6109
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6111
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 6112
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v8

    aput v8, v4, v1

    .line 6111
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6106
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v1, v8

    goto :goto_4

    .line 6114
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    .line 6115
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6039
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 6040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 6041
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$TennisInfo;->mSwingCnt:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 6040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6044
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6045
    return-void
.end method
