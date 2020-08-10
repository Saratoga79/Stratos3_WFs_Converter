.class public Lcom/ingenic/iwds/uniconnect/link/BleAdapter;
.super Lcom/ingenic/iwds/uniconnect/link/Adapter;
.source "BleAdapter.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterManager"    # Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .prologue
    .line 35
    sget-object v0, Lcom/ingenic/iwds/uniconnect/link/BleAdapter;->TAG_BLE_DATA_CHANNEL:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/ingenic/iwds/uniconnect/link/Adapter;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public cancelDiscovey()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public disable()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public startDiscovery(Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;)I
    .locals 1
    .param p1, "callbacks"    # Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
