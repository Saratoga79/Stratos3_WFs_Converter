.class public interface abstract Lcom/huami/watch/klvp/IKlvpResponseDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub;,
        Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub$Proxy;,
        Lcom/huami/watch/klvp/IKlvpResponseDispatcher$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract dispatchResponse(Lcom/huami/watch/klvp/KlvpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
