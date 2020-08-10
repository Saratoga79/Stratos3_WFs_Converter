.class public interface abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback;
.super Ljava/lang/Object;
.source "IRemoteDeviceProcessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceProcessCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDoneKillProcess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResponseRunningAppProcessInfo(Lcom/ingenic/iwds/remotedevice/RemoteProcessInfoList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResponseSystemMemoryInfo(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
