.class public interface abstract Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback;
.super Ljava/lang/Object;
.source "ISlptClockServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/slpt/ISlptClockServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract isAlive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
