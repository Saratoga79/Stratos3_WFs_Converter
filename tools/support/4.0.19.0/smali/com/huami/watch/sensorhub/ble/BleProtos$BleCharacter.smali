.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BleCharacter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;


# instance fields
.field private bitField0_:I

.field private charHandle_:I

.field public charUuid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    .line 325
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    if-nez v0, :cond_1

    .line 289
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    .line 294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    .line 329
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charUuid:I

    .line 330
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->cachedSize:I

    .line 333
    return-object p0
.end method

.method public clearCharHandle()Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    .line 319
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    .line 320
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 349
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charUuid:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_0
    return v0
.end method

.method public getCharHandle()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    return v0
.end method

.method public hasCharHandle()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

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
    .line 282
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 364
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 368
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    :sswitch_0
    return-object p0

    .line 374
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charUuid:I

    goto :goto_0

    .line 378
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    .line 379
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    goto :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCharHandle(I)Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    .line 311
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    .line 312
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
    .line 339
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charUuid:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 340
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->charHandle_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 343
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 344
    return-void
.end method
