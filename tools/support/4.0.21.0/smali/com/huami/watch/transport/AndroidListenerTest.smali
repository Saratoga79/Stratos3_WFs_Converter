.class public Lcom/huami/watch/transport/AndroidListenerTest;
.super Ljava/lang/Object;
.source "AndroidListenerTest.java"

# interfaces
.implements Lcom/huami/watch/ble/listener/MCUBLEAndroidDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/AndroidListenerTest$SendData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidListenerTest"


# instance fields
.field private SendDataArray:[Lcom/huami/watch/transport/AndroidListenerTest$SendData;

.field private mChannelAvailable:Z

.field private mDataIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInited:Z

.field sendTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v4, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mInited:Z

    .line 20
    iput-boolean v4, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mChannelAvailable:Z

    .line 21
    iput v4, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    new-instance v1, Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    const-string v2, "00000010-0000-3512-2118-0009af100700"

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    invoke-direct {v1, p0, v2, v3}, Lcom/huami/watch/transport/AndroidListenerTest$SendData;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;[B)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    const-string v3, "00000011-0000-3512-2118-0009af100700"

    new-array v4, v5, [B

    fill-array-data v4, :array_1

    invoke-direct {v2, p0, v3, v4}, Lcom/huami/watch/transport/AndroidListenerTest$SendData;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;[B)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    const-string v3, "00000012-0000-3512-2118-0009af100700"

    new-array v4, v5, [B

    fill-array-data v4, :array_2

    invoke-direct {v2, p0, v3, v4}, Lcom/huami/watch/transport/AndroidListenerTest$SendData;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;[B)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    const-string v3, "00000013-0000-3512-2118-0009af100700"

    new-array v4, v5, [B

    fill-array-data v4, :array_3

    invoke-direct {v2, p0, v3, v4}, Lcom/huami/watch/transport/AndroidListenerTest$SendData;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;[B)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->SendDataArray:[Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    .line 117
    new-instance v0, Lcom/huami/watch/transport/AndroidListenerTest$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/AndroidListenerTest$3;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;)V

    iput-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->sendTask:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/huami/watch/transport/AndroidListenerTest$1;

    const-string v1, "McuBleGatt Thread"

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/AndroidListenerTest$1;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    iget-object v1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 51
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandler:Landroid/os/Handler;

    .line 61
    return-void

    .line 58
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 31
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x8t
        0x8t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x11t
        0x22t
        0x33t
        0x34t
        0x55t
        0x56t
        0x37t
        0x18t
        0x19t
    .end array-data
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/AndroidListenerTest;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/AndroidListenerTest;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huami/watch/transport/AndroidListenerTest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/AndroidListenerTest;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mInited:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/AndroidListenerTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/AndroidListenerTest;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/huami/watch/transport/AndroidListenerTest;->sendNextData()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/AndroidListenerTest;)[Lcom/huami/watch/transport/AndroidListenerTest$SendData;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/AndroidListenerTest;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->SendDataArray:[Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/AndroidListenerTest;)I
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/AndroidListenerTest;

    .prologue
    .line 14
    iget v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    return v0
.end method

.method private sendNextData()V
    .locals 4

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    .line 107
    iget v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->SendDataArray:[Lcom/huami/watch/transport/AndroidListenerTest$SendData;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    .line 110
    :cond_0
    const-string v0, "AndroidListenerTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mDataIndex to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->sendTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onChannelAvailable(Z)V
    .locals 4
    .param p1, "isAvailable"    # Z

    .prologue
    .line 90
    const-string v0, "AndroidListenerTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean p1, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mChannelAvailable:Z

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huami/watch/transport/AndroidListenerTest$2;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/AndroidListenerTest$2;-><init>(Lcom/huami/watch/transport/AndroidListenerTest;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_0
    return-void
.end method

.method public onMtuChanged(I)V
    .locals 3
    .param p1, "mtu"    # I

    .prologue
    .line 101
    const-string v0, "AndroidListenerTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public onReceivedData(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 68
    const-string v0, "AndroidListenerTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/huami/watch/utils/Utils;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/AndroidListenerTest;->mDataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/huami/watch/transport/AndroidListenerTest;->sendNextData()V

    .line 87
    return-void
.end method
