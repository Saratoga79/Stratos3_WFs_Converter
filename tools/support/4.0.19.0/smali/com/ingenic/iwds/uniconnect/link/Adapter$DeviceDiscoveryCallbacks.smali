.class public interface abstract Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;
.super Ljava/lang/Object;
.source "Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/uniconnect/link/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceDiscoveryCallbacks"
.end annotation


# virtual methods
.method public abstract onDeviceFound(Lcom/ingenic/iwds/uniconnect/link/RemoteDevice;)V
.end method

.method public abstract onDiscoveryFinished()V
.end method

.method public abstract onDiscoveryStarted()V
.end method
