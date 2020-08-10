.class public Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;
.super Ljava/lang/Object;
.source "MD5FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FwUpgrade-Md5FileUtils"

.field protected static hexDigits:[C

.field protected static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->hexDigits:[C

    .line 21
    const/4 v1, 0x0

    sput-object v1, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;

    .line 24
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 25
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "FwUpgrade-Md5FileUtils"

    const-string v2, "MD5FileUtil messagedigest\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 67
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 68
    .local v0, "c0":C
    sget-object v2, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 69
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 53
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 58
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 59
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 30
    const/4 v9, 0x0

    .line 32
    .local v9, "res":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 33
    .local v8, "in":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 34
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 35
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 36
    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->bufferToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 41
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v8    # "in":Ljava/io/FileInputStream;
    :goto_0
    return-object v9

    .line 37
    :catch_0
    move-exception v7

    .line 38
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 48
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/file/MD5FileUtils;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
