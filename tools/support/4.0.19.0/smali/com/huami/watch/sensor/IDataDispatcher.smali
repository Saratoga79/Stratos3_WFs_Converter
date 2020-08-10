.class public interface abstract Lcom/huami/watch/sensor/IDataDispatcher;
.super Ljava/lang/Object;
.source "IDataDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/sensor/IDataDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchData(JLcom/huami/watch/sensor/HealthSensorHistoryData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
