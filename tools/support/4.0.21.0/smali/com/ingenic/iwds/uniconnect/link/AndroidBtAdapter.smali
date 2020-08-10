.class public Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;
.super Lcom/ingenic/iwds/uniconnect/link/Adapter;
.source "AndroidBtAdapter.java"


# instance fields
.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private b:Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

.field private c:Z

.field private d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterManager"    # Lcom/ingenic/iwds/uniconnect/link/AdapterManager;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    sget-object v2, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->TAG_ANDROID_BT_DATA_CHANNEL:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v2}, Lcom/ingenic/iwds/uniconnect/link/Adapter;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/link/AdapterManager;Ljava/lang/String;)V

    .line 43
    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    .line 46
    iput v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->e:I

    .line 47
    iput v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->f:I

    .line 49
    new-instance v2, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;

    invoke-direct {v2, p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter$1;-><init>(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)V

    iput-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->g:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    :goto_0
    const-string v1, "Android does not support bluetooth."

    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->d:I

    return p1
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    const-string v2, "mService"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    const-string v2, "getAddress"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    iget-object v2, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v0, "Call Bluetooth by reflection failed."

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->d:I

    return v0
.end method

.method static synthetic c(Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;)Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->b:Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    return-object v0
.end method


# virtual methods
.method public cancelDiscovey()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    .line 152
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    goto :goto_0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "Call m_btAdapter.disable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 202
    return-void
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 194
    const-string v0, "Call m_btAdapter.enable"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public startDiscovery(Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;)I
    .locals 3
    .param p1, "callbacks"    # Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    const-string v0, "BT was disabled"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const/4 v0, -0x7

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    if-eqz v1, :cond_2

    .line 166
    const-string v0, "device discovery is ongoing(cancel it)"

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const/4 v0, -0x8

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->cancelDiscovey()V

    .line 172
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->b:Lcom/ingenic/iwds/uniconnect/link/Adapter$DeviceDiscoveryCallbacks;

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->c:Z

    .line 174
    iput v0, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->d:I

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    .line 179
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/link/AndroidBtAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 181
    :cond_4
    if-nez v1, :cond_0

    .line 182
    const/4 v0, -0x4

    goto :goto_0
.end method
