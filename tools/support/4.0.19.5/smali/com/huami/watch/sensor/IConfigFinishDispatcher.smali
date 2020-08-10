.class public interface abstract Lcom/huami/watch/sensor/IConfigFinishDispatcher;
.super Ljava/lang/Object;
.source "IConfigFinishDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/IConfigFinishDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchConfigFinish(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
