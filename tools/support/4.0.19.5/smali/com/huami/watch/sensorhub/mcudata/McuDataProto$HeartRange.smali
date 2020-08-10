.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeartRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;


# instance fields
.field public percent1:I

.field public percent2:I

.field public percent3:I

.field public percent4:I

.field public percent5:I

.field public percent6:I

.field public range1:I

.field public range2:I

.field public range3:I

.field public range4:I

.field public range5:I

.field public range6:I

.field public resethr:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 1045
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    .line 1046
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
    .locals 2

    .prologue
    .line 991
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    if-nez v0, :cond_1

    .line 992
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    .line 997
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    return-object v0

    .line 997
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1049
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->type:I

    .line 1050
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent1:I

    .line 1051
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent2:I

    .line 1052
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent3:I

    .line 1053
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent4:I

    .line 1054
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent5:I

    .line 1055
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent6:I

    .line 1056
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range1:I

    .line 1057
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range2:I

    .line 1058
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range3:I

    .line 1059
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range4:I

    .line 1060
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range5:I

    .line 1061
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range6:I

    .line 1062
    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->resethr:I

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1064
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->cachedSize:I

    .line 1065
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1090
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1091
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent1:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent2:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent3:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent4:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1101
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent5:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent6:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1105
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range1:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range2:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1109
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range3:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range4:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1113
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range5:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    const/16 v1, 0xd

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range6:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1117
    const/16 v1, 0xe

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->resethr:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
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
    .line 985
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1128
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1132
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1138
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1139
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1142
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->type:I

    goto :goto_0

    .line 1148
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent1:I

    goto :goto_0

    .line 1152
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent2:I

    goto :goto_0

    .line 1156
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent3:I

    goto :goto_0

    .line 1160
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent4:I

    goto :goto_0

    .line 1164
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent5:I

    goto :goto_0

    .line 1168
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent6:I

    goto :goto_0

    .line 1172
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range1:I

    goto :goto_0

    .line 1176
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range2:I

    goto :goto_0

    .line 1180
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range3:I

    goto :goto_0

    .line 1184
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range4:I

    goto :goto_0

    .line 1188
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range5:I

    goto :goto_0

    .line 1192
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range6:I

    goto :goto_0

    .line 1196
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->resethr:I

    goto :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 1071
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1072
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent1:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1073
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent2:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1074
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent3:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1075
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent4:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1076
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent5:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1077
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->percent6:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1078
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range1:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1079
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range2:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1080
    const/16 v0, 0xa

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range3:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1081
    const/16 v0, 0xb

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range4:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1082
    const/16 v0, 0xc

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range5:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1083
    const/16 v0, 0xd

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->range6:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1084
    const/16 v0, 0xe

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;->resethr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1085
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1086
    return-void
.end method
