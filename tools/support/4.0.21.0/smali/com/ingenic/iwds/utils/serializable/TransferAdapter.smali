.class public final Lcom/ingenic/iwds/utils/serializable/TransferAdapter;
.super Ljava/lang/Object;
.source "TransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;,
        Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->stopWatching()V

    .line 275
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ingenic/iwds/common/exception/IwdsException;->throwFileTransferException(I)V

    .line 276
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static recv(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .param p3, "callback"    # Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Landroid/os/Parcelable;",
            "T2::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Lcom/ingenic/iwds/uniconnect/Connection;",
            "Landroid/os/Parcelable$Creator",
            "<TT1;>;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT2;>;",
            "Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .local p1, "parcelableCeator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT1;>;"
    .local p2, "safeParcelableCreator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT2;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    .line 366
    const-string v3, "TransferAdapter"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "connection == null"

    invoke-static {v3, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 367
    const-string v0, "TransferAdapter"

    if-nez p3, :cond_1

    :goto_1
    const-string v2, "callback == null"

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 369
    invoke-static {p0, p1, p2, p3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->decode(Lcom/ingenic/iwds/uniconnect/Connection;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    return-object v0

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0

    :cond_1
    move v1, v2

    .line 367
    goto :goto_1
.end method

.method public static send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/io/File;ILcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)V
    .locals 24
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "index"    # I
    .param p3, "callback"    # Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/ingenic/iwds/common/exception/FileTransferException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v6, "TransferAdapter"

    if-nez p0, :cond_8

    const/4 v5, 0x1

    :goto_0
    const-string v7, "connection == null"

    invoke-static {v6, v5, v7}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 89
    const-string v6, "TransferAdapter"

    if-nez p3, :cond_9

    const/4 v5, 0x1

    :goto_1
    const-string v7, "callback == null"

    invoke-static {v6, v5, v7}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v5, "TransferAdapter"

    const-string v6, "Unable to send file: file == null"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 96
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 97
    :cond_1
    const-string v5, "TransferAdapter"

    const-string v6, "Unable to send file: file not exist or is dir or empty!"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 101
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    const-string v5, "TransferAdapter"

    const-string v6, "Unable to send file: file can not be read!"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 106
    :cond_3
    new-instance v15, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-direct {v15, v5, v0}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;-><init>(Ljava/lang/String;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;)V

    .line 107
    invoke-virtual {v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->startWatching()V

    .line 109
    const/high16 v16, 0x10000

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 112
    move/from16 v0, v16

    int-to-long v6, v0

    rem-long v6, v18, v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_a

    .line 113
    move/from16 v0, v16

    int-to-long v6, v0

    div-long v6, v18, v6

    long-to-int v5, v6

    move v14, v5

    .line 117
    :goto_2
    move/from16 v0, p2

    if-gt v0, v14, :cond_4

    if-gez p2, :cond_5

    .line 118
    :cond_4
    const-string v5, "TransferAdapter"

    const-string v6, "Unable to send file: invalid index!"

    invoke-static {v5, v6}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v5, 0x0

    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 122
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 125
    const/4 v5, 0x1

    new-array v5, v5, [B

    .line 126
    const/4 v6, 0x0

    const/16 v7, 0x1e

    aput-byte v7, v5, v6

    .line 127
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string v6, "UTF-8"

    .line 132
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 133
    array-length v6, v5

    .line 134
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 135
    const/4 v8, 0x0

    const/high16 v9, -0x1000000

    and-int/2addr v9, v6

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 136
    const/4 v8, 0x1

    const/high16 v9, 0xff0000

    and-int/2addr v9, v6

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 137
    const/4 v8, 0x2

    const v9, 0xff00

    and-int/2addr v9, v6

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 138
    const/4 v8, 0x3

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x0

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    .line 139
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 143
    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 144
    const/4 v6, 0x0

    const-wide/high16 v8, -0x100000000000000L

    and-long v8, v8, v18

    const/16 v7, 0x38

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 145
    const/4 v6, 0x1

    const-wide/high16 v8, 0xff000000000000L

    and-long v8, v8, v18

    const/16 v7, 0x30

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 146
    const/4 v6, 0x2

    const-wide v8, 0xff0000000000L

    and-long v8, v8, v18

    const/16 v7, 0x28

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 147
    const/4 v6, 0x3

    const-wide v8, 0xff00000000L

    and-long v8, v8, v18

    const/16 v7, 0x20

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 148
    const/4 v6, 0x4

    const-wide v8, 0xff000000L

    and-long v8, v8, v18

    const/16 v7, 0x18

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 149
    const/4 v6, 0x5

    const-wide/32 v8, 0xff0000

    and-long v8, v8, v18

    const/16 v7, 0x10

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 150
    const/4 v6, 0x6

    const-wide/32 v8, 0xff00

    and-long v8, v8, v18

    const/16 v7, 0x8

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 151
    const/4 v6, 0x7

    const-wide/16 v8, 0xff

    and-long v8, v8, v18

    const/4 v7, 0x0

    shr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 152
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 155
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 156
    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    and-int v7, v7, p2

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 157
    const/4 v6, 0x1

    const/high16 v7, 0xff0000

    and-int v7, v7, p2

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 158
    const/4 v6, 0x2

    const v7, 0xff00

    and-int v7, v7, p2

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 159
    const/4 v6, 0x3

    move/from16 v0, p2

    and-int/lit16 v7, v0, 0xff

    shr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 162
    mul-int v5, p2, v16

    int-to-long v10, v5

    .line 164
    sub-long v8, v18, v10

    .line 166
    const/4 v6, 0x0

    .line 169
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_3
    long-to-int v6, v10

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    .line 180
    int-to-long v12, v6

    cmp-long v7, v12, v10

    if-eqz v7, :cond_6

    .line 181
    const-string v7, "TransferAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to send file: skip error: writeSofar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skiped="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", the file contents may be modified!"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_6
    :goto_4
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-wide v12, v10

    move/from16 v4, p2

    .end local p2    # "index":I
    .local v4, "index":I
    move-wide v10, v8

    .line 194
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_d

    .line 195
    move/from16 v0, v16

    int-to-long v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 197
    const/4 v6, 0x0

    move v8, v6

    move v6, v7

    .line 201
    :goto_6
    if-lez v6, :cond_b

    .line 202
    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    .line 204
    if-gez v9, :cond_7

    .line 205
    const-string v21, "TransferAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to send file: file read error, readBytes = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", the file contents may be modified!s"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    :cond_7
    sub-int/2addr v6, v9

    .line 210
    add-int/2addr v8, v9

    .line 211
    goto :goto_6

    .line 88
    .end local v4    # "index":I
    .restart local p2    # "index":I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 89
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 115
    :cond_a
    move/from16 v0, v16

    int-to-long v6, v0

    div-long v6, v18, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-int v5, v6

    move v14, v5

    goto/16 :goto_2

    .line 171
    :catch_0
    move-exception v5

    .line 172
    const-string v5, "TransferAdapter"

    const-string v7, "Unable to send file: file not exist, the file may be moved or deleted!"

    invoke-static {v5, v7}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v6, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    move-object v5, v6

    goto/16 :goto_3

    .line 186
    :catch_1
    move-exception v6

    .line 187
    const-string v6, "TransferAdapter"

    const-string v7, "Unable to send file: file skip io exception, the file may be moved or deleted!"

    invoke-static {v6, v7}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    goto :goto_4

    .line 213
    .end local p2    # "index":I
    .restart local v4    # "index":I
    :catch_2
    move-exception v6

    .line 214
    const-string v6, "TransferAdapter"

    const-string v8, "Unable to send file: file read io exception, the file may be moved or deleted!"

    invoke-static {v6, v8}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 224
    :cond_b
    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 239
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    if-le v4, v14, :cond_c

    .line 240
    const-string v6, "TransferAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to send file: index out of bound:, current="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", the file contents may be modified!s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v5, v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter;->a(Ljava/io/RandomAccessFile;Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;)V

    .line 245
    :cond_c
    int-to-long v8, v7

    add-long/2addr v8, v12

    .line 246
    int-to-long v6, v7

    sub-long v6, v10, v6

    .line 248
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-interface {v0, v8, v9, v1, v2}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onSendFileProgress(JJ)V

    move-wide v10, v6

    move-wide v12, v8

    move/from16 v4, p2

    .line 249
    .end local p2    # "index":I
    .restart local v4    # "index":I
    goto/16 :goto_5

    .line 226
    :catch_3
    move-exception v6

    .line 228
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 234
    :goto_7
    const-string v5, "TransferAdapter"

    const-string v7, "Unable to send file: connection io exception"

    invoke-static {v5, v7}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;->onSendFileInterrupted(I)V

    .line 236
    throw v6

    .line 252
    :cond_d
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 258
    :goto_8
    invoke-virtual {v15}, Lcom/ingenic/iwds/utils/serializable/TransferAdapter$a;->stopWatching()V

    .line 259
    return-void

    .line 230
    :catch_4
    move-exception v5

    goto :goto_7

    .line 254
    :catch_5
    move-exception v5

    goto :goto_8
.end method

.method public static send(Lcom/ingenic/iwds/uniconnect/Connection;Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)V
    .locals 5
    .param p0, "connection"    # Lcom/ingenic/iwds/uniconnect/Connection;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Landroid/os/Parcelable;",
            "T2::",
            "Lcom/ingenic/iwds/os/SafeParcelable;",
            ">(",
            "Lcom/ingenic/iwds/uniconnect/Connection;",
            "Ljava/lang/Object;",
            "Landroid/os/Parcelable$Creator",
            "<TT1;>;",
            "Lcom/ingenic/iwds/os/SafeParcelable$Creator",
            "<TT2;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "parcelableCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT1;>;"
    .local p3, "safeParcelableCreator":Lcom/ingenic/iwds/os/SafeParcelable$Creator;, "Lcom/ingenic/iwds/os/SafeParcelable$Creator<TT2;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    const-string v3, "TransferAdapter"

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "connection == null"

    invoke-static {v3, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 313
    const-string v0, "TransferAdapter"

    if-nez p1, :cond_1

    :goto_1
    const-string v2, "object == null"

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/String;ZLjava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 318
    invoke-static {p1, p2, p3}, Lcom/ingenic/iwds/utils/serializable/ByteArrayUtils;->encode(Ljava/lang/Object;Landroid/os/Parcelable$Creator;Lcom/ingenic/iwds/os/SafeParcelable$Creator;)[B

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 322
    return-void

    :cond_0
    move v0, v2

    .line 312
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1
.end method
