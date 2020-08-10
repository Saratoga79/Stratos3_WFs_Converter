.class public Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;
.super Landroid/app/Service;
.source "RemoteWakeLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

.field private b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    invoke-static {p0}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;->getInstance(Landroid/content/Context;)Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->a:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockProxy;

    .line 29
    new-instance v0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;-><init>(Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService;->b:Lcom/ingenic/iwds/remotewakelock/RemoteWakeLockService$a;

    .line 30
    return-void
.end method
