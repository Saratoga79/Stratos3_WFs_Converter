.class public final Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitcherWithTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;


# instance fields
.field public isAutoOn:Z

.field public ison:Z

.field public starthour:I

.field public startmin:I

.field public stophour:I

.field public stopmin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 96
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v0, :cond_1

    .line 66
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->ison:Z

    .line 100
    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->isAutoOn:Z

    .line 101
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->starthour:I

    .line 102
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->startmin:I

    .line 103
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stophour:I

    .line 104
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stopmin:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->cachedSize:I

    .line 107
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 125
    .local v0, "size":I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->ison:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->isAutoOn:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->starthour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->startmin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stophour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stopmin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
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
    .line 59
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 146
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :sswitch_0
    return-object p0

    .line 156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->ison:Z

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->isAutoOn:Z

    goto :goto_0

    .line 164
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->starthour:I

    goto :goto_0

    .line 168
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->startmin:I

    goto :goto_0

    .line 172
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stophour:I

    goto :goto_0

    .line 176
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stopmin:I

    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 113
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->ison:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 114
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->isAutoOn:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 115
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->starthour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 116
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->startmin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 117
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stophour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 118
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;->stopmin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 119
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 120
    return-void
.end method
