.class public interface abstract Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel$ProviderTransactionModelCallback;
.super Ljava/lang/Object;
.source "ProviderTransactionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/ProviderTransactionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProviderTransactionModelCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChannelAvailable(Z)V
.end method

.method public abstract onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
.end method

.method public abstract onObjectArrived(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onRequest()V
.end method

.method public abstract onRequestFailed()V
.end method

.method public abstract onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end method
