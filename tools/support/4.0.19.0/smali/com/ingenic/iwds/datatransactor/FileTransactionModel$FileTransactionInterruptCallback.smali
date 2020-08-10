.class public interface abstract Lcom/ingenic/iwds/datatransactor/FileTransactionModel$FileTransactionInterruptCallback;
.super Ljava/lang/Object;
.source "FileTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/FileTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileTransactionInterruptCallback"
.end annotation


# virtual methods
.method public abstract onFileTransferError(I)V
.end method

.method public abstract onRecvFileInterrupted(I)V
.end method

.method public abstract onSendFileInterrupted(I)V
.end method
