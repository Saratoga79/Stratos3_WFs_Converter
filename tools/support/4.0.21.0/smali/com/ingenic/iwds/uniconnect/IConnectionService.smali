.class public interface abstract Lcom/ingenic/iwds/uniconnect/IConnectionService;
.super Ljava/lang/Object;
.source "IConnectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/IConnectionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createConnection(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/IConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
