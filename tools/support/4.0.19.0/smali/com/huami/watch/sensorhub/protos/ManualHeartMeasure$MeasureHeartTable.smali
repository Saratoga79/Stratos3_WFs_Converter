.class public final Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "ManualHeartMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasureHeartTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;


# instance fields
.field public alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->clear()Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    .line 133
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    if-nez v0, :cond_1

    .line 118
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->emptyArray()[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->cachedSize:I

    .line 139
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 159
    .local v2, "size":I
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    aget-object v0, v3, v1

    .line 162
    .local v0, "element":Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    if-eqz v0, :cond_0

    .line 163
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "element":Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .end local v1    # "i":I
    :cond_1
    return v2
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
    .line 111
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 177
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 181
    invoke-virtual {p0, p1, v3}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    :sswitch_0
    return-object p0

    .line 187
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 189
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    if-nez v5, :cond_2

    move v1, v4

    .line 190
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    .line 192
    .local v2, "newArray":[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    if-eqz v1, :cond_1

    .line 193
    iget-object v5, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 196
    new-instance v5, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    invoke-direct {v5}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;-><init>()V

    aput-object v5, v2, v1

    .line 197
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 198
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 189
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    :cond_2
    iget-object v5, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    array-length v1, v5

    goto :goto_1

    .line 201
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    :cond_3
    new-instance v5, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    invoke-direct {v5}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;-><init>()V

    aput-object v5, v2, v1

    .line 202
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 203
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 145
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartTable;->alldata:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    aget-object v0, v2, v1

    .line 148
    .local v0, "element":Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    if-eqz v0, :cond_0

    .line 149
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "element":Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 154
    return-void
.end method
