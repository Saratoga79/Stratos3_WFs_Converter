.class public Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;
.super Ljava/lang/Object;
.source "CameraTransactionModel.java"

# interfaces
.implements Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePictureFailed;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreviewFailed;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreviewFailed;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePicture;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreview;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;,
        Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;
    }
.end annotation


# instance fields
.field private m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

.field private m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Callback is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 54
    iput-object p2, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    .line 55
    new-instance v0, Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-direct {v0, p1, p0, p3}, Lcom/ingenic/iwds/datatransactor/DataTransactor;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->isStarted()Z

    move-result v0

    return v0
.end method

.method public notifyRequestStartPreviewFailed()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreviewFailed;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreviewFailed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public notifyRequestStopPreviewFailed()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreviewFailed;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreviewFailed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public notifyRequestTakePictureFailed()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePictureFailed;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePictureFailed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public notifyTakePictureDone(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V
    .locals 2
    .param p1, "frame"    # Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    invoke-direct {v1, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;-><init>(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onChannelAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onChannelAvailable(Z)V

    .line 341
    return-void
.end method

.method public onDataArrived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 350
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    check-cast p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;->sizeInfo:Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;

    .line 352
    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestStartPreview(Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;)V

    .line 375
    :goto_0
    return-void

    .line 354
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreview;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestStopPreview()V

    goto :goto_0

    .line 357
    :cond_1
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePicture;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestTakePicture()V

    goto :goto_0

    .line 360
    :cond_2
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePictureFailed;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestTakePictureFailed()V

    goto :goto_0

    .line 363
    :cond_3
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreviewFailed;

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestStartPreviewFailed()V

    goto :goto_0

    .line 366
    :cond_4
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreviewFailed;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onRequestStopPreviewFailed()V

    goto :goto_0

    .line 369
    :cond_5
    instance-of v0, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    check-cast p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$TakePictureDone;->frame:Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .line 371
    invoke-interface {v0, v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onTakePictureDone(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V

    goto :goto_0

    .line 374
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    check-cast p1, Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onObjectArrived(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V

    goto :goto_0
.end method

.method public onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
    .locals 1
    .param p1, "descriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;
    .param p2, "isConnected"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V

    .line 336
    return-void
.end method

.method public onRecvFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 385
    return-void
.end method

.method public onSendFileProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 380
    return-void
.end method

.method public onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
    .locals 1
    .param p1, "result"    # Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_callback:Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;->onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V

    .line 346
    return-void
.end method

.method public requestStartPreview(Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;)V
    .locals 2
    .param p1, "sizeInfo"    # Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;

    .prologue
    .line 75
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Size info is null."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;

    invoke-direct {v1, p1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStartPreview;-><init>(Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStopPreview()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreview;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestStopPreview;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public requestTakePicture()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    new-instance v1, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePicture;

    invoke-direct {v1}, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$RequestTakePicture;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public send(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V
    .locals 1
    .param p1, "frame"    # Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->send(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->start()V

    .line 130
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;->m_transactor:Lcom/ingenic/iwds/datatransactor/DataTransactor;

    invoke-virtual {v0}, Lcom/ingenic/iwds/datatransactor/DataTransactor;->stop()V

    .line 137
    return-void
.end method
