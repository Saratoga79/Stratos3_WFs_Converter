.class public final Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "NFCProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/nfc/NFCProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NFCCardInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;


# instance fields
.field public accessName:Ljava/lang/String;

.field public aid:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->clear()Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    .line 42
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->aid:[B

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->type:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->accessName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->cachedSize:I

    .line 50
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    .local v0, "size":I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->aid:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->accessName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 80
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :sswitch_0
    return-object p0

    .line 90
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->aid:[B

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 95
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->type:I

    goto :goto_0

    .line 106
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->accessName:Ljava/lang/String;

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->aid:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 57
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 58
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->accessName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 60
    return-void
.end method
