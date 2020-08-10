.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;


# instance fields
.field public airConFrom:I

.field public airConTo:I

.field public highestTemp:I

.field public lowestTemp:I

.field public weatherStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 250
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v0, :cond_1

    .line 223
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 228
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->highestTemp:I

    .line 254
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->lowestTemp:I

    .line 255
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConFrom:I

    .line 256
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConTo:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->weatherStr:Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->cachedSize:I

    .line 260
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 277
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->highestTemp:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->lowestTemp:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConFrom:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConTo:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->weatherStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
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
    .line 216
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 296
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    :sswitch_0
    return-object p0

    .line 306
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->highestTemp:I

    goto :goto_0

    .line 310
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->lowestTemp:I

    goto :goto_0

    .line 314
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConFrom:I

    goto :goto_0

    .line 318
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConTo:I

    goto :goto_0

    .line 322
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->weatherStr:Ljava/lang/String;

    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 266
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->highestTemp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 267
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->lowestTemp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 268
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConFrom:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 269
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->airConTo:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 270
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;->weatherStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 272
    return-void
.end method
