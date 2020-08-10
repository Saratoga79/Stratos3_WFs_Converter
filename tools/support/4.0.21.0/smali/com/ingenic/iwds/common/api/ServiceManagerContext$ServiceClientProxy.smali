.class public abstract Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.super Ljava/lang/Object;
.source "ServiceManagerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ServiceClientProxy"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBinder()Landroid/os/IBinder;
.end method

.method public abstract onServiceConnected(Landroid/os/IBinder;)V
.end method

.method public abstract onServiceDisconnected(Z)V
.end method
