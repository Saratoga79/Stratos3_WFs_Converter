.class public interface abstract Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback;
.super Ljava/lang/Object;
.source "IRemoteDeviceSettingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotedevice/IRemoteDeviceSettingCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDoneSetting(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetSetting(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
