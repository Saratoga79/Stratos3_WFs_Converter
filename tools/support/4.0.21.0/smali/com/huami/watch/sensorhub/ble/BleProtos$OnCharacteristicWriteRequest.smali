.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnCharacteristicWriteRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;


# instance fields
.field public charHandle:I

.field public data:[B

.field public datalen:I

.field public srvId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 636
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    .line 637
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
    .locals 2

    .prologue
    .line 612
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    if-nez v0, :cond_1

    .line 613
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    .line 618
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    return-object v0

    .line 618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->srvId:I

    .line 641
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->charHandle:I

    .line 642
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->datalen:I

    .line 643
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->data:[B

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->cachedSize:I

    .line 646
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 661
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 662
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->srvId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->charHandle:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 666
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->datalen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 668
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->data:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
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
    .line 606
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 679
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 683
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    :sswitch_0
    return-object p0

    .line 689
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 690
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->srvId:I

    goto :goto_0

    .line 702
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->charHandle:I

    goto :goto_0

    .line 706
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->datalen:I

    goto :goto_0

    .line 710
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->data:[B

    goto :goto_0

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 652
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->srvId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 653
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->charHandle:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 654
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->datalen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 655
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$OnCharacteristicWriteRequest;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 656
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 657
    return-void
.end method
