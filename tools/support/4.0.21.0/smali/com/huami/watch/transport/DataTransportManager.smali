.class public Lcom/huami/watch/transport/DataTransportManager;
.super Ljava/lang/Object;
.source "DataTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/DataTransportManager$1;,
        Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;,
        Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_TRANSPORT_SERVICE:Ljava/lang/String; = "com.huami.watch.transport.DataTransportService"

.field public static final DEBUG:Z

.field private static final sWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBindIntent:Landroid/content/Intent;

.field private mConnectionCallback:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

.field private mConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

.field private mContext:Landroid/content/Context;

.field private mDataCallbacks:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/DataApi$CallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

.field private mModuleName:Ljava/lang/String;

.field private mTransportCallback:Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

.field private mTransportService:Lcom/huami/watch/transport/ITransportDataService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    .line 34
    invoke-static {}, Lcom/huami/watch/util/Config;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/DataTransportManager;->DEBUG:Z

    .line 37
    sget-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.ingenic.iwds.device"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.huami.watch.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.ingenic.watchmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.huami.watch.hmwatchmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.huami.watch.wearservices"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "callbacks"    # Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
    .param p4, "listener"    # Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Trans-Manager"

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mDataCallbacks:Landroid/support/v4/util/ArrayMap;

    .line 65
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportManager;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;-><init>(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/DataTransportManager$1;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mHandler:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    .line 67
    iput-object p3, p0, Lcom/huami/watch/transport/DataTransportManager;->mConnectionCallback:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    .line 68
    iput-object p4, p0, Lcom/huami/watch/transport/DataTransportManager;->mConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .line 70
    const-string v0, "com.huami.watch.transport.DataTransportService"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/transport/DataTransportManager;->createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mBindIntent:Landroid/content/Intent;

    .line 71
    iput-object p2, p0, Lcom/huami/watch/transport/DataTransportManager;->mModuleName:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;-><init>(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/DataTransportManager$1;)V

    iput-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportCallback:Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

    .line 73
    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/ITransportDataService;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huami/watch/transport/DataTransportManager;Lcom/huami/watch/transport/ITransportDataService;)Lcom/huami/watch/transport/ITransportDataService;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;
    .param p1, "x1"    # Lcom/huami/watch/transport/ITransportDataService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/DataTransportManager;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mBindIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/DataTransportManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportCallback:Lcom/huami/watch/transport/DataTransportManager$TransportCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mConnectionCallback:Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/DataTransportManager;)Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mConnectionFailedListener:Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huami/watch/transport/DataTransportManager;)Landroid/support/v4/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/DataTransportManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mDataCallbacks:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method private createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 102
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 105
    .local v8, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 108
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v2

    .line 112
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v9, Lcom/huami/watch/transport/DataTransportManager;->sWhiteList:Ljava/util/ArrayList;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 118
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 119
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 124
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 134
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/DataTransportManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    new-instance v0, Lcom/huami/watch/transport/DataTransportManager;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/huami/watch/transport/DataTransportManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)Lcom/huami/watch/transport/DataTransportManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "connectionCallbacks"    # Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;

    .prologue
    .line 82
    new-instance v0, Lcom/huami/watch/transport/DataTransportManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huami/watch/transport/DataTransportManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/transport/HmApiClient$ConnectionCallbacks;Lcom/huami/watch/transport/HmApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mHandler:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->connect()V

    .line 303
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mHandler:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->disconnect()V

    .line 310
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mHandler:Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;

    invoke-virtual {v0}, Lcom/huami/watch/transport/DataTransportManager$BindServiceHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huami/watch/transport/ITransportChannelListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v0, p1, p2}, Lcom/huami/watch/transport/ITransportDataService;->registerChannelListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportChannelListener;)V

    .line 284
    return-void
.end method

.method public registerDataCallback(JLcom/huami/watch/transport/DataApi$CallbackListener;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "listener"    # Lcom/huami/watch/transport/DataApi$CallbackListener;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mDataCallbacks:Landroid/support/v4/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method public registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huami/watch/transport/ITransportDataListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v0, p1, p2}, Lcom/huami/watch/transport/ITransportDataService;->registerDataListener(Ljava/lang/String;Lcom/huami/watch/transport/ITransportDataListener;)V

    .line 279
    return-void
.end method

.method public sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-boolean v1, Lcom/huami/watch/transport/DataTransportManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "Trans-Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendData uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getData()Lcom/huami/watch/transport/DataBundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v1, p1}, Lcom/huami/watch/transport/ITransportDataService;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const-string v1, "Trans-Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Data Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterChannelListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v0, p1}, Lcom/huami/watch/transport/ITransportDataService;->unregisterChannelListener(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public unregisterDataListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/huami/watch/transport/DataTransportManager;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v0, p1}, Lcom/huami/watch/transport/ITransportDataService;->unregisterDataListener(Ljava/lang/String;)V

    .line 288
    return-void
.end method
