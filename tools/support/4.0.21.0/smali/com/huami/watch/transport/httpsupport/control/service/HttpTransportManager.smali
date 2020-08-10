.class public Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$ReportTriggerForCacheRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_CONNECTION_CHANGED:Ljava/lang/String; = "com.huami.watch.action.DEVICE_CONNECTION_CHANGED"

.field private static final TIME_DELAY_TO_TRIGGER_REPORT_CACHE:J = 0x2710L

.field private static bleTransContainMethod:Ljava/lang/reflect/Method;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;


# instance fields
.field private coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

.field private mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

.field private mContext:Landroid/content/Context;

.field private mData2AppClientOverMSGTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

.field private mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

.field private mExchangeeForClient:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

.field private sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sHandler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mExchangeeForClient:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    .line 239
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 240
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "Data2AppClientOverMSGTaskManager"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AppClientOverMSGTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 241
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "Data2AssistOverBltTaskManager"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 243
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mExchangeeForClient:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;->setExchangee(Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;)V

    .line 245
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$2;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    .line 280
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->start(Landroid/content/Context;)V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->initEnumCollector()V

    .line 287
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->startService(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->process(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->removeItemToSendingList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "x2"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendByBlt(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendDataItemToAssist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lclc/utils/taskmanager/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->handleDataFromRemote(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mExchangeeForClient:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addItemToSendingList(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 899
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***\u52a0\u5165\u5217\u8868\u4e2d****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 905
    :goto_0
    return-void

    .line 902
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***\u672a\u80fd\u52a0\u5165\u5217\u8868\u4e2d****itemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sendingItemalreadyList is null?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static doInit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    if-nez v0, :cond_1

    .line 96
    const-class v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    .line 100
    :cond_0
    monitor-exit v1

    .line 102
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 291
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "data":Ljava/lang/String;
    const-string v1, "d-path"

    invoke-virtual {p2, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removeExtraPairByKey(Ljava/lang/String;)Z

    .line 293
    invoke-virtual {p2, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    new-instance v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;

    sget-object v3, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v2, p0, v3, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$3;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    .line 301
    return-void
.end method

.method private static getBleDataTransContainId(Ljava/lang/String;)Z
    .locals 8
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 870
    :try_start_0
    sget-object v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->bleTransContainMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 871
    const-string v4, "com.huami.watch.ble.trasnfer.BLEDataTransfor"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 872
    .local v0, "bleDataTransforCls":Ljava/lang/Class;
    const-string v4, "containsKeyId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->bleTransContainMethod:Ljava/lang/reflect/Method;

    .line 874
    .end local v0    # "bleDataTransforCls":Ljava/lang/Class;
    :cond_0
    sget-object v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->bleTransContainMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 875
    .local v2, "res":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 876
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "res":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 881
    :cond_1
    :goto_0
    return v3

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->doInit(Landroid/content/Context;)V

    .line 539
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sInstance:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    return-object v0
.end method

.method private declared-synchronized handleDataFromRemote(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const-string v1, "WH-SERIAL_MODE"

    const-string v2, "Data from Service WITH "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v1, :cond_1

    .line 709
    const-string v2, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will handleDataFromRemote ---> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u5df2\u7ecf\u52a9\u624b\u5904\u7406"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will handleDataFromRemote ---> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , state : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u5df2\u7ecf\u52a9\u624b\u5904\u7406"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1, p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$6;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 731
    .local v0, "t":Lclc/utils/taskmanager/Task;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AppClientOverMSGTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    .line 709
    .end local v0    # "t":Lclc/utils/taskmanager/Task;
    :cond_2
    :try_start_1
    const-string v1, "\u672a\u7ecf\u52a9\u624b\u5904\u7406\u8fc7"

    goto :goto_0

    .line 716
    :cond_3
    const-string v1, "\u672a\u7ecf\u52a9\u624b\u5904\u7406\u8fc7"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initEnumCollector()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$4;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    .line 497
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    const-string v1, "EC-HttpTransportManager"

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->setName(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method

.method private isSendingNow(Ljava/lang/String;)Z
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->getBleDataTransContainId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***BLE\u8fc7\u6ee4\u4e86****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 889
    const/4 v0, 0x1

    .line 895
    :goto_0
    return v0

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***BLE\u4e2d\u4e0d\u5b58\u5728****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 894
    :cond_1
    const-string v0, "***isSendingNow false"

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized process(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 8
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_1

    .line 548
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESS DATA NOW ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "sub":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 553
    .local v0, "len":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 554
    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 556
    :cond_0
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW SOME DATA ? ------> \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n ==============\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v0    # "len":I
    .end local v3    # "sub":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROCESS DATA NOW ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v2

    .line 570
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 642
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_2

    .line 643
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0d\u8ba4\u8bc6\u7684STATE ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0d\u8ba4\u8bc6\u7684STATE ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 590
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 594
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_4

    .line 595
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5c1d\u8bd5\u5c06\u6570\u636e\u8fd4\u56de\u7ed9client ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c1d\u8bd5\u5c06\u6570\u636e\u8fd4\u56de\u7ed9client ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mExchangeeForClient:Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;

    invoke-virtual {v4, p1}, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService$Exchangee;->sendToClient(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v1

    .line 605
    .local v1, "res":Z
    if-nez v1, :cond_7

    .line 606
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_5

    .line 607
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5ba2\u6237\u7aef\u4e0d\u5b58\u5728\uff0c\u5c06\u7f13\u5b58 ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5ba2\u6237\u7aef\u4e0d\u5b58\u5728\uff0c\u5c06\u7f13\u5b58 ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 617
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v4, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 619
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_6

    .line 620
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f13\u5b58\u5b8c\u6210 ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7f13\u5b58\u5b8c\u6210 ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 547
    .end local v1    # "res":Z
    .end local v2    # "state":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 630
    .restart local v1    # "res":Z
    .restart local v2    # "state":I
    :cond_7
    :try_start_2
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v4, :cond_8

    .line 631
    const-string v4, "WH-SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u56de\u4f20\u6210\u529f ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u56de\u4f20\u6210\u529f ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private query0(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    return-object v0
.end method

.method private removeItemToSendingList(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***\u4ece\u5217\u8868\u4e2d\u5220\u9664****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 912
    :cond_0
    return-void
.end method

.method private sendByBlt(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "resListener"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    .line 657
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will send ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , to \u52a9\u624b."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will send ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , to \u52a9\u624b."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->check()Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_1

    .line 669
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u624b\u8868\u672a\u8fde\u63a5\uff0c\u6570\u636e\u5c06\u88ab\u7f13\u5b58 , will CACHE ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n\n=========\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u8868\u672a\u8fde\u63a5\uff0c\u6570\u636e\u5c06\u88ab\u7f13\u5b58 , will ######CACHE######  ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 679
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 694
    :goto_0
    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mBltTranser:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-virtual {v0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z

    .line 685
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v0, :cond_3

    .line 686
    const-string v0, "WH-SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Sent Result Code ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , to Assistant. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Sent Result Code ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , to Assistant. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendDataItemToAssist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
    .locals 3
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "needLook"    # Z

    .prologue
    .line 914
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_0

    .line 915
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->sendingItemalreadyList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 917
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "itemId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->isSendingNow(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->tryToSendDataItemToAssist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 920
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->addItemToSendingList(Ljava/lang/String;)V

    .line 923
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***\u4e0d\u5728\u5217\u8868\u4e2d\u5e76\u4e14\u53d1\u9001\u4e86****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***\u5728\u5217\u8868\u4e2d\u5ffd\u7565\u4e86****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->ii(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_0

    .line 520
    const-string v2, "WH-SRV"

    const-string v3, "\n\t====================\tWEAR HTTP SERVICE START\t========================\n"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "\n\t====================\tWEAR HTTP SERVICE START\t========================\n"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/huami/watch/transport/httpsupport/transporter/server/DuplexDataExchangeService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v1, "service":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v1    # "service":Landroid/content/Intent;
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized tryToSendDataItemToAssist(Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)Ljava/lang/Runnable;
    .locals 1
    .param p1, "bean"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "needLookAsideDB"    # Z

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lcom/huami/watch/transport/httpsupport/model/DataItem;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public triggerOnceReportTypedUploadCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "targetAction"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "huami.hardware.mcu.bluetooth_le"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 503
    .local v1, "useMcuBle":Z
    if-eqz v1, :cond_0

    .line 504
    const-string v2, "WH-SRV"

    const-string v3, "mcu ble bypass httptransport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$5;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v0, "t":Lclc/utils/taskmanager/Task;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v2, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto :goto_0
.end method

.method public declared-synchronized tryProcessCachedRequestWhilePhoneAvalible(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "huami.hardware.mcu.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 931
    .local v0, "useMcuBle":Z
    if-eqz v0, :cond_1

    .line 932
    const-string v1, "WH-SRV"

    const-string v2, "mcu ble bypass httptransport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v1, :cond_3

    .line 936
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v1, :cond_2

    .line 937
    const-string v1, "WH-SRV"

    const-string v2, "DataCacher is \u7a7a\uff0c\u91cd\u65b0\u521d\u59cb\u5316..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SRV"

    const-string v3, "DataCacher is \u7a7a\uff0c\u91cd\u65b0\u521d\u59cb\u5316..."

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .end local p1    # "context":Landroid/content/Context;
    :goto_1
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 944
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-eqz v1, :cond_0

    .line 949
    :cond_3
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

    if-nez v1, :cond_4

    .line 950
    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;

    sget-object v2, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v1, p0, v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$8;-><init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Lclc/utils/taskmanager/Task$RunningStatus;)V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

    .line 995
    :cond_4
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

    invoke-virtual {v1, v2}, Lclc/utils/taskmanager/TaskManager;->removeTask(Lclc/utils/taskmanager/Task;)V

    .line 996
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mData2AssistOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->coreTaskOfProcessCachedRequestWhilePhoneAvalible:Lclc/utils/taskmanager/Task;

    invoke-virtual {v1, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 930
    .end local v0    # "useMcuBle":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 943
    .restart local v0    # "useMcuBle":Z
    .restart local p1    # "context":Landroid/content/Context;
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
