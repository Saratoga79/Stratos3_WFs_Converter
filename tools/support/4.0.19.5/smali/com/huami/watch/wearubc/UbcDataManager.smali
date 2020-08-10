.class public Lcom/huami/watch/wearubc/UbcDataManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;,
        Lcom/huami/watch/wearubc/UbcDataManager$UbcTableData;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static WATCH_EVENT_PREFIX:Ljava/lang/String; = "watch"

.field private static sUbcCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCacheBeforeConnectedWithService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/huami/watch/wearubc/IUbcService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceConnectionState:I

.field private mServiceHandler:Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/huami/watch/wearubc/GlobalConfig;->DEBUG:Z

    sput-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/huami/watch/wearubc/UbcDataManager;->sUbcCaches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    new-instance v0, Lcom/huami/watch/wearubc/UbcDataManager$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/wearubc/UbcDataManager$1;-><init>(Lcom/huami/watch/wearubc/UbcDataManager;)V

    iput-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    invoke-direct {v0, p0, p1}, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;-><init>(Lcom/huami/watch/wearubc/UbcDataManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceHandler:Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    invoke-direct {p0}, Lcom/huami/watch/wearubc/UbcDataManager;->initService()V

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/wearubc/UbcDataManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/wearubc/UbcDataManager;->handleServiceConnectState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/wearubc/UbcDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/wearubc/UbcDataManager;->putEventInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/wearubc/UbcDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/wearubc/UbcDataManager;->releaseInternal()V

    return-void
.end method

.method static synthetic access$302(Lcom/huami/watch/wearubc/UbcDataManager;Lcom/huami/watch/wearubc/IUbcService;)Lcom/huami/watch/wearubc/IUbcService;
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mService:Lcom/huami/watch/wearubc/IUbcService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huami/watch/wearubc/UbcDataManager;)Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceHandler:Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    return-object p0
.end method

.method private createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, p2

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_2
    :goto_1
    move-object p1, p2

    return-object p1
.end method

.method private handleServiceConnectState(I)V
    .locals 4

    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UbcDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServiceConnectState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "UbcDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    sget-boolean p1, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "UbcDataManager"

    const-string v0, "testCach Service is connecting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    sget-boolean p1, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "UbcDataManager"

    const-string v0, "testCach Service connected put cached event first"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "UbcDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCach putCatchEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/huami/watch/wearubc/UbcDataManager;->putEventInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_2
    sget-boolean p1, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "UbcDataManager"

    const-string v0, "testCach Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initService()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.UBC_SERVICE"

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/wearubc/UbcDataManager;->createIntentFromAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UbcDataManager"

    const-string v1, "init service failed, is service been uninstalled?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceHandler:Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private putEventInternal(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UbcDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCach putEventInternal jsonEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mService:Lcom/huami/watch/wearubc/IUbcService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mService:Lcom/huami/watch/wearubc/IUbcService;

    iget-object v1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/huami/watch/wearubc/UbcDataManager$UbcTableData;->putEventItem(Lcom/huami/watch/wearubc/IUbcService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UbcDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testCatch putEvent failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "UbcDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testCatch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " record success"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "UbcDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCach mService is null event lost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "UbcDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCach putEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in cache when service not connected"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mCacheBeforeConnectedWithService:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "UbcDataManager"

    const-string v0, "try to rebind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/huami/watch/wearubc/UbcDataManager;->initService()V

    :cond_5
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    iget v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceConnectionState:I

    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UbcDataManager"

    const-string v1, "service unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/huami/watch/wearubc/UbcDataManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "UbcDataManager"

    const-string v1, "UbcDataManager released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public putEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/wearubc/UbcDataManager;->mServiceHandler:Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/huami/watch/wearubc/UbcDataManager$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
