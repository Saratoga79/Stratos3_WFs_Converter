.class public interface abstract Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "HmApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/HmApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallbacks"
.end annotation


# virtual methods
.method public abstract onServicesConnected(Landroid/os/Bundle;)V
.end method

.method public abstract onServicesDisConnected(Lcom/huami/watch/transport/ConnectionResult;)V
.end method
