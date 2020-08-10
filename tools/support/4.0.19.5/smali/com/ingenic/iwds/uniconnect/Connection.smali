.class public Lcom/ingenic/iwds/uniconnect/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/Connection$b;,
        Lcom/ingenic/iwds/uniconnect/Connection$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/ingenic/iwds/uniconnect/IConnection;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/io/InputStream;

.field private h:Ljava/io/OutputStream;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/IConnection;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Lcom/ingenic/iwds/uniconnect/IConnection;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->b:I

    .line 43
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/ingenic/iwds/uniconnect/Connection;->f:J

    .line 48
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z

    .line 149
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Context is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 150
    if-nez p2, :cond_1

    :goto_1
    const-string v0, "Connection is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/Connection;->a:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    .line 156
    new-instance v0, Lcom/ingenic/iwds/uniconnect/Connection$a;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/Connection$a;-><init>(Lcom/ingenic/iwds/uniconnect/Connection;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->g:Ljava/io/InputStream;

    .line 157
    new-instance v0, Lcom/ingenic/iwds/uniconnect/Connection$b;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/Connection$b;-><init>(Lcom/ingenic/iwds/uniconnect/Connection;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->h:Ljava/io/OutputStream;

    .line 158
    monitor-exit p0

    .line 159
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnection;->available()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 414
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z

    if-eqz v0, :cond_0

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnection;->close()V

    .line 304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->f:J

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->d:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataChunkSize()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->b:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->h:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()J
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-wide v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->f:J

    monitor-exit p0

    return-wide v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handshake()I
    .locals 3

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnection;->handshake()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in handshake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z

    monitor-exit p0

    return v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open(Lcom/ingenic/iwds/DeviceDescriptor;Ljava/lang/String;)I
    .locals 2
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Device descriptor is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 227
    iget-object v0, p1, Lcom/ingenic/iwds/DeviceDescriptor;->devAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/ingenic/iwds/uniconnect/Connection;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Address is null or empty."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 256
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "Uuid is null or empty."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 259
    const-string v0, "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"

    .line 261
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "{THIS-IS-GOD-MASTER}"

    .line 262
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UUID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(need a 8-4-4-4-12 style UUID)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z

    if-nez v0, :cond_5

    .line 268
    monitor-exit p0

    .line 290
    :goto_3
    return v1

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    :cond_3
    move v0, v1

    .line 256
    goto :goto_1

    :cond_4
    move v2, v1

    .line 262
    goto :goto_2

    .line 270
    :cond_5
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/Connection;->d:Ljava/lang/String;

    .line 271
    iput-object p2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/Connection;->e:Ljava/lang/String;

    .line 274
    invoke-interface {v0, v2, v3, p1, v4}, Lcom/ingenic/iwds/uniconnect/IConnection;->open(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 276
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 277
    long-to-int v1, v2

    :try_start_2
    monitor-exit p0

    goto :goto_3

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 279
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnection;->getMaxPayloadSize()I

    move-result v0

    iput v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->b:I

    .line 280
    iput-wide v2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->f:J

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/Connection;->i:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    :try_start_4
    monitor-exit p0

    goto :goto_3

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const/4 v1, -0x4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "maxSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 372
    if-eqz p1, :cond_0

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    add-int v2, p2, p3

    if-ge v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "Buffer is null or buffer exceed."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    move v0, v1

    .line 379
    .end local p2    # "offset":I
    :goto_1
    if-lez p3, :cond_1

    .line 380
    :try_start_0
    iget v1, p0, Lcom/ingenic/iwds/uniconnect/Connection;->b:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v2, p1, p2, v1}, Lcom/ingenic/iwds/uniconnect/IConnection;->read([BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    if-gez v1, :cond_4

    .line 383
    if-lez v0, :cond_3

    .line 397
    :cond_1
    :goto_2
    return v0

    .restart local p2    # "offset":I
    :cond_2
    move v0, v1

    .line 372
    goto :goto_0

    .end local p2    # "offset":I
    :cond_3
    move v0, v1

    .line 383
    goto :goto_2

    .line 385
    :cond_4
    add-int/2addr v0, v1

    .line 386
    add-int/2addr p2, v1

    .line 387
    sub-int/2addr p3, v1

    .line 388
    goto :goto_1

    .line 390
    :catch_0
    move-exception v1

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    if-gtz v0, :cond_1

    const/4 v0, -0x4

    goto :goto_2
.end method

.method public write([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "maxSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 329
    if-eqz p1, :cond_0

    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    add-int v2, p2, p3

    if-ge v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "Buffer is null or buffer exceed."

    invoke-static {p0, v0, v2}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    move v0, v1

    .line 336
    .end local p2    # "offset":I
    :goto_1
    if-lez p3, :cond_1

    .line 337
    :try_start_0
    iget v1, p0, Lcom/ingenic/iwds/uniconnect/Connection;->b:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/Connection;->c:Lcom/ingenic/iwds/uniconnect/IConnection;

    invoke-interface {v2, p1, p2, v1}, Lcom/ingenic/iwds/uniconnect/IConnection;->write([BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    if-gez v1, :cond_4

    .line 340
    if-lez v0, :cond_3

    .line 354
    :cond_1
    :goto_2
    return v0

    .restart local p2    # "offset":I
    :cond_2
    move v0, v1

    .line 329
    goto :goto_0

    .end local p2    # "offset":I
    :cond_3
    move v0, v1

    .line 340
    goto :goto_2

    .line 342
    :cond_4
    add-int/2addr v0, v1

    .line 343
    add-int/2addr p2, v1

    .line 344
    sub-int/2addr p3, v1

    .line 345
    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    if-gtz v0, :cond_1

    const/4 v0, -0x4

    goto :goto_2
.end method
