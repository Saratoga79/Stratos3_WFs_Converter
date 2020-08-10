.class public final Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "ManualHeartMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasureHeartInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;


# instance fields
.field public heartvalue:I

.field public timestamp:I

.field public timezone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->clear()Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    .line 36
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timestamp:I

    .line 40
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timezone:I

    .line 41
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->heartvalue:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 59
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timestamp:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timezone:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->heartvalue:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    return v0
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 74
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :sswitch_0
    return-object p0

    .line 84
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timestamp:I

    goto :goto_0

    .line 88
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timezone:I

    goto :goto_0

    .line 92
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->heartvalue:I

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 50
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timestamp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 51
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->timezone:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 52
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/ManualHeartMeasure$MeasureHeartInfo;->heartvalue:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 53
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 54
    return-void
.end method
