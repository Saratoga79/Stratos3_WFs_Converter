.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReminderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;


# instance fields
.field public action:I

.field public body:Ljava/lang/String;

.field public flag:I

.field public icon:I

.field public index:I

.field public startTime:I

.field public stopTime:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 869
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    .line 870
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
    .locals 2

    .prologue
    .line 833
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    if-nez v0, :cond_1

    .line 834
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    if-nez v0, :cond_0

    .line 837
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    .line 839
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    return-object v0

    .line 839
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 873
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->action:I

    .line 874
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->index:I

    .line 875
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->flag:I

    .line 876
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->startTime:I

    .line 877
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->stopTime:I

    .line 878
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->icon:I

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->title:Ljava/lang/String;

    .line 880
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->body:Ljava/lang/String;

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 882
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->cachedSize:I

    .line 883
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 902
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 903
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->action:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->index:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->flag:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 909
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->startTime:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->stopTime:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 913
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->icon:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 915
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 917
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->body:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 919
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
    .line 827
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 928
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 932
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    :sswitch_0
    return-object p0

    .line 938
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->action:I

    goto :goto_0

    .line 942
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->index:I

    goto :goto_0

    .line 946
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->flag:I

    goto :goto_0

    .line 950
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->startTime:I

    goto :goto_0

    .line 954
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->stopTime:I

    goto :goto_0

    .line 958
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->icon:I

    goto :goto_0

    .line 962
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 966
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->body:Ljava/lang/String;

    goto :goto_0

    .line 928
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 889
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->action:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 890
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->index:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 891
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->flag:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 892
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->startTime:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 893
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->stopTime:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 894
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->icon:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 895
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 896
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$ReminderInfo;->body:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 897
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 898
    return-void
.end method
