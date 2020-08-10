.class public final Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;


# instance fields
.field public isEnabled:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 461
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    .line 462
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .locals 2

    .prologue
    .line 443
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    if-nez v0, :cond_1

    .line 444
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    .line 449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->type:I

    .line 466
    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->isEnabled:Z

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->cachedSize:I

    .line 469
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 482
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 483
    .local v0, "size":I
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->isEnabled:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
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
    .line 437
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 496
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :sswitch_0
    return-object p0

    .line 506
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->type:I

    goto :goto_0

    .line 510
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->isEnabled:Z

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 475
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 476
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->isEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 477
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 478
    return-void
.end method
