.class public interface abstract Lcom/ingenic/iwds/smartvibrate/IVibrateService;
.super Ljava/lang/Object;
.source "IVibrateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract Drv2605Vibrate([I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
