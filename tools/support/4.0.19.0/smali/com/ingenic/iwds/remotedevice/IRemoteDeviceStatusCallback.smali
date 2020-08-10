.class public interface abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback;
.super Ljava/lang/Object;
.source "IRemoteDeviceStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceStatusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemoteDeviceReady(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
