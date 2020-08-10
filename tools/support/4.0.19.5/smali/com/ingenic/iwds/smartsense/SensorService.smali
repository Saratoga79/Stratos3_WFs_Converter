.class public Lcom/ingenic/iwds/smartsense/SensorService;
.super Landroid/app/Service;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;
    }
.end annotation


# instance fields
.field private m_service:Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;

    invoke-direct {v0}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService;->m_service:Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;

    .line 43
    return-void
.end method

.method public static setWearOnRightHand(Z)Z
    .locals 1
    .param p0, "isOnRightHand"    # Z

    .prologue
    .line 214
    invoke-static {p0}, Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;->access$100(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v0, "onBind()"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ingenic/iwds/smartsense/SensorService;->m_service:Lcom/ingenic/iwds/smartsense/SensorService$SensorServiceStub;

    return-object v0
.end method
