.class interface abstract Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService;
.super Ljava/lang/Object;
.source "IRemoteWakeLockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$RemoteWakeLockProxy;,
        Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract acquireWakeLock(IIJ)V
.end method

.method public abstract destroyRemoteWakeLock(II)V
.end method

.method public abstract newRemoteWakeLock(IIILjava/lang/String;)V
.end method

.method public abstract registerRemoteWakeLockCallback(Lcom/ingenic/iwds/remotewakelock/IRemoteWakeLockCallback;)I
.end method

.method public abstract releaseWakeLock(II)V
.end method

.method public abstract unregisterRemoteWakeLockCallback(I)V
.end method
