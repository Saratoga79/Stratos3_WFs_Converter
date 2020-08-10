.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;


# instance fields
.field public action:I

.field public flag:I

.field public hours:I

.field public minutes:I

.field public repeat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 735
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    .line 736
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    if-nez v0, :cond_1

    .line 709
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    if-nez v0, :cond_0

    .line 712
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    .line 714
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->action:I

    .line 740
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->flag:I

    .line 741
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->hours:I

    .line 742
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->minutes:I

    .line 743
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->repeat:I

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 745
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->cachedSize:I

    .line 746
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 762
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 763
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->action:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->flag:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->hours:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->minutes:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->repeat:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
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
    .line 702
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 782
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 786
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    :sswitch_0
    return-object p0

    .line 792
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->action:I

    goto :goto_0

    .line 796
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->flag:I

    goto :goto_0

    .line 800
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->hours:I

    goto :goto_0

    .line 804
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->minutes:I

    goto :goto_0

    .line 808
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->repeat:I

    goto :goto_0

    .line 782
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

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->action:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 753
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->flag:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 754
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->hours:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 755
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->minutes:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 756
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$AlarmInfo;->repeat:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 757
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 758
    return-void
.end method
