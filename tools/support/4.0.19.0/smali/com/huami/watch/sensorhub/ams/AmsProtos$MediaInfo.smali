.class public final Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "AmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ams/AmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;


# instance fields
.field private album_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private bitField0_:I

.field private duration_:I

.field private elapsedTime_:I

.field private exception_:I

.field private playbackRate_:I

.field private playbackState_:I

.field private playername_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field public updateCmd:I

.field private volume_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->clear()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    .line 263
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    if-nez v0, :cond_1

    .line 44
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 267
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->updateCmd:I

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    .line 271
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    .line 273
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    .line 274
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    .line 275
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    .line 276
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    .line 277
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->cachedSize:I

    .line 280
    return-object p0
.end method

.method public clearAlbum()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    .line 121
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 122
    return-object p0
.end method

.method public clearArtist()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    .line 99
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public clearDuration()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    .line 140
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 141
    return-object p0
.end method

.method public clearElapsedTime()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    .line 219
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 220
    return-object p0
.end method

.method public clearException()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    .line 257
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 258
    return-object p0
.end method

.method public clearPlaybackRate()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    .line 200
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 201
    return-object p0
.end method

.method public clearPlaybackState()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    .line 181
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 182
    return-object p0
.end method

.method public clearPlayername()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    .line 162
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 163
    return-object p0
.end method

.method public clearTitle()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public clearVolume()Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    .line 238
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 239
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 322
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 323
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->updateCmd:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 330
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 334
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 338
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 342
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 346
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 350
    const/16 v1, 0x8

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_6
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 354
    const/16 v1, 0x9

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_7
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 358
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_8
    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 362
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_9
    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    return v0
.end method

.method public getElapsedTime()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    return v0
.end method

.method public getException()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    return v0
.end method

.method public getPlayername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    return v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasElapsedTime()Z
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasException()Z
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlaybackRate()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlaybackState()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayername()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 73
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolume()Z
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 37
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 374
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    :sswitch_0
    return-object p0

    .line 384
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 385
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->updateCmd:I

    goto :goto_0

    .line 397
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    .line 398
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 402
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    .line 403
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 407
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    .line 408
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 412
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    .line 413
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 417
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    .line 418
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 422
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 423
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 428
    :pswitch_1
    iput v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    .line 429
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 435
    .end local v1    # "value":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    .line 436
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto :goto_0

    .line 440
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    .line 441
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto/16 :goto_0

    .line 445
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    .line 446
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto/16 :goto_0

    .line 450
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    .line 451
    iget v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    goto/16 :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
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
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 114
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
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
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    .line 91
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setDuration(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    .line 132
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 133
    return-object p0
.end method

.method public setElapsedTime(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    .line 211
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 212
    return-object p0
.end method

.method public setException(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    .line 249
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 250
    return-object p0
.end method

.method public setPlaybackRate(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    .line 192
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 193
    return-object p0
.end method

.method public setPlaybackState(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    .line 173
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public setPlayername(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    .line 154
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 155
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    .line 69
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 70
    return-object p0
.end method

.method public setVolume(I)Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    .line 230
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    .line 231
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
    .line 286
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->updateCmd:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 287
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 290
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->artist_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 293
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->album_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 296
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->duration_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 299
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 300
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playername_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 302
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 303
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackState_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 305
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 306
    const/16 v0, 0x8

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->playbackRate_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 308
    :cond_6
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 309
    const/16 v0, 0x9

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->elapsedTime_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 311
    :cond_7
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 312
    const/16 v0, 0xa

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->volume_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 314
    :cond_8
    iget v0, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 315
    const/16 v0, 0xb

    iget v1, p0, Lcom/huami/watch/sensorhub/ams/AmsProtos$MediaInfo;->exception_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 317
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 318
    return-void
.end method
