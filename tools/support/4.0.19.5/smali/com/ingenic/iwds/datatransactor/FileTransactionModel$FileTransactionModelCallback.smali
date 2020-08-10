.class public interface abstract Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionModelCallback;
.super Ljava/lang/Object;
.source "FileTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/FileTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileTransactionModelCallback"
.end annotation


# virtual methods
.method public abstract onCancelForReceiveFile()V
.end method

.method public abstract onChannelAvailable(Z)V
.end method

.method public abstract onConfirmForReceiveFile()V
.end method

.method public abstract onFileArrived(Ljava/io/File;)V
.end method

.method public abstract onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
.end method

.method public abstract onRecvFileProgress(I)V
.end method

.method public abstract onRequestSendFile(Lcom/ingenic/iwds/datatransactor/FileInfo;)V
.end method

.method public abstract onSendFileProgress(I)V
.end method

.method public abstract onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end method
