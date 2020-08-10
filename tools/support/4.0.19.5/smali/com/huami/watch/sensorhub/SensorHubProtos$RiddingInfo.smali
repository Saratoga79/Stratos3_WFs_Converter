.class public final Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SensorHubProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/SensorHubProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RiddingInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;


# instance fields
.field private bitField0_:I

.field private mDistance3DAscend_:F

.field private mDistance3DDescend_:F

.field private mDistance3DFlat_:F

.field private mSpeed3D_:F

.field private mTimeAscend_:I

.field private mTimeDescend_:I

.field private mTimeFlat_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3781
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 3782
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->clear()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    .line 3783
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 2

    .prologue
    .line 3635
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    if-nez v0, :cond_1

    .line 3636
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3638
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    if-nez v0, :cond_0

    .line 3639
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    .line 3641
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3643
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    return-object v0

    .line 3641
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3922
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3916
    new-instance v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3786
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3787
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    .line 3788
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    .line 3789
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    .line 3790
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    .line 3791
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    .line 3792
    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    .line 3793
    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    .line 3794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3795
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->cachedSize:I

    .line 3796
    return-object p0
.end method

.method public clearMDistance3DAscend()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3662
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    .line 3663
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3664
    return-object p0
.end method

.method public clearMDistance3DDescend()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3719
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    .line 3720
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3721
    return-object p0
.end method

.method public clearMDistance3DFlat()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3757
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    .line 3758
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3759
    return-object p0
.end method

.method public clearMSpeed3D()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3681
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    .line 3682
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3683
    return-object p0
.end method

.method public clearMTimeAscend()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3700
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    .line 3701
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3702
    return-object p0
.end method

.method public clearMTimeDescend()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3738
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    .line 3739
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3740
    return-object p0
.end method

.method public clearMTimeFlat()Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1

    .prologue
    .line 3776
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    .line 3777
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3778
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 3828
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3829
    .local v0, "size":I
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3830
    const/4 v1, 0x1

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3833
    :cond_0
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3834
    const/4 v1, 0x2

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3837
    :cond_1
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3838
    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3841
    :cond_2
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3842
    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3845
    :cond_3
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3846
    const/4 v1, 0x5

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3849
    :cond_4
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3850
    const/4 v1, 0x6

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3853
    :cond_5
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3854
    const/4 v1, 0x7

    iget v2, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3857
    :cond_6
    return v0
.end method

.method public getMDistance3DAscend()F
    .locals 1

    .prologue
    .line 3651
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    return v0
.end method

.method public getMDistance3DDescend()F
    .locals 1

    .prologue
    .line 3708
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    return v0
.end method

.method public getMDistance3DFlat()F
    .locals 1

    .prologue
    .line 3746
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    return v0
.end method

.method public getMSpeed3D()F
    .locals 1

    .prologue
    .line 3670
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    return v0
.end method

.method public getMTimeAscend()I
    .locals 1

    .prologue
    .line 3689
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    return v0
.end method

.method public getMTimeDescend()I
    .locals 1

    .prologue
    .line 3727
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    return v0
.end method

.method public getMTimeFlat()I
    .locals 1

    .prologue
    .line 3765
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    return v0
.end method

.method public hasMDistance3DAscend()Z
    .locals 1

    .prologue
    .line 3659
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDistance3DDescend()Z
    .locals 1

    .prologue
    .line 3716
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDistance3DFlat()Z
    .locals 1

    .prologue
    .line 3754
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMSpeed3D()Z
    .locals 1

    .prologue
    .line 3678
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTimeAscend()Z
    .locals 1

    .prologue
    .line 3697
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTimeDescend()Z
    .locals 1

    .prologue
    .line 3735
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMTimeFlat()Z
    .locals 1

    .prologue
    .line 3773
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 3629
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3865
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3866
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3870
    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3871
    :sswitch_0
    return-object p0

    .line 3876
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    .line 3877
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3881
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    .line 3882
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3886
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    .line 3887
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3891
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    .line 3892
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3896
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    .line 3897
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3901
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    .line 3902
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3906
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    .line 3907
    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    goto :goto_0

    .line 3866
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setMDistance3DAscend(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3654
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    .line 3655
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3656
    return-object p0
.end method

.method public setMDistance3DDescend(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3711
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    .line 3712
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3713
    return-object p0
.end method

.method public setMDistance3DFlat(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3749
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    .line 3750
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3751
    return-object p0
.end method

.method public setMSpeed3D(F)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3673
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    .line 3674
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3675
    return-object p0
.end method

.method public setMTimeAscend(I)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3692
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    .line 3693
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3694
    return-object p0
.end method

.method public setMTimeDescend(I)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3730
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    .line 3731
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3732
    return-object p0
.end method

.method public setMTimeFlat(I)Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3768
    iput p1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    .line 3769
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    .line 3770
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
    .line 3802
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3803
    const/4 v0, 0x1

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DAscend_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3805
    :cond_0
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3806
    const/4 v0, 0x2

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mSpeed3D_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3808
    :cond_1
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3809
    const/4 v0, 0x3

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeAscend_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3811
    :cond_2
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3812
    const/4 v0, 0x4

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DDescend_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3814
    :cond_3
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3815
    const/4 v0, 0x5

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeDescend_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3817
    :cond_4
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3818
    const/4 v0, 0x6

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mDistance3DFlat_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3820
    :cond_5
    iget v0, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3821
    const/4 v0, 0x7

    iget v1, p0, Lcom/huami/watch/sensorhub/SensorHubProtos$RiddingInfo;->mTimeFlat_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 3823
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3824
    return-void
.end method
