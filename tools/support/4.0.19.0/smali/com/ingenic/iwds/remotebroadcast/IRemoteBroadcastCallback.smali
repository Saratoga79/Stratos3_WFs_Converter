.class interface abstract Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback;
.super Ljava/lang/Object;
.source "IRemoteBroadcastCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$RemoteBroadcastCallbackProxy;,
        Lcom/ingenic/iwds/remotebroadcast/IRemoteBroadcastCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract performReceive(ILandroid/content/Intent;)V
.end method

.method public abstract performSendResult(Landroid/content/Intent;Ljava/lang/String;I)V
.end method
