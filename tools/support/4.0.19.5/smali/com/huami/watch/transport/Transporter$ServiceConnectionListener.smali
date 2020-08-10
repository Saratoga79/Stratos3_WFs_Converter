.class public interface abstract Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "Transporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/Transporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceConnectionListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected(Landroid/os/Bundle;)V
.end method

.method public abstract onServiceConnectionFailed(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
.end method

.method public abstract onServiceDisconnected(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V
.end method
