.class public final Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "AnncProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ancc/AnncProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;


# instance fields
.field private appId_:Ljava/lang/String;

.field private bitField0_:I

.field public categoryId:I

.field private msg_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 148
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->clear()Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    .line 149
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    if-nez v0, :cond_1

    .line 63
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 153
    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->uid:I

    .line 154
    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->categoryId:I

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->cachedSize:I

    .line 160
    return-object p0
.end method

.method public clearAppId()Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    .line 99
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public clearMsg()Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1

    .prologue
    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    .line 143
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 144
    return-object p0
.end method

.method public clearTitle()Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    .line 121
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 122
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 183
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->uid:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->categoryId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    iget v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 192
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 196
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_2
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMsg()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 56
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 208
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    :sswitch_0
    return-object p0

    .line 218
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->uid:I

    goto :goto_0

    .line 222
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 223
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->categoryId:I

    goto :goto_0

    .line 276
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    .line 277
    iget v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    goto :goto_0

    .line 281
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    .line 282
    iget v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    goto :goto_0

    .line 286
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    .line 287
    iget v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 223
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppId(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    .line 135
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 136
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    .line 114
    return-object p0
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
    .line 166
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 167
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->categoryId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 168
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->appId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 171
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 174
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 175
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ancc/AnncProtos$NotificationInfo;->msg_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 177
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 178
    return-void
.end method
