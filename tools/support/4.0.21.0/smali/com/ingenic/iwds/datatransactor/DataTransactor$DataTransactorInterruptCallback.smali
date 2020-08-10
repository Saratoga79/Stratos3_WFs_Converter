.class public interface abstract Lcom/ingenic/iwds/datatransactor/DataTransactor$DataTransactorInterruptCallback;
.super Ljava/lang/Object;
.source "DataTransactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/datatransactor/DataTransactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataTransactorInterruptCallback"
.end annotation


# virtual methods
.method public abstract onRecvFileInterrupted(I)V
.end method

.method public abstract onSendFileInterrupted(I)V
.end method
