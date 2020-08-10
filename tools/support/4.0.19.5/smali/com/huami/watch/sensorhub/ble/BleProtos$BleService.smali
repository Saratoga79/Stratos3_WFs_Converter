.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BleService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;


# instance fields
.field private bitField0_:I

.field public character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

.field private srvHandle_:I

.field public srvId:I

.field public srvUuid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    .line 154
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    if-nez v0, :cond_1

    .line 112
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    .line 117
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    .line 158
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvId:I

    .line 159
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvUuid:I

    .line 160
    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    .line 161
    invoke-static {}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;->emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->cachedSize:I

    .line 164
    return-object p0
.end method

.method public clearSrvHandle()Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    .line 145
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    .line 146
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 188
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 189
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvId:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 191
    const/4 v3, 0x2

    iget v4, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvUuid:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 193
    iget v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 194
    const/4 v3, 0x3

    iget v4, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    aget-object v0, v3, v1

    .line 200
    .local v0, "element":Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    if-eqz v0, :cond_1

    .line 201
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "element":Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public getSrvHandle()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    return v0
.end method

.method public hasSrvHandle()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

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
    .line 105
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 215
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 219
    invoke-virtual {p0, p1, v3}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 220
    :sswitch_0
    return-object p0

    .line 225
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 226
    .local v4, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iput v4, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvId:I

    goto :goto_0

    .line 238
    .end local v4    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvUuid:I

    goto :goto_0

    .line 242
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    .line 243
    iget v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    goto :goto_0

    .line 247
    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 249
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    if-nez v6, :cond_2

    move v1, v5

    .line 250
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    .line 252
    .local v2, "newArray":[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    if-eqz v1, :cond_1

    .line 253
    iget-object v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    :cond_1
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 256
    new-instance v6, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;-><init>()V

    aput-object v6, v2, v1

    .line 257
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 258
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    :cond_2
    iget-object v6, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    array-length v1, v6

    goto :goto_1

    .line 261
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    :cond_3
    new-instance v6, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;-><init>()V

    aput-object v6, v2, v1

    .line 262
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 263
    iput-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSrvHandle(I)Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    .line 137
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    .line 138
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v2, 0x1

    iget v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvId:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 171
    const/4 v2, 0x2

    iget v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvUuid:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 172
    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x3

    iget v3, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->srvHandle_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$BleService;->character:[Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;

    aget-object v0, v2, v1

    .line 178
    .local v0, "element":Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    if-eqz v0, :cond_1

    .line 179
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "element":Lcom/huami/watch/sensorhub/ble/BleProtos$BleCharacter;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 184
    return-void
.end method
