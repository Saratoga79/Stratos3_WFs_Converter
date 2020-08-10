.class public Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;
.super Ljava/lang/Object;
.source "SyncProcessManager.java"


# static fields
.field public static final STATE_BEGIN_UPLOAD_TOCLOUD:B = 0x3t

.field public static final STATE_CLOUD_DEC:B = 0x9t

.field public static final STATE_OF_CHECK_ROM_DATA:B = 0x7t

.field public static final STATE_OF_CLEAR:B = 0x0t

.field public static final STATE_OF_COLLECT_INFO:B = 0x1t

.field public static final STATE_OF_END_FAILED:B = 0x4t

.field public static final STATE_OF_END_SUCCESS:B = 0x5t

.field public static final STATE_OF_PREPARING_UPLOADING:B = 0x8t

.field public static final STATE_OF_STATISTICS:B = 0x2t

.field public static final STATE_OF_WAIT_FOR_ROM:B = 0x6t

.field private static currDesc:Ljava/lang/String;

.field private static sCurrTotalToCloud:I

.field private static sHandledToTalToCloud:I

.field private static volatile singleton:Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;


# instance fields
.field private mCurrPkg:Ljava/lang/String;

.field private mCurrState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    .line 39
    sput v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->currDesc:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->mCurrState:B

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->singleton:Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "yzls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "me -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    return-void
.end method


# virtual methods
.method public getCurrPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->mCurrPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()I
    .locals 4

    .prologue
    .line 54
    sget v1, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    int-to-float v1, v1

    sget v2, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    sget v3, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 55
    .local v0, "p":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    :cond_0
    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 58
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "currPkg"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->mCurrPkg:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public varargs tellWith(Ljava/lang/String;B[I)V
    .locals 7
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "state"    # B
    .param p3, "info"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 89
    packed-switch p2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    iput-byte p2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->mCurrState:B

    .line 152
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->updateListener(Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void

    .line 91
    :pswitch_0
    sput v6, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    .line 92
    const-string v4, "\u6b63\u5728\u66f4\u65b0..."

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 93
    sput v6, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    .line 94
    const-string v4, "\u6b63\u5728\u66f4\u65b0\u624b\u8868\u6570\u636e..."

    sput-object v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->currDesc:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v4, "\u6b63\u5728\u6536\u96c6\u624b\u8868\u6570\u636e..."

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v4, "\u6b63\u5728\u7edf\u8ba1..."

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_3
    aget v4, p3, v6

    sput v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u4e0a\u4f20\u4e91\u7aef... ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    sget v6, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u4e0a\u4f20\u4e91\u7aef "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getPercent()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->currDesc:Ljava/lang/String;

    goto :goto_0

    .line 108
    :pswitch_4
    const-string v4, "\u540c\u6b65\u5931\u8d25"

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_5
    const-string v4, "\u540c\u6b65\u6210\u529f"

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_6
    const/4 v3, 0x0

    .line 115
    .local v3, "total":I
    const/4 v2, 0x0

    .line 116
    .local v2, "remain":I
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 117
    aget v3, p3, v6

    .line 118
    array-length v4, p3

    if-le v4, v5, :cond_2

    .line 119
    aget v2, p3, v5

    .line 123
    :cond_2
    sub-int v4, v3, v2

    if-eq v4, v3, :cond_1

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u540c\u6b65\u624b\u8868\u6570\u636e... ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u540c\u6b65\u624b\u8868\u6570\u636e... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->currDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .end local v2    # "remain":I
    .end local v3    # "total":I
    :pswitch_7
    const-string v4, "\u68c0\u67e5\u624b\u8868\u6570\u636e..."

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u51c6\u5907\u4e0a\u4f20... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 135
    aget v4, p3, v6

    sput v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    goto/16 :goto_0

    .line 138
    :pswitch_9
    sget v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    .line 139
    sget v1, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    .line 140
    .local v1, "handled":I
    sget v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sCurrTotalToCloud:I

    sget v5, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->sHandledToTalToCloud:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 141
    .local v0, "all":I
    if-eq v1, v0, :cond_0

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6b63\u5728\u4e0a\u4f20\u4e91\u7aef... ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->log(Ljava/lang/String;)V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u4e0a\u4f20\u4e91\u7aef "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getPercent()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->currDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method updateListener(Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 158
    .local v3, "things":[Ljava/lang/String;
    :try_start_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 162
    :goto_0
    const/4 v2, 0x0

    .local v2, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, "action":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 164
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 165
    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 175
    :cond_0
    return-void

    .line 159
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
