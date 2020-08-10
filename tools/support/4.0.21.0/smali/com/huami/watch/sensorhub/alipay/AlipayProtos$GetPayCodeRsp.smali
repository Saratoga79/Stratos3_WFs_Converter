.class public final Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "AlipayProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/alipay/AlipayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPayCodeRsp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;


# instance fields
.field public payCode:Ljava/lang/String;

.field public ret:I

.field public stringLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    .line 71
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    if-nez v0, :cond_1

    .line 50
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    sput-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->_emptyArray:[Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->ret:I

    .line 75
    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->stringLen:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->payCode:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->cachedSize:I

    .line 79
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 94
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->ret:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->stringLen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->payCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
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
    .line 43
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 109
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 120
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->ret:I

    goto :goto_0

    .line 148
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->stringLen:I

    goto :goto_0

    .line 152
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->payCode:Ljava/lang/String;

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 120
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
    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->ret:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 86
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->stringLen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 87
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/alipay/AlipayProtos$GetPayCodeRsp;->payCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 89
    return-void
.end method
