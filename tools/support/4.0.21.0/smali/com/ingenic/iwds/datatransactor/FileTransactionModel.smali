.class public Lcom/ingenic/iwds/datatransactor/FileTransactionModel;
.super Ljava/lang/Object;
.source "FileTransactionModel.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/FileTransactionModel$CancelForReceiveFile;,
        Lcom/ingenic/iwds/datatransactor/FileTransactionModel$ConfirmForReceiveFile;,
        Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;,
        Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;,
        Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;
    }
.end annotation


# instance fields
.field private i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

.field private m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

.field private m_file:Ljava/io/File;

.field private m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

.field protected m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;
    .param p3, "callback2"    # Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    .line 49
    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    .line 53
    new-instance v0, Lcom/ingenic/iwds/datatransactor/FileInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/FileInfo;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    .line 98
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Callback is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 99
    if-nez p3, :cond_1

    :goto_1
    const-string v0, "Callback is null."

    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 101
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    .line 102
    iput-object p3, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    .line 103
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {v0, p1, p0, p0, p4}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    .line 49
    iput-object v2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    .line 53
    new-instance v0, Lcom/ingenic/iwds/datatransactor/FileInfo;

    invoke-direct {v0}, Lcom/ingenic/iwds/datatransactor/FileInfo;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    .line 70
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Callback is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    .line 73
    iput-object v2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    .line 74
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {v0, p1, p0, p0, p3}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 75
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    return v0
.end method

.method public notifyCancelForReceiveFile()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$CancelForReceiveFile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$CancelForReceiveFile;-><init>(Lcom/ingenic/iwds/datatransactor/FileTransactionModel$1;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public notifyConfirmForReceiveFile()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$ConfirmForReceiveFile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$ConfirmForReceiveFile;-><init>(Lcom/ingenic/iwds/datatransactor/FileTransactionModel$1;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onChannelAvailable(Z)V

    .line 365
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 382
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    check-cast p1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;->access$200(Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;)Lcom/ingenic/iwds/datatransactor/FileInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onRequestSendFile(Lcom/ingenic/iwds/datatransactor/FileInfo;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$ConfirmForReceiveFile;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_file:Ljava/io/File;

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    iget v2, v2, Lcom/ingenic/iwds/datatransactor/FileInfo;->chunkIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/io/File;I)V

    .line 387
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onConfirmForReceiveFile()V

    goto :goto_0

    .line 389
    :cond_2
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$CancelForReceiveFile;

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onCancelForReceiveFile()V

    goto :goto_0

    .line 392
    :cond_3
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    check-cast p1, Ljava/io/File;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onFileArrived(Ljava/io/File;)V

    goto :goto_0

    .line 395
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Lcom/ingenic/iwds/common/exception/FileTransferException;

    if-eqz v0, :cond_0

    .line 396
    check-cast p1, Lcom/ingenic/iwds/common/exception/FileTransferException;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/ingenic/iwds/common/exception/FileTransferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    if-eqz v1, :cond_0

    .line 401
    instance-of v1, v0, Lcom/ingenic/iwds/common/exception/FileStatusException;

    if-eqz v1, :cond_5

    .line 402
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    .line 403
    invoke-interface {v0, v2}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;->onFileTransferError(I)V

    .line 405
    invoke-virtual {p0}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->stop()V

    goto :goto_0

    .line 406
    :cond_5
    instance-of v1, v0, Lcom/ingenic/iwds/common/exception/SDCardNotMountedException;

    if-eqz v1, :cond_6

    .line 407
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;->onFileTransferError(I)V

    goto :goto_0

    .line 409
    :cond_6
    instance-of v0, v0, Lcom/ingenic/iwds/common/exception/SDCardFullException;

    if-eqz v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    const/4 v1, 0x3

    .line 411
    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;->onFileTransferError(I)V

    goto :goto_0

    .line 414
    :cond_7
    const-string v0, "Implement me."

    invoke-static {p0, v2, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 356
    return-void
.end method

.method public onRecvFileInterrupted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;->onRecvFileInterrupted(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onRecvFileProgress(I)V

    .line 436
    return-void
.end method

.method public onSendFileInterrupted(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->i_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;->onSendFileInterrupted(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onSendFileProgress(I)V

    .line 427
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 1
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;->onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 374
    return-void
.end method

.method public requestSendFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->requestSendFile(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public requestSendFile(Ljava/lang/String;I)V
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "File path is null or empty"

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 140
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File can not be a directory."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    const-string v4, "file can not be read"

    invoke-static {p0, v0, v4}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 147
    cmp-long v0, v4, v10

    if-gtz v0, :cond_4

    .line 148
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File does not exist or is empty."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 144
    goto :goto_1

    .line 150
    :cond_4
    const/high16 v6, 0x10000

    .line 152
    int-to-long v8, v6

    rem-long v8, v4, v8

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 153
    int-to-long v8, v6

    div-long v8, v4, v8

    long-to-int v0, v8

    .line 157
    :goto_2
    if-gt p2, v0, :cond_5

    if-gez p2, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    const-string v0, "Invalid index"

    .line 158
    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ingenic/iwds/datatransactor/FileInfo;->name:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    iput-wide v4, v0, Lcom/ingenic/iwds/datatransactor/FileInfo;->length:J

    .line 162
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    iput p2, v0, Lcom/ingenic/iwds/datatransactor/FileInfo;->chunkIndex:I

    .line 163
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    iput v6, v0, Lcom/ingenic/iwds/datatransactor/FileInfo;->chunkSize:I

    .line 165
    iput-object v3, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_file:Ljava/io/File;

    .line 167
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;

    iget-object v2, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_fileInfo:Lcom/ingenic/iwds/datatransactor/FileInfo;

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/datatransactor/FileTransactionModel$RequestSendFile;-><init>(Lcom/ingenic/iwds/datatransactor/FileInfo;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 168
    return-void

    .line 155
    :cond_7
    int-to-long v8, v6

    div-long v8, v4, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v0, v8

    goto :goto_2
.end method

.method public start()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 201
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/FileTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 227
    return-void
.end method
