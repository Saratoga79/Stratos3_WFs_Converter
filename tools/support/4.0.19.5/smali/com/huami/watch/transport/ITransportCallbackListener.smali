.class public interface abstract Lcom/huami/watch/transport/ITransportCallbackListener;
.super Ljava/lang/Object;
.source "ITransportCallbackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/ITransportCallbackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
