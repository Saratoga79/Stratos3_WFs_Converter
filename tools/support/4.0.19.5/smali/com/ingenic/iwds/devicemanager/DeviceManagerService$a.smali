.class Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;
.super Lcom/ingenic/iwds/devicemanager/IDeviceManagerService$Stub;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ingenic/iwds/devicemanager/DeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ingenic/iwds/devicemanager/IDeviceManagerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ingenic/iwds/devicemanager/DeviceManagerService$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized isWearOnRightHand()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "isOnRightHand"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    monitor-exit p0

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWearOnRightHand(Z)Z
    .locals 3
    .param p1, "isOnRightHand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "isOnRightHand"

    invoke-static {v0, v1, p1}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 72
    invoke-static {p1}, Lcom/ingenic/iwds/smartsense/SensorService;->setWearOnRightHand(Z)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    if-eqz p1, :cond_1

    const-string v0, "iwds.devicemanager.action.wear_on_right_hand"

    .line 77
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/ingenic/iwds/devicemanager/DeviceManagerService;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return v1

    .line 75
    :cond_1
    :try_start_1
    const-string v0, "iwds.devicemanager.action.wear_on_left_hand"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
