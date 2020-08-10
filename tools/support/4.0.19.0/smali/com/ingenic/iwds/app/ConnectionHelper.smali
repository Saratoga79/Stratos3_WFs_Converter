.class public abstract Lcom/ingenic/iwds/app/ConnectionHelper;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"

# interfaces
.implements Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;


# instance fields
.field private m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

.field private m_context:Landroid/content/Context;

.field private m_devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ingenic/iwds/DeviceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private m_filter:Landroid/content/IntentFilter;

.field private m_receiver:Landroid/content/BroadcastReceiver;

.field private m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_filter:Landroid/content/IntentFilter;

    .line 47
    new-instance v0, Lcom/ingenic/iwds/app/ConnectionHelper$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/app/ConnectionHelper$1;-><init>(Lcom/ingenic/iwds/app/ConnectionHelper;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_receiver:Landroid/content/BroadcastReceiver;

    .line 72
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Context is null."

    invoke-static {p0, v0, v3}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_context:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_context:Landroid/content/Context;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Application context is null"

    .line 77
    invoke-static {p0, v1, v0}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/ingenic/iwds/common/api/ServiceClient;

    iget-object v1, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_context:Landroid/content/Context;

    const-string v2, "service_connection"

    invoke-direct {v0, v1, v2, p0}, Lcom/ingenic/iwds/common/api/ServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ingenic/iwds/common/api/ServiceClient$ConnectionCallbacks;)V

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    .line 84
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "iwds.uniconnect.action.connected_address"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "iwds.uniconnect.action.disconnected_address"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ingenic/iwds/app/ConnectionHelper;Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/app/ConnectionHelper;
    .param p1, "x1"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/app/ConnectionHelper;->handleConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ingenic/iwds/app/ConnectionHelper;Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/ingenic/iwds/app/ConnectionHelper;
    .param p1, "x1"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/app/ConnectionHelper;->handleDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    return-void
.end method

.method private handleConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/app/ConnectionHelper;->onConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 94
    :cond_0
    return-void
.end method

.method private handleDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
    .locals 1
    .param p1, "deviceDescriptor"    # Lcom/ingenic/iwds/DeviceDescriptor;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/ingenic/iwds/app/ConnectionHelper;->onDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnectFailed(Lcom/ingenic/iwds/common/api/ServiceClient;Lcom/ingenic/iwds/common/api/ConnectFailedReason;)V
    .locals 3
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "reason"    # Lcom/ingenic/iwds/common/api/ConnectFailedReason;

    .prologue
    .line 184
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to ConnectionService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-virtual {p2}, Lcom/ingenic/iwds/common/api/ConnectFailedReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 186
    return-void
.end method

.method public onConnected(Lcom/ingenic/iwds/common/api/ServiceClient;)V
    .locals 7
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    .line 130
    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->getServiceManagerContext()Lcom/ingenic/iwds/common/api/ServiceManagerContext;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .line 132
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/app/ConnectionHelper;->onServiceConnected(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V

    .line 134
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_receiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .line 137
    invoke-virtual {v0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;

    move-result-object v4

    .line 139
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 142
    if-nez v4, :cond_3

    move v1, v2

    .line 143
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    move v3, v2

    .line 145
    :goto_2
    if-ge v3, v1, :cond_6

    .line 146
    aget-object v6, v4, v3

    invoke-virtual {v6, v0}, Lcom/ingenic/iwds/DeviceDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    const/4 v3, 0x1

    .line 153
    :goto_3
    if-nez v3, :cond_2

    .line 154
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/app/ConnectionHelper;->handleDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    goto :goto_1

    .line 142
    :cond_3
    array-length v1, v4

    goto :goto_0

    .line 145
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 159
    :cond_5
    if-eqz v4, :cond_0

    .line 162
    array-length v0, v4

    :goto_4
    if-ge v2, v0, :cond_0

    aget-object v1, v4, v2

    .line 163
    invoke-direct {p0, v1}, Lcom/ingenic/iwds/app/ConnectionHelper;->handleConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_3
.end method

.method public abstract onConnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
.end method

.method public onDisconnected(Lcom/ingenic/iwds/common/api/ServiceClient;Z)V
    .locals 2
    .param p1, "serviceClient"    # Lcom/ingenic/iwds/common/api/ServiceClient;
    .param p2, "unexpected"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_connectionService:Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;

    .line 173
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ingenic/iwds/DeviceDescriptor;

    .line 174
    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/app/ConnectionHelper;->onDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/app/ConnectionHelper;->onServiceDisconnected(Z)V

    .line 180
    return-void
.end method

.method public abstract onDisconnectedDevice(Lcom/ingenic/iwds/DeviceDescriptor;)V
.end method

.method public abstract onServiceConnected(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V
.end method

.method public abstract onServiceDisconnected(Z)V
.end method

.method public start()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->connect()V

    .line 106
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ingenic/iwds/app/ConnectionHelper;->m_serviceClient:Lcom/ingenic/iwds/common/api/ServiceClient;

    invoke-virtual {v0}, Lcom/ingenic/iwds/common/api/ServiceClient;->disconnect()V

    .line 113
    return-void
.end method
