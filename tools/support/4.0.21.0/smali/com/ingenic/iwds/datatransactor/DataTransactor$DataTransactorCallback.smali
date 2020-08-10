.class public interface abstract Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorCallback;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataTransactorCallback"
.end annotation


# virtual methods
.method public abstract onChannelAvailable(Z)V
.end method

.method public abstract onDataArrived(Ljava/lang/Object;)V
.end method

.method public abstract onLinkConnected(Lcom/ingenic/iwds/DeviceDescriptor;Z)V
.end method

.method public abstract onRecvFileProgress(I)V
.end method

.method public abstract onSendFileProgress(I)V
.end method

.method public abstract onSendResult(Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactResult;)V
.end method
