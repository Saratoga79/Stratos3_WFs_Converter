.class public Lcom/ingenic/iwds/slpt/view/utils/KeyReader;
.super Ljava/lang/Object;
.source "KeyReader.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private jniPrivate:J

.field private nativeIsInitialized:Z

.field private result_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-string v1, "KeyReader"

    sput-object v1, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->TAG:Ljava/lang/String;

    .line 33
    :try_start_0
    sget-object v1, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary Successed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "writerJniPrivate"    # J

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    .line 28
    iput v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->result_code:I

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->initialize_native(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    .line 44
    :cond_0
    return-void
.end method

.method private checkInitialization()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v2, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->TAG:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "KeyWriter is recycled!"

    invoke-static {v2, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 147
    iput v1, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->result_code:I

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0
.end method

.method private native initialize_native(J)J
.end method

.method private native readBoolean(J)Z
.end method

.method private native readBooleanArray(J)[Z
.end method

.method private native readByte(J)B
.end method

.method private native readByteArray(J)[B
.end method

.method private native readDouble(J)D
.end method

.method private native readDoubleArray(J)[D
.end method

.method private native readFloat(J)F
.end method

.method private native readFloatArray(J)[F
.end method

.method private native readInt(J)I
.end method

.method private native readIntArray(J)[I
.end method

.method private native readLong(J)J
.end method

.method private native readLongArray(J)[J
.end method

.method private native readShort(J)S
.end method

.method private native readShortArray(J)[S
.end method

.method private native readString(J)Ljava/lang/String;
.end method

.method private native recycle(J)V
.end method


# virtual methods
.method public getJniPrivate()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    return-wide v0
.end method

.method public initialize(J)V
    .locals 3
    .param p1, "writerJniPrivate"    # J

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->initialize_native(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    .line 55
    :cond_0
    return-void
.end method

.method public isResultOk()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->result_code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 76
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readBoolean(J)Z

    move-result v0

    return v0
.end method

.method public readBooleanArray()[Z
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 116
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readBooleanArray(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 71
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readByte(J)B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 111
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 101
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleArray()[D
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 141
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readDoubleArray(J)[D

    move-result-object v0

    return-object v0
.end method

.method public readFloat()F
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 96
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readFloat(J)F

    move-result v0

    return v0
.end method

.method public readFloatArray()[F
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 136
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readFloatArray(J)[F

    move-result-object v0

    return-object v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 86
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readInt(J)I

    move-result v0

    return v0
.end method

.method public readIntArray()[I
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 126
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readIntArray(J)[I

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 91
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongArray()[J
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 131
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readLongArray(J)[J

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 81
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readShort(J)S

    move-result v0

    return v0
.end method

.method public readShortArray()[S
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 121
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readShortArray(J)[S

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->checkInitialization()V

    .line 106
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->readString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    if-eqz v0, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->recycle(J)V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->jniPrivate:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyReader;->nativeIsInitialized:Z

    .line 63
    :cond_0
    return-void
.end method
