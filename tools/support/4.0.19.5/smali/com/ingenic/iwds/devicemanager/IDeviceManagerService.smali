.class public interface abstract Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;
.super Ljava/lang/Object;
.source "IDeviceManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/devicemanager/IDeviceManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isWearOnRightHand()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWearOnRightHand(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
