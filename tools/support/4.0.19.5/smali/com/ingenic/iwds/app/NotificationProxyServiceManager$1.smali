.class Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "NotificationProxyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/app/NotificationProxyServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/app/NotificationProxyServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;->a:Lcom/ingenic/iwds/app/NotificationProxyServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;->a:Lcom/ingenic/iwds/app/NotificationProxyServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;)Lcom/ingenic/iwds/app/INotificationProxyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/app/INotificationProxyService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ingenic/iwds/app/NotificationProxyServiceManager$1;->a:Lcom/ingenic/iwds/app/NotificationProxyServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/app/INotificationProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/app/INotificationProxyService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/app/NotificationProxyServiceManager;->a(Lcom/ingenic/iwds/app/NotificationProxyServiceManager;Lcom/ingenic/iwds/app/INotificationProxyService;)Lcom/ingenic/iwds/app/INotificationProxyService;

    .line 49
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 54
    return-void
.end method
