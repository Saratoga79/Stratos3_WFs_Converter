.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotifyCharacteristicChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;


# instance fields
.field public charHandle:I

.field public data:[B

.field public datalen:I

.field public srvId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 759
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    .line 760
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    if-nez v0, :cond_1

    .line 736
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    .line 741
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    return-object v0

    .line 741
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 763
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->srvId:I

    .line 764
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->charHandle:I

    .line 765
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->datalen:I

    .line 766
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->data:[B

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->cachedSize:I

    .line 769
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 784
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 785
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->srvId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 787
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->charHandle:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 789
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->datalen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->data:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 793
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
    .line 729
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 802
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 806
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 807
    :sswitch_0
    return-object p0

    .line 812
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 813
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 819
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->srvId:I

    goto :goto_0

    .line 825
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->charHandle:I

    goto :goto_0

    .line 829
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->datalen:I

    goto :goto_0

    .line 833
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->data:[B

    goto :goto_0

    .line 802
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 813
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
    .line 775
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->srvId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 776
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->charHandle:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 777
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->datalen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 778
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$NotifyCharacteristicChange;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 779
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 780
    return-void
.end method
