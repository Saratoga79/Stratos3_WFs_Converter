.class public interface abstract Lcom/huami/watch/sensor/IStressDataDispatcher;
.super Ljava/lang/Object;
.source "IStressDataDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/IStressDataDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyRealtimeStressData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
