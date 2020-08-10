.class public final Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SedentaryOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;


# instance fields
.field public interval:I

.field public ison:Z

.field public region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

.field public region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    .line 340
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    if-nez v0, :cond_1

    .line 316
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 343
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->ison:Z

    .line 344
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->interval:I

    .line 345
    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 346
    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 347
    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->cachedSize:I

    .line 349
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 369
    .local v0, "size":I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->ison:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->interval:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_1
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
    .line 309
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 390
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    :sswitch_0
    return-object p0

    .line 400
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->ison:Z

    goto :goto_0

    .line 404
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->interval:I

    goto :goto_0

    .line 408
    :sswitch_3
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-nez v1, :cond_1

    .line 409
    new-instance v1, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 415
    :sswitch_4
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-nez v1, :cond_2

    .line 416
    new-instance v1, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 355
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->ison:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 356
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->interval:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 357
    iget-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region1:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;->region2:Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 363
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 364
    return-void
.end method
