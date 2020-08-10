.class public final Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/ble/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;


# instance fields
.field private bitField0_:I

.field public deviceBond:Z

.field public deviceConnect:Z

.field private mtu_:I

.field public peerDeviceType:I

.field private remoteAddr_:Ljava/lang/String;

.field private remoteName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 490
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->clear()Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    .line 491
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    if-nez v0, :cond_1

    .line 405
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    sput-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    .line 410
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->_emptyArray:[Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    return-object v0

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 495
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceConnect:Z

    .line 496
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceBond:Z

    .line 497
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->peerDeviceType:I

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    .line 500
    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->cachedSize:I

    .line 503
    return-object p0
.end method

.method public clearMtu()Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    .line 485
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 486
    return-object p0
.end method

.method public clearRemoteAddr()Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1

    .prologue
    .line 443
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    .line 444
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 445
    return-object p0
.end method

.method public clearRemoteName()Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1

    .prologue
    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    .line 466
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 467
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 526
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 527
    .local v0, "size":I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceConnect:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceBond:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->peerDeviceType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 542
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_2
    return v0
.end method

.method public getMtu()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMtu()Z
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoteAddr()Z
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoteName()Z
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

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
    .line 398
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 554
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 558
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :sswitch_0
    return-object p0

    .line 564
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceConnect:Z

    goto :goto_0

    .line 568
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceBond:Z

    goto :goto_0

    .line 572
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->peerDeviceType:I

    goto :goto_0

    .line 576
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    .line 577
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    goto :goto_0

    .line 581
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    .line 582
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    goto :goto_0

    .line 586
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    .line 587
    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    goto :goto_0

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setMtu(I)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    .line 477
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 478
    return-object p0
.end method

.method public setRemoteAddr(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    .line 436
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 437
    return-object p0
.end method

.method public setRemoteName(Ljava/lang/String;)Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    .line 458
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    .line 459
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
    .line 509
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceConnect:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 510
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->deviceBond:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 511
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->peerDeviceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 512
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteAddr_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 515
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 516
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->remoteName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 518
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 519
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/ble/BleProtos$DeviceEvent;->mtu_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 521
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 522
    return-void
.end method
