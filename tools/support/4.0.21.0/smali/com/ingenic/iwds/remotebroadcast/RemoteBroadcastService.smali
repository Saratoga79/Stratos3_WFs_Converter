.class public Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;
.super Landroid/app/Service;
.source "RemoteBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;

.field private b:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->b:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    invoke-static {p0}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;->getInstance(Landroid/content/Context;)Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->b:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastProxy;

    .line 35
    new-instance v0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;-><init>(Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService;->a:Lcom/ingenic/iwds/remotebroadcast/RemoteBroadcastService$a;

    .line 36
    return-void
.end method
