.class public Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;
.super Lcom/ingenic/iwds/uniconnect/IConnection$Stub;
.source "ConnectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionStub"
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;


# direct methods
.method public constructor <init>(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)V
    .locals 2
    .param p1, "callBack"    # Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/IConnection$Stub;-><init>()V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->f:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    .line 71
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    .line 182
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 184
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 186
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 187
    const/4 v0, -0x5

    monitor-exit v1

    .line 190
    :goto_0
    return v0

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->c(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public binderDied()V
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a(Ljava/lang/String;J)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 80
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a(Ljava/lang/String;J)V

    .line 120
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->f:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 123
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxPayloadSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    .line 214
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 216
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 218
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 219
    const/4 v0, -0x5

    monitor-exit v1

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->b(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handshake()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    .line 198
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 200
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 202
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 203
    const/4 v0, -0x5

    monitor-exit v1

    .line 206
    :goto_0
    return v0

    .line 204
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v0, v2, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->d(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPid"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    iput-object p3, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 97
    invoke-virtual {p4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->f:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    .line 96
    invoke-static {p1, p2, v0, v1, v3}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 98
    iget-wide v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    invoke-static {v0, v4, v5}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->b(Ljava/lang/String;J)I

    move-result v0

    .line 100
    if-gez v0, :cond_0

    .line 101
    int-to-long v0, v0

    monitor-exit v2

    .line 111
    :goto_0
    return-wide v0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->allocReadBuffer(I)V

    .line 104
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    .line 105
    add-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    .line 108
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->f:Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 111
    :cond_1
    iget-wide v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    monitor-exit v2

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    .line 134
    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 136
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 138
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 139
    const/4 v0, -0x5

    monitor-exit v4

    .line 150
    :goto_0
    return v0

    .line 140
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    iget-object v7, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    monitor-enter v7

    .line 143
    :try_start_1
    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->a(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I

    move-result v0

    .line 145
    if-ltz v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    :cond_1
    monitor-exit v7

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 140
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public write([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    .line 160
    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->c:Ljava/lang/String;

    .line 162
    iget-wide v2, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->d:J

    .line 164
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 165
    const/4 v0, -0x5

    monitor-exit v4

    .line 172
    :goto_0
    return v0

    .line 166
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    iget-object v7, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    monitor-enter v7

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v4, p0, Lcom/ingenic/iwds/uniconnect/ConnectionService$ConnectionStub;->b:Ljava/nio/ByteBuffer;

    const/16 v5, 0xa

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/ingenic/iwds/uniconnect/ConnectionService;->b(Ljava/lang/String;JLjava/nio/ByteBuffer;II)I

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
