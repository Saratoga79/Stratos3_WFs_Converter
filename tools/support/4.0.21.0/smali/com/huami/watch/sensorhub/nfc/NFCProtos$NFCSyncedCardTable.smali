.class public final Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "NFCProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/nfc/NFCProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NFCSyncedCardTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;


# instance fields
.field public activeIndex:I

.field public allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->clear()Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    .line 150
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    if-nez v0, :cond_1

    .line 132
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    sput-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->_emptyArray:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->activeIndex:I

    .line 154
    invoke-static {}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;->emptyArray()[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->cachedSize:I

    .line 157
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 177
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 178
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->activeIndex:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 180
    iget-object v3, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    aget-object v0, v3, v1

    .line 183
    .local v0, "element":Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    if-eqz v0, :cond_0

    .line 184
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "element":Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .end local v1    # "i":I
    :cond_1
    return v2
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
    .line 125
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 198
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 202
    invoke-virtual {p0, p1, v3}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    :sswitch_0
    return-object p0

    .line 208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->activeIndex:I

    goto :goto_0

    .line 212
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 214
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    if-nez v5, :cond_2

    move v1, v4

    .line 215
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    .line 217
    .local v2, "newArray":[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    if-eqz v1, :cond_1

    .line 218
    iget-object v5, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 221
    new-instance v5, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    invoke-direct {v5}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;-><init>()V

    aput-object v5, v2, v1

    .line 222
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 223
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    :cond_2
    iget-object v5, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    array-length v1, v5

    goto :goto_1

    .line 226
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    :cond_3
    new-instance v5, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    invoke-direct {v5}, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;-><init>()V

    aput-object v5, v2, v1

    .line 227
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 228
    iput-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    .line 163
    const/4 v2, 0x1

    iget v3, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->activeIndex:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 164
    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCSyncedCardTable;->allcards:[Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;

    aget-object v0, v2, v1

    .line 167
    .local v0, "element":Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    if-eqz v0, :cond_0

    .line 168
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "element":Lcom/huami/watch/sensorhub/nfc/NFCProtos$NFCCardInfo;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 173
    return-void
.end method
