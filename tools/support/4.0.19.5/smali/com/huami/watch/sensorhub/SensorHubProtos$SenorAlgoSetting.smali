.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SenorAlgoSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;


# instance fields
.field private bitField0_:I

.field private mMainVersion_:I

.field private mMinorVersion_:I

.field private mReleaseVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7684
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 7685
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    .line 7686
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 2

    .prologue
    .line 7614
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    if-nez v0, :cond_1

    .line 7615
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7617
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    if-nez v0, :cond_0

    .line 7618
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    .line 7620
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7622
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    return-object v0

    .line 7620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7773
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7767
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7689
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7690
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    .line 7691
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    .line 7692
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    .line 7693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7694
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->cachedSize:I

    .line 7695
    return-object p0
.end method

.method public clearMMainVersion()Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1

    .prologue
    .line 7641
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    .line 7642
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7643
    return-object p0
.end method

.method public clearMMinorVersion()Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1

    .prologue
    .line 7660
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    .line 7661
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7662
    return-object p0
.end method

.method public clearMReleaseVersion()Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1

    .prologue
    .line 7679
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    .line 7680
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7681
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 7715
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7716
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7717
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7720
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7721
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7724
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7725
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7728
    :cond_2
    return v0
.end method

.method public getMMainVersion()I
    .locals 1

    .prologue
    .line 7630
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    return v0
.end method

.method public getMMinorVersion()I
    .locals 1

    .prologue
    .line 7649
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    return v0
.end method

.method public getMReleaseVersion()I
    .locals 1

    .prologue
    .line 7668
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    return v0
.end method

.method public hasMMainVersion()Z
    .locals 1

    .prologue
    .line 7638
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMMinorVersion()Z
    .locals 1

    .prologue
    .line 7657
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMReleaseVersion()Z
    .locals 1

    .prologue
    .line 7676
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 7608
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7737
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7741
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7742
    :sswitch_0
    return-object p0

    .line 7747
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    .line 7748
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    goto :goto_0

    .line 7752
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    .line 7753
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    goto :goto_0

    .line 7757
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    .line 7758
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    goto :goto_0

    .line 7737
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setMMainVersion(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7633
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    .line 7634
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7635
    return-object p0
.end method

.method public setMMinorVersion(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7652
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    .line 7653
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7654
    return-object p0
.end method

.method public setMReleaseVersion(I)Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7671
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    .line 7672
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    .line 7673
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
    .line 7701
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7702
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMainVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 7704
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7705
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mMinorVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 7707
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7708
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$SenorAlgoSetting;->mReleaseVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 7710
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7711
    return-void
.end method
