.class public Lcom/huami/watch/transport/TransporterClassic;
.super Lcom/huami/watch/transport/Transporter;
.source "TransporterClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TRANSPORT_SERVICE:Ljava/lang/String; = "com.huami.watch.transport.DataTransportService"

.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "Transporter-Classic"

.field private static mTransportServiceReceiver:Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;

.field private static sTransporterHub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huami/watch/transport/Transporter;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChannelAvailable:Z

.field private final mChannelListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/Transporter$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDataReceiveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/Transporter$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSendResultCallbacks:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/huami/watch/transport/Transporter$DataSendResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTransportServiceConnected:Z

.field private mIsTransportServiceConnecting:Z

.field private mModuleName:Ljava/lang/String;

.field private mModuleTag:Ljava/lang/String;

.field private mServiceChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

.field private final mServiceConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceDataReceiveListener:Lcom/huami/watch/transport/ITransportDataListener;

.field private mServiceDataSendResultListener:Lcom/huami/watch/transport/ITransportCallbackListener;

.field private mServiceServiceConnectionListener:Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

.field private mTransportService:Lcom/huami/watch/transport/ITransportDataService;

.field private mTransportServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/TransporterClassic;->sTransporterHub:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/huami/watch/util/Config;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/huami/watch/transport/Transporter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelAvailable:Z

    .line 58
    new-instance v0, Lcom/huami/watch/transport/TransporterClassic$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/TransporterClassic$1;-><init>(Lcom/huami/watch/transport/TransporterClassic;)V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceDataSendResultListener:Lcom/huami/watch/transport/ITransportCallbackListener;

    .line 77
    new-instance v0, Lcom/huami/watch/transport/TransporterClassic$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/TransporterClassic$2;-><init>(Lcom/huami/watch/transport/TransporterClassic;)V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceDataReceiveListener:Lcom/huami/watch/transport/ITransportDataListener;

    .line 95
    new-instance v0, Lcom/huami/watch/transport/TransporterClassic$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/TransporterClassic$3;-><init>(Lcom/huami/watch/transport/TransporterClassic;)V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

    .line 114
    new-instance v0, Lcom/huami/watch/transport/TransporterClassic$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/TransporterClassic$4;-><init>(Lcom/huami/watch/transport/TransporterClassic;)V

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceServiceConnectionListener:Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .line 166
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleName:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transporter-Classic["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/TransporterClassic;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceServiceConnectionListener:Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceDataSendResultListener:Lcom/huami/watch/transport/ITransportCallbackListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportChannelListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceChannelListener:Lcom/huami/watch/transport/ITransportChannelListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceDataReceiveListener:Lcom/huami/watch/transport/ITransportDataListener;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/huami/watch/transport/TransporterClassic;->sTransporterHub:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huami/watch/transport/TransporterClassic;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/TransporterClassic;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/TransporterClassic;)Lcom/huami/watch/transport/ITransportDataService;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/huami/watch/transport/TransporterClassic;Lcom/huami/watch/transport/ITransportDataService;)Lcom/huami/watch/transport/ITransportDataService;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;
    .param p1, "x1"    # Lcom/huami/watch/transport/ITransportDataService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/huami/watch/transport/TransporterClassic;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    return p1
.end method

.method static synthetic access$902(Lcom/huami/watch/transport/TransporterClassic;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/TransporterClassic;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    return p1
.end method

.method private createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 319
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 322
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 325
    .local v8, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 326
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 328
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v2

    .line 332
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 336
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 337
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 342
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 352
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/transport/Transporter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "transporter":Lcom/huami/watch/transport/Transporter;
    sget-object v3, Lcom/huami/watch/transport/TransporterClassic;->sTransporterHub:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 181
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/huami/watch/transport/Transporter;>;"
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "transporter":Lcom/huami/watch/transport/Transporter;
    check-cast v2, Lcom/huami/watch/transport/Transporter;

    .line 184
    .restart local v2    # "transporter":Lcom/huami/watch/transport/Transporter;
    :cond_0
    if-nez v2, :cond_1

    .line 185
    new-instance v2, Lcom/huami/watch/transport/TransporterClassic;

    .end local v2    # "transporter":Lcom/huami/watch/transport/Transporter;
    invoke-direct {v2, p0, p1}, Lcom/huami/watch/transport/TransporterClassic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    .restart local v2    # "transporter":Lcom/huami/watch/transport/Transporter;
    sget-object v3, Lcom/huami/watch/transport/TransporterClassic;->sTransporterHub:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    sget-object v3, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceReceiver:Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;-><init>(Lcom/huami/watch/transport/TransporterClassic$1;)V

    sput-object v3, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceReceiver:Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.huami.watch.transport.DataTransportService.Start"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceReceiver:Lcom/huami/watch/transport/TransporterClassic$TransportServiceStartReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public addChannelListener(Lcom/huami/watch/transport/Transporter$ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$ChannelListener;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelAvailable:Z

    invoke-interface {p1, v0}, Lcom/huami/watch/transport/Transporter$ChannelListener;->onChannelChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    monitor-enter v1

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_1
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$DataListener;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addServiceConnectionListener(Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-boolean v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceConnected(Landroid/os/Bundle;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_1
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectTransportService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    sget-boolean v1, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect TransportService, Now Is Connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Is Connecting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_0
    iget-boolean v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    if-nez v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mContext:Landroid/content/Context;

    const-string v2, "com.huami.watch.transport.DataTransportService"

    invoke-direct {p0, v1, v2}, Lcom/huami/watch/transport/TransporterClassic;->createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceIntent:Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    const-string v2, "DataTransportService Not Found!!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iput-boolean v5, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    .line 221
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportServiceIntent:Landroid/content/Intent;

    new-instance v3, Lcom/huami/watch/transport/TransporterClassic$5;

    invoke-direct {v3, p0}, Lcom/huami/watch/transport/TransporterClassic$5;-><init>(Lcom/huami/watch/transport/TransporterClassic;)V

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 271
    .local v0, "success":Z
    if-nez v0, :cond_3

    .line 273
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceServiceConnectionListener:Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    invoke-interface {v1, v6}, Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;->onServiceConnectionFailed(Lcom/huami/watch/transport/Transporter$ConnectionResult;)V

    .line 274
    iput-object v6, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    .line 275
    iput-boolean v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    .line 276
    iput-boolean v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    .line 279
    :cond_3
    sget-boolean v1, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 280
    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect TransportService : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    const-string v1, "Success"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "Failed"

    goto :goto_1
.end method

.method public disconnectTransportService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    sget-boolean v1, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnect TransportService, Now Is Connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Is Connecting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    iget-boolean v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    if-eqz v1, :cond_1

    .line 292
    iput-boolean v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnecting:Z

    .line 293
    iput-boolean v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceDataSendResultListener:Lcom/huami/watch/transport/ITransportCallbackListener;

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregistersendCallbackListener(Lcom/huami/watch/transport/ITransportCallbackListener;)V

    .line 297
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregisterChannelListener(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    iget-object v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/huami/watch/transport/ITransportDataService;->unregisterDataListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/huami/watch/transport/TransporterClassic;->isTransportServiceConnected()Z

    move-result v0

    return v0
.end method

.method public isTransportServiceConnected()Z
    .locals 3

    .prologue
    .line 307
    sget-boolean v0, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransportService Now Is Connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mIsTransportServiceConnected:Z

    return v0
.end method

.method public removeChannelListener(Lcom/huami/watch/transport/Transporter$ChannelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$ChannelListener;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mChannelListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$DataListener;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataReceiveListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeServiceConnectionListener(Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huami/watch/transport/Transporter$ServiceConnectionListener;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/huami/watch/transport/TransporterClassic;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Ljava/lang/String;Lcom/huami/watch/transport/DataBundle;Lcom/huami/watch/transport/Transporter$DataSendResultCallback;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Lcom/huami/watch/transport/DataBundle;
    .param p3, "result"    # Lcom/huami/watch/transport/Transporter$DataSendResultCallback;

    .prologue
    const/4 v6, 0x0

    .line 364
    new-instance v0, Lcom/huami/watch/transport/TransportDataItem;

    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleName:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/huami/watch/transport/TransportDataItem;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "dataItem":Lcom/huami/watch/transport/TransportDataItem;
    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/TransportDataItem;->addAction(Ljava/lang/String;)V

    .line 366
    if-nez p2, :cond_0

    new-instance p2, Lcom/huami/watch/transport/DataBundle;

    .end local p2    # "data":Lcom/huami/watch/transport/DataBundle;
    invoke-direct {p2}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/TransportDataItem;->setData(Lcom/huami/watch/transport/DataBundle;)V

    .line 368
    invoke-virtual {p0}, Lcom/huami/watch/transport/TransporterClassic;->isTransportServiceConnected()Z

    move-result v2

    .line 369
    .local v2, "isServiceConnected":Z
    if-eqz v2, :cond_4

    .line 370
    sget-boolean v3, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/huami/watch/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_1
    if-eqz p3, :cond_2

    .line 383
    iget-object v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    monitor-enter v4

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 385
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mTransportService:Lcom/huami/watch/transport/ITransportDataService;

    invoke-interface {v3, v0}, Lcom/huami/watch/transport/ITransportDataService;->sendData(Lcom/huami/watch/transport/TransportDataItem;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :cond_3
    :goto_0
    return-void

    .line 385
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 391
    iget-object v4, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    monitor-enter v4

    .line 392
    :try_start_3
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mDataSendResultCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/huami/watch/transport/TransportDataItem;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 393
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 396
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    sget-boolean v3, Lcom/huami/watch/transport/TransporterClassic;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 397
    iget-object v3, p0, Lcom/huami/watch/transport/TransporterClassic;->mModuleTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", without service connected!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/huami/watch/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_5
    if-eqz p3, :cond_3

    .line 400
    new-instance v3, Lcom/huami/watch/transport/DataTransportResult;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/huami/watch/transport/DataTransportResult;-><init>(Lcom/huami/watch/transport/TransportDataItem;I)V

    invoke-interface {p3, v3}, Lcom/huami/watch/transport/Transporter$DataSendResultCallback;->onResultBack(Lcom/huami/watch/transport/DataTransportResult;)V

    goto :goto_0
.end method
