.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BleServiceRequestInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;


# instance fields
.field public srvId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    .line 37
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->srvId:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->cachedSize:I

    .line 43
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 56
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->srvId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
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
    .line 15
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 67
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :sswitch_0
    return-object p0

    .line 77
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 78
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->srvId:I

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 78
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
    .line 49
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleServiceRequestInfo;->srvId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 50
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 51
    return-void
.end method
