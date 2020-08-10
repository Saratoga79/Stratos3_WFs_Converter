.class public interface abstract Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback;
.super Ljava/lang/Object;
.source "IRemoteSensorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/IRemoteSensorCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSensorAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ingenic/iwds/smartsense/Sensor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
