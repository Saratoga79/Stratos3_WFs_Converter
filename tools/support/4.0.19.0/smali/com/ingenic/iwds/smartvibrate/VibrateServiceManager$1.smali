.class Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;
.source "VibrateServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;


# direct methods
.method constructor <init>(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;->a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

    invoke-direct {p0}, Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;->a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

    invoke-static {v0}, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ingenic/iwds/smartvibrate/IVibrateService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager$1;->a:Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;

    invoke-static {p1}, Lcom/ingenic/iwds/smartvibrate/IVibrateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;->a(Lcom/ingenic/iwds/smartvibrate/VibrateServiceManager;Lcom/ingenic/iwds/smartvibrate/IVibrateService;)Lcom/ingenic/iwds/smartvibrate/IVibrateService;

    .line 285
    return-void
.end method

.method public onServiceDisconnected(Z)V
    .locals 0
    .param p1, "unexpected"    # Z

    .prologue
    .line 289
    return-void
.end method
