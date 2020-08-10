.class public interface abstract Lcom/ingenic/iwds/utils/serializable/TransferAdapter$TransferAdapterCallback;
.super Ljava/lang/Object;
.source "TransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/utils/serializable/TransferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferAdapterCallback"
.end annotation


# virtual methods
.method public abstract onFileTransferError(Lcom/ingenic/iwds/common/exception/FileTransferException;)V
.end method

.method public abstract onRecvFileInterrupted(I)V
.end method

.method public abstract onRecvFileProgress(JJ)V
.end method

.method public abstract onSendFileInterrupted(I)V
.end method

.method public abstract onSendFileProgress(JJ)V
.end method
