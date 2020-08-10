.class public Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;
.super Lcom/ingenic/iwds/common/api/ServiceManagerContext;
.source "ConnectionServiceManager.java"


# static fields
.field public static final ACTION_CONNECTED_ADDRESS:Ljava/lang/String; = "iwds.uniconnect.action.connected_address"

.field public static final ACTION_DISCONNECTED_ADDRESS:Ljava/lang/String; = "iwds.uniconnect.action.disconnected_address"


# instance fields
.field private a:Lcom/ingenic/iwds/uniconnect/IConnectionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ingenic/iwds/common/api/ServiceManagerContext;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$1;-><init>(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V

    iput-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->m_serviceClientProxy:Lcom/ingenic/iwds/common/api/ServiceManagerContext$ServiceClientProxy;

    .line 68
    return-void
.end method

.method private a(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/Connection;
    .locals 3

    .prologue
    .line 105
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection callback is null."

    .line 106
    invoke-static {p0, v0, v1}, Lcom/ingenic/iwds/utils/IwdsAssert;->dieIf(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a:Lcom/ingenic/iwds/uniconnect/IConnectionService;

    invoke-interface {v0, p1}, Lcom/ingenic/iwds/uniconnect/IConnectionService;->createConnection(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/IConnection;

    move-result-object v1

    .line 111
    new-instance v0, Lcom/ingenic/iwds/uniconnect/Connection;

    invoke-virtual {p0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ingenic/iwds/uniconnect/Connection;-><init>(Landroid/content/Context;Lcom/ingenic/iwds/uniconnect/IConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in createConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)Lcom/ingenic/iwds/uniconnect/IConnectionService;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a:Lcom/ingenic/iwds/uniconnect/IConnectionService;

    return-object v0
.end method

.method static synthetic a(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;Lcom/ingenic/iwds/uniconnect/IConnectionService;)Lcom/ingenic/iwds/uniconnect/IConnectionService;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a:Lcom/ingenic/iwds/uniconnect/IConnectionService;

    return-object p1
.end method


# virtual methods
.method public createConnection()Lcom/ingenic/iwds/uniconnect/Connection;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$2;

    invoke-direct {v0, p0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager$2;-><init>(Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a(Lcom/ingenic/iwds/uniconnect/IConnectionCallBack;)Lcom/ingenic/iwds/uniconnect/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ingenic/iwds/uniconnect/ConnectionServiceManager;->a:Lcom/ingenic/iwds/uniconnect/IConnectionService;

    invoke-interface {v0}, Lcom/ingenic/iwds/uniconnect/IConnectionService;->getConnectedDeviceDescriptors()[Lcom/ingenic/iwds/DeviceDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getConnectedDeviceDescriptors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ingenic/iwds/utils/IwdsLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method
