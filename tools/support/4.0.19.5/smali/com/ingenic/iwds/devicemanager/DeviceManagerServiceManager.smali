.class public Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "DeviceManagerServiceManager.java"


# static fields
.field public static final ACTION_WEAR_ON_LEFT_HAND:Ljava/lang/String; = "iwds.devicemanager.action.wear_on_left_hand"

.field public static final ACTION_WEAR_ON_RIGHT_HAND:Ljava/lang/String; = "iwds.devicemanager.action.wear_on_right_hand"


# instance fields
.field private a:Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager$1;-><init>(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;)Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a:Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    return-object v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;)Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a:Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    return-object p1
.end method


# virtual methods
.method public isWearOnRightHand()Z
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a:Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    invoke-interface {v1}, Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;->isWearOnRightHand()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in isWearOnRightHand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWearOnRightHand(Z)V
    .locals 3
    .param p1, "isOnRightHand"    # Z

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/devicemanager/DeviceManagerServiceManager;->a:Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/devicemanager/IDeviceManagerService;->setWearOnRightHand(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in setWearOnRightHand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
