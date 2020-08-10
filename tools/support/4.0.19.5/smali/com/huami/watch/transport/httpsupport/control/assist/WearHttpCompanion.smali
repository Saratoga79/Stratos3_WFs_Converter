.class public Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
.super Ljava/lang/Object;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;,
        Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_CONNECTION_CHANGED:Ljava/lang/String; = "com.huami.watch.action.DEVICE_CONNECTION_CHANGED"

.field private static sHasInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;


# instance fields
.field private lookingSideNet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

.field private mContext:Landroid/content/Context;

.field private mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private mData2WatchOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

.field private mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

.field private mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

.field private mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

.field private mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

.field private mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private tokenArrivalListener:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sHasInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->lookingSideNet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->doInit(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->doInitEnumCollector()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->data2ClientByBlt(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tokenArrivalListener:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->separateDataItems(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->handleInternalCMD(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    return-object v0
.end method

.method static synthetic access$702(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    return-object p1
.end method

.method static synthetic access$800(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->lookingSideNet:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lclc/utils/taskmanager/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2WatchOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    return-object v0
.end method

.method private clearHttpDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 406
    :try_start_0
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->deleteAll()V

    .line 407
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-nez v0, :cond_0

    .line 408
    :cond_0
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear all cached data for uid ::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear all cached data for uid ::: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private data2ClientByBlt(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 668
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data to client from Wear Componion By BLT. owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , targetWho: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data to client from Wear Componion By BLT. owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , targetWho: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->check()Z

    move-result v0

    if-nez v0, :cond_3

    .line 681
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v0, :cond_1

    .line 682
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 \u624b\u8868\u6682\u65f6\u4e0d\u901a\uff0c\u7f13\u5b58Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 \u624b\u8868\u6682\u65f6\u4e0d\u901a\uff0c\u7f13\u5b58Item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 693
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 694
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 734
    :goto_0
    return-void

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;

    invoke-direct {v1, p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z

    goto :goto_0
.end method

.method private data2ServerByHttp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 12
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v11, 0x0

    .line 744
    const/16 v7, 0x1000

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 745
    const-string v7, "extra_slot_point"

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "slotInExtraKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 747
    const-string v7, "extra_slot_frame"

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "frame":Ljava/lang/String;
    const/4 v1, 0x0

    .line 750
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v1    # "obj":Lorg/json/JSONObject;
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    .end local v0    # "frame":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v6    # "slotInExtraKey":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_1

    .line 760
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before send data to server from Wear Componion By HTTP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Before send data to server from Wear Componion By HTTP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/16 v7, 0x100

    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 772
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->handleExfFlag(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 775
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    iget-object v8, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p1, v3}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->request(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;Ljava/util/Map;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v5

    .line 782
    .local v5, "result":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    if-nez v5, :cond_7

    .line 783
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_3

    .line 784
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u521b\u5efa\u8bf7\u6c42\u7684\u65f6\u5019\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u3002\u8be5\u6b21\u8bf7\u6c42\u5c06\u88ab\u5ffd\u7565\uff01%%%%%%%%%%%%%% : targetWho : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , owner: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u521b\u5efa\u8bf7\u6c42\u7684\u65f6\u5019\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u3002\u8be5\u6b21\u8bf7\u6c42\u5c06\u88ab\u5ffd\u7565\uff01%%%%%%%%%%%%%% : targetWho : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , owner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v4

    .line 796
    .local v4, "res":Z
    if-eqz v4, :cond_5

    .line 797
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_4

    .line 798
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , owner: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , owner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .end local v4    # "res":Z
    :goto_1
    return-void

    .line 807
    .restart local v4    # "res":Z
    :cond_5
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_6

    .line 808
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , owner: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5931\u8d25\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4ece\u6570\u636e\u5e93\u4e2d\u79fb\u9664\u4e86\u5982\u4e0b\u8bf7\u6c42item : targetWho : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , owner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5931\u8d25\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    .end local v4    # "res":Z
    :cond_7
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_8

    .line 823
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "r\u5df2\u8fd4\u56de\uff0c Wear Componion By HTTP : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_8
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "r\u5df2\u8fd4\u56de\uff0cAfter send data to server from Wear Componion By HTTP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_a

    .line 834
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 837
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_9

    .line 838
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\n\u672a\u80fd-\u6210\u529f-\u53d1\u9001 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , \u6570\u636e\uff1a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->drillUnzipData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_9
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n\u672a\u80fd-\u6210\u529f-\u53d1\u9001 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , \u6570\u636e\uff1a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->drillUnzipData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_2
    invoke-direct {p0, v5}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->process(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto/16 :goto_1

    .line 848
    :cond_a
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    new-array v10, v11, [I

    invoke-virtual {v7, v8, v9, v10}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 850
    invoke-virtual {v5, v11}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 855
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v7, :cond_b

    .line 856
    const-string v7, "WH-ASSIST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n\n\u5df2\u7d93\u6210\u529f-\u53d1\u9001 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , \u6570\u636e\uff1a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->drillUnzipData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_b
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-ASSIST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n\u5df2\u7d93-\u6210\u529f-\u53d1\u9001 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , \u6570\u636e\uff1a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->drillUnzipData(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 753
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "result":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .restart local v0    # "frame":Ljava/lang/String;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "slotInExtraKey":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .end local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "obj":Lorg/json/JSONObject;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method

.method private doInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 423
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$2;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    .line 471
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mBluetoothTransporter:Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->start(Landroid/content/Context;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    if-nez v0, :cond_2

    .line 478
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "Data2SrvOverNetworkTaskManager"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2WatchOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    if-nez v0, :cond_3

    .line 482
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "Data2WatchOverBltTaskManager"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2WatchOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 485
    :cond_3
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sHasInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    return-void
.end method

.method private doInitEnumCollector()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$1;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    .line 341
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    const-string v1, "EC-WearHttpCompanion"

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;->setName(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public static getInstance()Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sHasInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "## Call doInit firstly !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    return-object v0
.end method

.method private handleExfFlag(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 14
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/16 v10, 0x400

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1113
    invoke-virtual {p1, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1114
    const-string v10, "exf_path"

    invoke-virtual {p1, v10}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "existsFilePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1116
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v8

    .line 1118
    .local v6, "isValid":Z
    :goto_0
    sget-boolean v10, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v10, :cond_0

    .line 1119
    const-string v10, "WH-ASSIST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u5df2\u7ecf\u5b58\u5728\u4e86etf\u6587\u4ef6 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , \u6709\u6548\u5417\uff1a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v10

    const-string v11, "WH-ASSIST"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5df2\u7ecf\u5b58\u5728\u4e86etf\u6587\u4ef6 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , \u6709\u6548\u5417\uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    if-eqz v6, :cond_2

    .line 1168
    .end local v2    # "existsFilePath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "isValid":Z
    :goto_1
    return v8

    .restart local v2    # "existsFilePath":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    move v6, v9

    .line 1117
    goto :goto_0

    .line 1135
    .end local v2    # "existsFilePath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_2
    const-string v8, "exf"

    invoke-virtual {p1, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "dataExf":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1137
    sget-boolean v8, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v8, :cond_3

    .line 1138
    const-string v8, "WH-ASSIST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No Extra Exf for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , but with THE FLAG!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v8

    const-string v10, "WH-ASSIST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No Extra Exf for : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , but with THE FLAG!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1147
    goto :goto_1

    .line 1150
    :cond_4
    const/4 v7, 0x1

    .line 1152
    .local v7, "res":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1153
    .local v4, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "filePathAndName":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-static {v8, v0, v9}, Lcom/huami/watch/transport/httpsupport/Utils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1158
    const-string v8, "exf"

    invoke-virtual {p1, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removeExtraPairByKey(Ljava/lang/String;)Z

    .line 1161
    const/16 v8, 0x400

    invoke-virtual {p1, v8}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 1162
    const-string v8, "exf_path"

    invoke-virtual {p1, v8, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v8, v7

    .line 1168
    goto/16 :goto_1

    .line 1163
    :catch_0
    move-exception v1

    .line 1164
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1165
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private handleInternalCMD(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 1194
    const-string v1, "res"

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1195
    .local v0, "succeed":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->notifyDataSyncSucceed(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->notifyDataSyncFailed(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method

.method private handlePlainDataItemToServer(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 883
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v1, :cond_0

    .line 884
    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePlainDataItemToServer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle Data From WearService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$5;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$5;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 900
    .local v0, "toServer":Lclc/utils/taskmanager/Task;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 901
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->init(Landroid/content/Context;Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;)V

    .line 360
    return-void
.end method

.method public static init(Landroid/content/Context;Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;

    .prologue
    .line 363
    const/4 v1, 0x0

    invoke-static {v1}, Lclc/utils/debug/slog/SolidLogger;->setMute(Z)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/springchannel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "fileDir":Ljava/lang/String;
    invoke-static {v0}, Lclc/utils/debug/slog/SolidLogger;->setFileDir(Ljava/lang/String;)V

    .line 366
    invoke-static {p0}, Lclc/utils/debug/slog/SolidLogger;->withContext(Landroid/content/Context;)V

    .line 367
    invoke-static {p1}, Lclc/utils/debug/slog/SolidLogger;->setSolidLoggerCallback(Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;)V

    .line 369
    sget-object v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    if-nez v1, :cond_1

    .line 370
    const-class v2, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    monitor-enter v2

    .line 371
    :try_start_0
    sget-object v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    .line 374
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_1
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    .line 380
    const-wide/32 v2, 0x1b77400

    invoke-static {p0, v2, v3}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->startAlarmDriver(Landroid/content/Context;J)Landroid/app/PendingIntent;

    .line 381
    return-void

    .line 374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;
    .param p2, "tokenArrivalListener"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->init(Landroid/content/Context;Lclc/utils/debug/slog/SolidLogger$SolidLoggerCallback;)V

    .line 386
    sget-object v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->sInstance:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-virtual {v0, p2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->setTokenArrivalListener(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;)V

    .line 387
    return-void
.end method

.method private process(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 7
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 522
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v3, :cond_0

    .line 523
    const-string v3, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process in wear companion for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process in wear companion for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getState()I

    move-result v1

    .line 532
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 654
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unimplemented state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/Utils;->log(Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 534
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->data2ServerByHttp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0

    .line 537
    :pswitch_2
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v3, :cond_1

    .line 538
    const-string v3, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , targetWho : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , FAILED ! Will ###CACHE### it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , targetWho : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , FAILED ! Will ###CACHE### it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v3

    iput-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 550
    :cond_2
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-eqz v3, :cond_4

    .line 551
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v3, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v0

    .line 552
    .local v0, "res":Z
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v3, :cond_3

    .line 553
    const-string v3, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cached : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , targetWho : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--> result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cached : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , targetWho : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--> result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    .end local v0    # "res":Z
    :cond_4
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v3, :cond_5

    .line 564
    const-string v3, "WH-ASSIST"

    const-string v4, "Cacher is NULLL!LL!L!L!L!L"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "WH-ASSIST"

    const-string v5, "Cacher is NULLL!LL!L!L!L!L"

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :pswitch_3
    new-instance v2, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;

    sget-object v3, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v2, p0, v3, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 651
    .local v2, "t":Lclc/utils/taskmanager/Task;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2WatchOverBltTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v3, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto/16 :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private query0(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->query(Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    return-object v0
.end method

.method private separateDataItems(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 490
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 492
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 493
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Immediately(\u76f4\u63a5\u5c31) ==> Saved Serial Item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Immediately(\u76f4\u63a5\u5c31) ==> Saved Serial Item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->handlePlainDataItemToServer(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method


# virtual methods
.method public addTrafficMonitor(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;)V
    .locals 4
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCollector()Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->doInitEnumCollector()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mEnumCollector:Lcom/huami/watch/transport/httpsupport/StageFright/EnumCollector;

    return-object v0
.end method

.method public getHttpTransporter()Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    return-object v0
.end method

.method public manageCurrUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 390
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v2, "http_uid_storage"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 395
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "_uid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "oldUid":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->clearHttpDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "_uid"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public notifyDataSyncFailed(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->notifyStateChangeFor(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    .line 1191
    :cond_0
    return-void
.end method

.method public notifyDataSyncSucceed(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->notifyStateChangeFor(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V

    .line 1182
    :cond_0
    return-void
.end method

.method public removeTrafficMonitor(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;)V
    .locals 4
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mTrafficMonitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TrafficMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDataToApp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lclc/utils/taskmanager/Task;
    .locals 4
    .param p1, "itemToApp"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 916
    if-nez p1, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 960
    :goto_0
    return-object v0

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Owner ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_1
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$6;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$6;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 960
    .local v0, "t":Lclc/utils/taskmanager/Task;
    goto :goto_0
.end method

.method public sendDataToServer(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "itemToApp"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 990
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Owner ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 978
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v0, :cond_2

    .line 979
    const-string v0, "WH-ASSIST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataToServer WARNNING: NO ACTION FOUND FOR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataToServer WARNNING: NO ACTION FOUND FOR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_3
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->data2ServerByHttp(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method

.method public setDataSyncMonitor(Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;)V
    .locals 0
    .param p1, "dataSyncMonitor"    # Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataSyncMonitor:Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;

    .line 1173
    return-void
.end method

.method public setPublicParamsBuilder(Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mHttpTransporter:Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/HttpTransporter;->setPublicParamsBuilder(Lcom/huami/watch/transport/httpsupport/global/PublicParamsBuilder;)V

    .line 908
    return-void
.end method

.method public setTokenArrivalListener(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tokenArrivalListener:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$TokenArrivalListener;

    .line 348
    return-void
.end method

.method public declared-synchronized tryProcessCachedRequestWhileNetWorkAvalible()V
    .locals 2

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->lookingSideNet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1004
    :cond_1
    :try_start_1
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$7;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;)V

    .line 1057
    .local v0, "core":Lclc/utils/taskmanager/Task;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1000
    .end local v0    # "core":Lclc/utils/taskmanager/Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryProcessCachedResponseWhileChannelAvalible()V
    .locals 2

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mDataCacher:Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    if-nez v1, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1065
    :cond_0
    new-instance v0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$8;-><init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;)V

    .line 1108
    .local v0, "core":Lclc/utils/taskmanager/Task;
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->mData2SrvOverNetworkTaskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v1, v0}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    goto :goto_0
.end method
