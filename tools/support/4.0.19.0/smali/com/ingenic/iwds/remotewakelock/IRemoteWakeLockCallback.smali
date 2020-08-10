.class interface abstract Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;
.super Ljava/lang/Object;
.source "IRemoteWakeLockCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$RemoteWakeLockCallbackPorxy;,
        Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract performAcquireResult(IIJ)V
.end method

.method public abstract performAvailableChanged(Z)V
.end method
