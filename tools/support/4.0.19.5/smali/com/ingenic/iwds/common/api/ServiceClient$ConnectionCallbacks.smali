.class public interface abstract Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/common/api/ServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallbacks"
.end annotation


# virtual methods
.method public abstract onConnectFailed(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V
.end method

.method public abstract onConnected(Lcom/ingenic/iwds/common/api/ServiceClient;)V
.end method

.method public abstract onDisconnected(Lcom/ingenic/iwds/common/api/ServiceClient;Z)V
.end method
