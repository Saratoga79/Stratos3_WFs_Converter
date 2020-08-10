.class public interface abstract Lcom/ingenic/iwds/smartsense/ISensorEventCallback;
.super Ljava/lang/Object;
.source "ISensorEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/ISensorEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAccuracyChanged(Lcom/ingenic/iwds/smartsense/Sensor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSensorChanged(Lcom/ingenic/iwds/smartsense/SensorEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
