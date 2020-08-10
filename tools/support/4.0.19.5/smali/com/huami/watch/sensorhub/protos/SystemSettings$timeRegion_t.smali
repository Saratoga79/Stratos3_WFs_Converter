.class public final Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "timeRegion_t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;


# instance fields
.field public startHour:I

.field public startMin:I

.field public stopHour:I

.field public stopMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 225
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 226
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-nez v0, :cond_1

    .line 202
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    .line 207
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startHour:I

    .line 230
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startMin:I

    .line 231
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopHour:I

    .line 232
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopMin:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->cachedSize:I

    .line 235
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 251
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startHour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startMin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopHour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopMin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
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
    .line 195
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 268
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :sswitch_0
    return-object p0

    .line 278
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startHour:I

    goto :goto_0

    .line 282
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startMin:I

    goto :goto_0

    .line 286
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopHour:I

    goto :goto_0

    .line 290
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopMin:I

    goto :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 241
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startHour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 242
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->startMin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 243
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopHour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 244
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$timeRegion_t;->stopMin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 245
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 246
    return-void
.end method
