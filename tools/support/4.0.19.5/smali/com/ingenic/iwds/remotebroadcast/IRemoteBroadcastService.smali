.class interface abstract Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService;
.super Ljava/lang/Object;
.source "IRemoteBroadcastService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$RemoteBroadcastServiceProxy;,
        Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerRemoteBroadcastCallback(Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;)I
.end method

.method public abstract registerRemoteReceiver(IILandroid/content/IntentFilter;Ljava/lang/String;)V
.end method

.method public abstract sendRemoteBroadcast(ILandroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract unregisterRemoteBroadcastCallback(I)V
.end method

.method public abstract unregisterRemoteReceiver(II)V
.end method
