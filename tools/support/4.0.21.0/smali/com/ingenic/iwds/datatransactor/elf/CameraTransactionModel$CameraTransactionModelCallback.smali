.class public interface abstract Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel$CameraTransactionModelCallback;
.super Ljava/lang/Object;
.source "CameraTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/elf/CameraTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraTransactionModelCallback"
.end annotation


# virtual methods
.method public abstract onChannelAvailable(Z)V
.end method

.method public abstract onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
.end method

.method public abstract onObjectArrived(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V
.end method

.method public abstract onRequestStartPreview(Lcom/ingenic/iwds/datatransactor/elf/CameraPreviewSizeInfo;)V
.end method

.method public abstract onRequestStartPreviewFailed()V
.end method

.method public abstract onRequestStopPreview()V
.end method

.method public abstract onRequestStopPreviewFailed()V
.end method

.method public abstract onRequestTakePicture()V
.end method

.method public abstract onRequestTakePictureFailed()V
.end method

.method public abstract onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end method

.method public abstract onTakePictureDone(Lcom/ingenic/iwds/datatransactor/elf/CameraFrameInfo;)V
.end method
