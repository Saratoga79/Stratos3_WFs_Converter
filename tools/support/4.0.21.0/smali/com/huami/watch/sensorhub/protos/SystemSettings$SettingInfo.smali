.class public final Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
.super Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/sensorhub/protos/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<",
        "Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;


# instance fields
.field private bitField0_:I

.field public bllevel:I

.field private calorietarget_:I

.field public dialsecbrush:Z

.field public heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

.field public isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

.field private isalldayheart_:Z

.field public iscallvib:Z

.field private iscaloriereminder_:Z

.field public isdcunlock:Z

.field public ismsgvib:Z

.field private isstepreminder_:Z

.field public lan:I

.field public lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

.field public mielformat:I

.field public navimode:I

.field public sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

.field public silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

.field public sportstartreminder:Z

.field public sportstopreminder:Z

.field public timeformat:I

.field public viblevel:I

.field public watchfaceId:I

.field public widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

.field public wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;-><init>()V

    .line 685
    invoke-virtual {p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    .line 686
    return-void
.end method

.method public static emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    if-nez v0, :cond_1

    .line 536
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_0
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    sput-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    .line 541
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :cond_1
    sget-object v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->_emptyArray:[Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    return-object v0

    .line 541
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    invoke-direct {v0}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 689
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 690
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->viblevel:I

    .line 691
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bllevel:I

    .line 692
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->navimode:I

    .line 694
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lan:I

    .line 695
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->timeformat:I

    .line 696
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mielformat:I

    .line 697
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 698
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 699
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscallvib:Z

    .line 700
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->ismsgvib:Z

    .line 701
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isdcunlock:Z

    .line 702
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->dialsecbrush:Z

    .line 703
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstartreminder:Z

    .line 704
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstopreminder:Z

    .line 705
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 706
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->watchfaceId:I

    .line 707
    invoke-static {}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;->emptyArray()[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    .line 708
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    .line 709
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    .line 710
    iput v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    .line 711
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    .line 712
    iput-boolean v1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    .line 713
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    .line 714
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->cachedSize:I

    .line 716
    return-object p0
.end method

.method public clearCalorietarget()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    .line 639
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 640
    return-object p0
.end method

.method public clearIsalldayheart()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    .line 617
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 618
    return-object p0
.end method

.method public clearIscaloriereminder()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    .line 677
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 678
    return-object p0
.end method

.method public clearIsstepreminder()Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    .line 658
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 659
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 778
    invoke-super {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 779
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->viblevel:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 781
    const/4 v3, 0x2

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bllevel:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 783
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v3, :cond_0

    .line 784
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 787
    :cond_0
    const/4 v3, 0x4

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->navimode:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 789
    const/4 v3, 0x5

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lan:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 791
    const/4 v3, 0x6

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->timeformat:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 793
    const/4 v3, 0x7

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mielformat:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 795
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v3, :cond_1

    .line 796
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 799
    :cond_1
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v3, :cond_2

    .line 800
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 803
    :cond_2
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscallvib:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 805
    const/16 v3, 0xb

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->ismsgvib:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 807
    const/16 v3, 0xc

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isdcunlock:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 809
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->dialsecbrush:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 811
    const/16 v3, 0xe

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstartreminder:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 813
    const/16 v3, 0xf

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstopreminder:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 815
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v3, :cond_3

    .line 816
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 819
    :cond_3
    const/16 v3, 0x11

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->watchfaceId:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 821
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 823
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    aget-object v0, v3, v1

    .line 824
    .local v0, "element":Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    if-eqz v0, :cond_4

    .line 825
    const/16 v3, 0x12

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 822
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    .end local v0    # "element":Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 831
    const/16 v3, 0x13

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 834
    :cond_6
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    if-eqz v3, :cond_7

    .line 835
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 838
    :cond_7
    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 839
    const/16 v3, 0x15

    iget v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 842
    :cond_8
    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    .line 843
    const/16 v3, 0x16

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 846
    :cond_9
    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_a

    .line 847
    const/16 v3, 0x17

    iget-boolean v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 850
    :cond_a
    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    if-eqz v3, :cond_b

    .line 851
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 854
    :cond_b
    return v2
.end method

.method public getCalorietarget()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    return v0
.end method

.method public getIsalldayheart()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    return v0
.end method

.method public getIscaloriereminder()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    return v0
.end method

.method public getIsstepreminder()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    return v0
.end method

.method public hasCalorietarget()Z
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsalldayheart()Z
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIscaloriereminder()Z
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsstepreminder()Z
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

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
    .line 529
    invoke-virtual {p0, p1}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 862
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 863
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 867
    invoke-virtual {p0, p1, v3}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 868
    :sswitch_0
    return-object p0

    .line 873
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->viblevel:I

    goto :goto_0

    .line 877
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bllevel:I

    goto :goto_0

    .line 881
    :sswitch_3
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v6, :cond_1

    .line 882
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 884
    :cond_1
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 888
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 889
    .local v4, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 893
    :pswitch_0
    iput v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->navimode:I

    goto :goto_0

    .line 899
    .end local v4    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 900
    .restart local v4    # "value":I
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 920
    :sswitch_6
    iput v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lan:I

    goto :goto_0

    .line 926
    .end local v4    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 927
    .restart local v4    # "value":I
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 930
    :pswitch_1
    iput v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->timeformat:I

    goto :goto_0

    .line 936
    .end local v4    # "value":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 937
    .restart local v4    # "value":I
    packed-switch v4, :pswitch_data_2

    goto :goto_0

    .line 940
    :pswitch_2
    iput v4, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mielformat:I

    goto :goto_0

    .line 946
    .end local v4    # "value":I
    :sswitch_9
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v6, :cond_2

    .line 947
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 949
    :cond_2
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 953
    :sswitch_a
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v6, :cond_3

    .line 954
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 956
    :cond_3
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 960
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscallvib:Z

    goto/16 :goto_0

    .line 964
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->ismsgvib:Z

    goto/16 :goto_0

    .line 968
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isdcunlock:Z

    goto/16 :goto_0

    .line 972
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->dialsecbrush:Z

    goto/16 :goto_0

    .line 976
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstartreminder:Z

    goto/16 :goto_0

    .line 980
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstopreminder:Z

    goto/16 :goto_0

    .line 984
    :sswitch_11
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-nez v6, :cond_4

    .line 985
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    .line 987
    :cond_4
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 991
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->watchfaceId:I

    goto/16 :goto_0

    .line 995
    :sswitch_13
    const/16 v6, 0x92

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 997
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    if-nez v6, :cond_6

    move v1, v5

    .line 998
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    .line 1000
    .local v2, "newArray":[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    if-eqz v1, :cond_5

    .line 1001
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    :cond_5
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 1004
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;-><init>()V

    aput-object v6, v2, v1

    .line 1005
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1006
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 997
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    :cond_6
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    array-length v1, v6

    goto :goto_1

    .line 1009
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    :cond_7
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;-><init>()V

    aput-object v6, v2, v1

    .line 1010
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1011
    iput-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    goto/16 :goto_0

    .line 1015
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    .line 1016
    iget v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1020
    :sswitch_15
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    if-nez v6, :cond_8

    .line 1021
    new-instance v6, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    .line 1023
    :cond_8
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1027
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v6

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    .line 1028
    iget v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1032
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    .line 1033
    iget v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1037
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    .line 1038
    iget v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1042
    :sswitch_19
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    if-nez v6, :cond_9

    .line 1043
    new-instance v6, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-direct {v6}, Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    .line 1045
    :cond_9
    iget-object v6, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
        0x70 -> :sswitch_f
        0x78 -> :sswitch_10
        0x82 -> :sswitch_11
        0x88 -> :sswitch_12
        0x92 -> :sswitch_13
        0x98 -> :sswitch_14
        0xa2 -> :sswitch_15
        0xa8 -> :sswitch_16
        0xb0 -> :sswitch_17
        0xb8 -> :sswitch_18
        0xc2 -> :sswitch_19
    .end sparse-switch

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 900
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_6
        0x10 -> :sswitch_6
        0x11 -> :sswitch_6
        0xff -> :sswitch_6
    .end sparse-switch

    .line 927
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 937
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setCalorietarget(I)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    .line 631
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 632
    return-object p0
.end method

.method public setIsalldayheart(Z)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    .line 609
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 610
    return-object p0
.end method

.method public setIscaloriereminder(Z)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    .line 669
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 670
    return-object p0
.end method

.method public setIsstepreminder(Z)Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    .line 650
    iget v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    .line 651
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    const/4 v2, 0x1

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->viblevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 723
    const/4 v2, 0x2

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bllevel:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 724
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v2, :cond_0

    .line 725
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->wristbright:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 727
    :cond_0
    const/4 v2, 0x4

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->navimode:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 728
    const/4 v2, 0x5

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lan:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 729
    const/4 v2, 0x6

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->timeformat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 730
    const/4 v2, 0x7

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->mielformat:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 731
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v2, :cond_1

    .line 732
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->lostreminder:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v2, :cond_2

    .line 735
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->silencemode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 737
    :cond_2
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscallvib:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 738
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->ismsgvib:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 739
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isdcunlock:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 740
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->dialsecbrush:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 741
    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstartreminder:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 742
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sportstopreminder:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 743
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    if-eqz v2, :cond_3

    .line 744
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isairmode:Lcom/huami/watch/sensorhub/protos/SystemSettings$SwitcherWithTime;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 746
    :cond_3
    const/16 v2, 0x11

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->watchfaceId:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 747
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 748
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 749
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->widgets:[Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;

    aget-object v0, v2, v1

    .line 750
    .local v0, "element":Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    if-eqz v0, :cond_4

    .line 751
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 748
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "element":Lcom/huami/watch/sensorhub/protos/SystemSettings$Widget;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 756
    const/16 v2, 0x13

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isalldayheart_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 758
    :cond_6
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    if-eqz v2, :cond_7

    .line 759
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->sedentary:Lcom/huami/watch/sensorhub/protos/SystemSettings$SedentaryOp;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 761
    :cond_7
    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 762
    const/16 v2, 0x15

    iget v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->calorietarget_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 764
    :cond_8
    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 765
    const/16 v2, 0x16

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->isstepreminder_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 767
    :cond_9
    iget v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a

    .line 768
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->iscaloriereminder_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 770
    :cond_a
    iget-object v2, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    if-eqz v2, :cond_b

    .line 771
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/huami/watch/sensorhub/protos/SystemSettings$SettingInfo;->heartrange:Lcom/huami/watch/sensorhub/mcudata/McuDataProto$HeartRange;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 773
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 774
    return-void
.end method
