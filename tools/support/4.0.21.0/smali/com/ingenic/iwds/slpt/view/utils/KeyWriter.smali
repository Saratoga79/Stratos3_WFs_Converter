.class public Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;
.super Ljava/lang/Object;
.source "KeyWriter.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private jniPrivate:J

.field private nativeIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "KeyWriter"

    sput-object v0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "key-writer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    const-string v1, "load key-writer success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->initialize_native()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    .line 38
    return-void
.end method

.method private checkArray(Ljava/lang/Object;III)V
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "arrayLength"    # I
    .param p3, "position"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    sget-object v3, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "KeyWriter is recycled!"

    invoke-static {v3, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 160
    sget-object v0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    add-int v3, p3, p4

    if-ge p2, v3, :cond_1

    :goto_1
    const-string v2, "write length out of array!"

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    :cond_1
    move v1, v2

    .line 160
    goto :goto_1
.end method

.method private checkInitialization()V
    .locals 3

    .prologue
    .line 151
    sget-object v1, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "KeyWriter is recycled!"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native getBytes(J)[B
.end method

.method private native getSize(J)I
.end method

.method private native initialize_native()J
.end method

.method private native recycle(J)V
.end method

.method private native setBytesArray(J[BI)V
.end method

.method private native writeBoolean(JB)V
.end method

.method private native writeBooleanArray(J[ZII)V
.end method

.method private native writeByte(JB)V
.end method

.method private native writeByteArray(J[BII)V
.end method

.method private native writeDouble(JD)V
.end method

.method private native writeDoubleArray(J[DII)V
.end method

.method private native writeFloat(JF)V
.end method

.method private native writeFloatArray(J[FII)V
.end method

.method private native writeInt(JI)V
.end method

.method private native writeIntArray(J[III)V
.end method

.method private native writeLong(JJ)V
.end method

.method private native writeLongArray(J[JII)V
.end method

.method private native writeShort(JS)V
.end method

.method private native writeShortArray(J[SII)V
.end method

.method private native writeString(JLjava/lang/String;)V
.end method


# virtual methods
.method public getJniPrivate()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    return-wide v0
.end method

.method public getRawBytes()[B
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 61
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 71
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->getSize(J)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->initialize_native()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    .line 49
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    if-eqz v0, :cond_0

    .line 53
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->recycle(J)V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->nativeIsInitialized:Z

    .line 57
    :cond_0
    return-void
.end method

.method public setRawBytes([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 66
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->setBytesArray(J[BI)V

    .line 67
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4
    .param p1, "val"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 81
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeBoolean(JB)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBooleanArray([ZII)V
    .locals 7
    .param p1, "array"    # [Z
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 121
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 122
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeBooleanArray(J[ZII)V

    .line 123
    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "val"    # B

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 76
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByte(JB)V

    .line 77
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 7
    .param p1, "array"    # [B
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 116
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 117
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeByteArray(J[BII)V

    .line 118
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 106
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeDouble(JD)V

    .line 107
    return-void
.end method

.method public writeDoubleArray([DII)V
    .locals 7
    .param p1, "array"    # [D
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 146
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 147
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeDoubleArray(J[DII)V

    .line 148
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 101
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeFloat(JF)V

    .line 102
    return-void
.end method

.method public writeFloatArray([FII)V
    .locals 7
    .param p1, "array"    # [F
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 141
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 142
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeFloatArray(J[FII)V

    .line 143
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 91
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeInt(JI)V

    .line 92
    return-void
.end method

.method public writeIntArray([III)V
    .locals 7
    .param p1, "array"    # [I
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 131
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 132
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeIntArray(J[III)V

    .line 133
    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 96
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeLong(JJ)V

    .line 97
    return-void
.end method

.method public writeLongArray([JII)V
    .locals 7
    .param p1, "array"    # [J
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 136
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 137
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeLongArray(J[JII)V

    .line 138
    return-void
.end method

.method public writeShort(S)V
    .locals 2
    .param p1, "val"    # S

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 86
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShort(JS)V

    .line 87
    return-void
.end method

.method public writeShortArray([SII)V
    .locals 7
    .param p1, "array"    # [S
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 126
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkArray(Ljava/lang/Object;III)V

    .line 127
    iget-wide v2, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeShortArray(J[SII)V

    .line 128
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->checkInitialization()V

    .line 111
    sget-object v1, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "String is null!"

    invoke-static {v1, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->jniPrivate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ingenic/iwds/slpt/view/utils/KeyWriter;->writeString(JLjava/lang/String;)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
