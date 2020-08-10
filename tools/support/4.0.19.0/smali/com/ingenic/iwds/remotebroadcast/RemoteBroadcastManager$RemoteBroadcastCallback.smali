.class public interface abstract Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager$RemoteBroadcastCallback;
.super Ljava/lang/Object;
.source "RemoteBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteBroadcastCallback"
.end annotation


# virtual methods
.method public abstract onCallerError(I)V
.end method

.method public abstract onSendResult(Landroid/content/Intent;Ljava/lang/String;I)V
.end method
