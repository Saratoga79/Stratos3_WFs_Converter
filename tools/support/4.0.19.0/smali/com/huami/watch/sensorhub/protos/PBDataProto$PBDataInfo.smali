.class public final Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "PBDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/PBDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PBDataInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;


# instance fields
.field private bitField0_:I

.field public name:I

.field private timestamp_:I

.field public trackId:I

.field public type:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->clear()Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    .line 60
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    .line 64
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->trackId:I

    .line 65
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->value:I

    .line 66
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->type:I

    .line 67
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    .line 68
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->name:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->cachedSize:I

    .line 71
    return-object p0
.end method

.method public clearTimestamp()Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    .line 51
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 90
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->trackId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->value:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->name:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 111
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :sswitch_0
    return-object p0

    .line 121
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->trackId:I

    goto :goto_0

    .line 125
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->value:I

    goto :goto_0

    .line 129
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->type:I

    goto :goto_0

    .line 133
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    .line 134
    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    goto :goto_0

    .line 138
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->name:I

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setTimestamp(I)Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    .line 43
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    .line 44
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
    .line 77
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->trackId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 78
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 80
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->timestamp_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 83
    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/PBDataProto$PBDataInfo;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 84
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 85
    return-void
.end method
