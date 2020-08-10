.class public final Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "AlipayProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/alipay/AlipayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetBindingSatusRsp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;


# instance fields
.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    .line 321
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    if-nez v0, :cond_1

    .line 306
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    sput-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    .line 311
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->status:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->cachedSize:I

    .line 327
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 340
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->status:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
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
    .line 299
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 351
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    :sswitch_0
    return-object p0

    .line 361
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 362
    .local v1, "value":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 373
    :sswitch_2
    iput v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->status:I

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 362
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0xa5 -> :sswitch_2
        0xff -> :sswitch_2
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
    .line 333
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetBindingSatusRsp;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 334
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 335
    return-void
.end method
