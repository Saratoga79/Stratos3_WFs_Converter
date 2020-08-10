.class public Lcom/ingenic/iwds/app/NotificationProxyService;
.super Landroid/app/Service;
.source "NotificationProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;-><init>(Lcom/ingenic/iwds/app/NotificationProxyService;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService;->a:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyService;->a:Lcom/ingenic/iwds/app/NotificationProxyService$NotificationProxyServiceStub;

    return-object v0
.end method
