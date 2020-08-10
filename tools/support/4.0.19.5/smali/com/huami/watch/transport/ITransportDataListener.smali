.class public interface abstract Lcom/huami/watch/transport/ITransportDataListener;
.super Ljava/lang/Object;
.source "ITransportDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/ITransportDataListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
