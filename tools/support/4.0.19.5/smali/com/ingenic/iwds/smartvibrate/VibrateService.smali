.class public Lcom/ingenic/iwds/smartvibrate/VibrateService;
.super Landroid/app/Service;
.source "VibrateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;
    }
.end annotation


# instance fields
.field private a:Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;-><init>(Lcom/ingenic/iwds/smartvibrate/VibrateService$1;)V

    iput-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateService;->a:Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;

    .line 35
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v0, "onBind()"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/ingenic/iwds/smartvibrate/VibrateService;->a:Lcom/ingenic/iwds/smartvibrate/VibrateService$VibrateServiceStub;

    return-object v0
.end method
