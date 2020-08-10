.class public interface abstract Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;
.super Ljava/lang/Object;
.source "IConnectionCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/uniconnect/IConnectionCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract stateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
