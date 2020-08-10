.class public interface abstract Lcom/huami/watch/wearubc/IUbcService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/wearubc/IUbcService$Stub;,
        Lcom/huami/watch/wearubc/IUbcService$Stub$Proxy;,
        Lcom/huami/watch/wearubc/IUbcService$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract insert(Landroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSync(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
