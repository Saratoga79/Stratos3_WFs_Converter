.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;


# instance fields
.field public brithday:I

.field public brithmonth:I

.field public brithyear:I

.field public gender:I

.field public goal:I

.field public height:I

.field public location:I

.field public uid:J

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    .line 93
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    if-nez v0, :cond_1

    .line 54
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->uid:J

    .line 97
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithyear:I

    .line 98
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithmonth:I

    .line 99
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithday:I

    .line 100
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->gender:I

    .line 101
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->height:I

    .line 102
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->weight:I

    .line 103
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->goal:I

    .line 104
    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->location:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->cachedSize:I

    .line 107
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 128
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->uid:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithyear:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithmonth:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithday:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->gender:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->height:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->weight:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->goal:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->location:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
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
    .line 47
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 155
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    :sswitch_0
    return-object p0

    .line 165
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->uid:J

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithyear:I

    goto :goto_0

    .line 173
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithmonth:I

    goto :goto_0

    .line 177
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithday:I

    goto :goto_0

    .line 181
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->gender:I

    goto :goto_0

    .line 185
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->height:I

    goto :goto_0

    .line 189
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->weight:I

    goto :goto_0

    .line 193
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->goal:I

    goto :goto_0

    .line 197
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->location:I

    goto :goto_0

    .line 155
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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 114
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithyear:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 115
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithmonth:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 116
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->brithday:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 117
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->gender:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 118
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 119
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->weight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 120
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->goal:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 121
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$UserInfo;->location:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 122
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 123
    return-void
.end method
