.class public Lcom/huami/watch/transport/httpsupport/model/DataUtils$BytesZipUtil;
.super Ljava/lang/Object;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/model/DataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesZipUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gZip([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 264
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 266
    .local v5, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v6, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v6, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 269
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 270
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 271
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 272
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    if-eqz v2, :cond_0

    .line 278
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 285
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 286
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    move-object v5, v6

    .end local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .line 292
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_1
    return-object v0

    .line 280
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v3

    .line 281
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 289
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .line 291
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 273
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 274
    .local v4, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    if-eqz v1, :cond_3

    .line 278
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 285
    :cond_3
    :goto_3
    if-eqz v5, :cond_2

    .line 286
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 288
    :catch_3
    move-exception v3

    .line 289
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 281
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 277
    :goto_4
    if-eqz v1, :cond_4

    .line 278
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 285
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 286
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 290
    :cond_5
    :goto_6
    throw v7

    .line 280
    :catch_5
    move-exception v3

    .line 281
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 288
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 289
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 276
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 273
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static unGZip([B)[B
    .locals 13
    .param p0, "data"    # [B

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "b":[B
    const/4 v3, 0x0

    .line 304
    .local v3, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    .line 305
    .local v8, "gzip":Ljava/util/zip/GZIPInputStream;
    const/4 v1, 0x0

    .line 307
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .local v9, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v11, 0x400

    :try_start_2
    new-array v5, v11, [B

    .line 310
    .local v5, "buf":[B
    const/4 v10, -0x1

    .line 311
    .local v10, "num":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 312
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v11, 0x0

    :try_start_3
    array-length v12, v5

    invoke-virtual {v9, v5, v11, v12}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 313
    const/4 v11, 0x0

    invoke-virtual {v2, v5, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 320
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .line 321
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "buf":[B
    .end local v10    # "num":I
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .local v7, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    if-eqz v3, :cond_0

    .line 325
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 332
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    .line 333
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 340
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 341
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 347
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object v0

    .line 315
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "buf":[B
    .restart local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v10    # "num":I
    :cond_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 316
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 317
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 318
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 319
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 324
    if-eqz v4, :cond_4

    .line 325
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 332
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    .line 333
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 340
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 341
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_6
    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .line 345
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 327
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v6

    .line 328
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 336
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 343
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 344
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .line 346
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 327
    .end local v5    # "buf":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "num":I
    .restart local v7    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 336
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 343
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 344
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 323
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 324
    :goto_7
    if-eqz v3, :cond_7

    .line 325
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 332
    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    .line 333
    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 340
    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 341
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 345
    :cond_9
    :goto_a
    throw v11

    .line 327
    :catch_7
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 336
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 343
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 344
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 323
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "buf":[B
    .restart local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v10    # "num":I
    :catchall_3
    move-exception v11

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 320
    .end local v5    # "buf":[B
    .end local v10    # "num":I
    :catch_a
    move-exception v7

    goto/16 :goto_1

    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_b
    move-exception v7

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v7

    move-object v8, v9

    .end local v9    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "gzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1
.end method
