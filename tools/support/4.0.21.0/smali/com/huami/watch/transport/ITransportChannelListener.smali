.class public interface abstract Lcom/huami/watch/transport/ITransportChannelListener;
.super Ljava/lang/Object;
.source "ITransportChannelListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/ITransportChannelListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChannelChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
