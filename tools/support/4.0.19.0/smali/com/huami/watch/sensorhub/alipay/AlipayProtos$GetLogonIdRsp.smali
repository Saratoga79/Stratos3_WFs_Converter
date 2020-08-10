.class public final Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "AlipayProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/alipay/AlipayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetLogonIdRsp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;


# instance fields
.field public logonId:Ljava/lang/String;

.field public ret:I

.field public stringLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 549
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    .line 550
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
    .locals 2

    .prologue
    .line 528
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    if-nez v0, :cond_1

    .line 529
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    sput-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    .line 534
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    return-object v0

    .line 534
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 553
    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->ret:I

    .line 554
    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->stringLen:I

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->logonId:Ljava/lang/String;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->cachedSize:I

    .line 558
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 573
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->ret:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->stringLen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->logonId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
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
    .line 522
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 588
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    :sswitch_0
    return-object p0

    .line 598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 599
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 621
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->ret:I

    goto :goto_0

    .line 627
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->stringLen:I

    goto :goto_0

    .line 631
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->logonId:Ljava/lang/String;

    goto :goto_0

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 564
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->ret:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 565
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->stringLen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 566
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetLogonIdRsp;->logonId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 567
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 568
    return-void
.end method
