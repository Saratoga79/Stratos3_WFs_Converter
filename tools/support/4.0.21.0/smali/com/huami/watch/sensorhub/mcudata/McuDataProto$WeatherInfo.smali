.class public final Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "McuDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/mcudata/McuDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;


# instance fields
.field public aQIStr:Ljava/lang/String;

.field public aQIValue:I

.field public currentAir:I

.field public currentTemp:I

.field public currentUVI:I

.field public data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

.field public flag:I

.field public humidityStr:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public realtimestamp:I

.field public sunriseHour:I

.field public sunriseMin:I

.field public sunsetHour:I

.field public sunsetMin:I

.field public tempUnit:I

.field public windStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 425
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    .line 426
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    if-nez v0, :cond_1

    .line 348
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    .line 353
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    return-object v0

    .line 353
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 429
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->realtimestamp:I

    .line 430
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->flag:I

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->location:Ljava/lang/String;

    .line 432
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentAir:I

    .line 433
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentTemp:I

    .line 434
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIValue:I

    .line 435
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIStr:Ljava/lang/String;

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->windStr:Ljava/lang/String;

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->humidityStr:Ljava/lang/String;

    .line 438
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseHour:I

    .line 439
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseMin:I

    .line 440
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetHour:I

    .line 441
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetMin:I

    .line 442
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->tempUnit:I

    .line 443
    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentUVI:I

    .line 444
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 445
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 446
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 447
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 448
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 449
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 450
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 451
    iput-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->cachedSize:I

    .line 453
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 500
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 501
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->realtimestamp:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->flag:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->location:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentAir:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentTemp:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIValue:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->windStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->humidityStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    const/16 v1, 0xa

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseHour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    const/16 v1, 0xb

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseMin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    const/16 v1, 0xc

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetHour:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    const/16 v1, 0xd

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetMin:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    const/16 v1, 0xe

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->tempUnit:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    const/16 v1, 0xf

    iget v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentUVI:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_0

    .line 532
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_1

    .line 536
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_2

    .line 540
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_3

    .line 544
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_4

    .line 548
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_5

    .line 552
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_5
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v1, :cond_6

    .line 556
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_6
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
    .line 341
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 568
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 572
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    :sswitch_0
    return-object p0

    .line 578
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->realtimestamp:I

    goto :goto_0

    .line 582
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->flag:I

    goto :goto_0

    .line 586
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->location:Ljava/lang/String;

    goto :goto_0

    .line 590
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentAir:I

    goto :goto_0

    .line 594
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentTemp:I

    goto :goto_0

    .line 598
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIValue:I

    goto :goto_0

    .line 602
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIStr:Ljava/lang/String;

    goto :goto_0

    .line 606
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->windStr:Ljava/lang/String;

    goto :goto_0

    .line 610
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->humidityStr:Ljava/lang/String;

    goto :goto_0

    .line 614
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseHour:I

    goto :goto_0

    .line 618
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseMin:I

    goto :goto_0

    .line 622
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetHour:I

    goto :goto_0

    .line 626
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetMin:I

    goto :goto_0

    .line 630
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->tempUnit:I

    goto :goto_0

    .line 634
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentUVI:I

    goto :goto_0

    .line 638
    :sswitch_10
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_1

    .line 639
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 645
    :sswitch_11
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_2

    .line 646
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 652
    :sswitch_12
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_3

    .line 653
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 655
    :cond_3
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 659
    :sswitch_13
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_4

    .line 660
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 662
    :cond_4
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 666
    :sswitch_14
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_5

    .line 667
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 669
    :cond_5
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 673
    :sswitch_15
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_6

    .line 674
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 676
    :cond_6
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 680
    :sswitch_16
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-nez v1, :cond_7

    .line 681
    new-instance v1, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-direct {v1}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    .line 683
    :cond_7
    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
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
    .line 459
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->realtimestamp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 460
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->flag:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 461
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 462
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentAir:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 463
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentTemp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 464
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIValue:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 465
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->aQIStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 466
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->windStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 467
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->humidityStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 468
    const/16 v0, 0xa

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseHour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 469
    const/16 v0, 0xb

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunriseMin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 470
    const/16 v0, 0xc

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetHour:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 471
    const/16 v0, 0xd

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->sunsetMin:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 472
    const/16 v0, 0xe

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->tempUnit:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 473
    const/16 v0, 0xf

    iget v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->currentUVI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 474
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_0

    .line 475
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data1:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_1

    .line 478
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data2:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_2

    .line 481
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data3:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_3

    .line 484
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data4:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_4

    .line 487
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data5:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_5

    .line 490
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data6:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 492
    :cond_5
    iget-object v0, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    if-eqz v0, :cond_6

    .line 493
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherInfo;->data7:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$WeatherData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 495
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 496
    return-void
.end method
