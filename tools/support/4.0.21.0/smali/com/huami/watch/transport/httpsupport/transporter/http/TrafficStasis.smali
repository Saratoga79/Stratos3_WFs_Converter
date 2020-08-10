.class public Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;
.super Ljava/lang/Object;
.source "TrafficStasis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;
    }
.end annotation


# static fields
.field public static final CLEAR_ACTION:Ljava/lang/String; = "clear_traffic_data"

.field private static final PREF_FILE:Ljava/lang/String; = "traffic_stat.xml"

.field public static final TAG:Ljava/lang/String; = "Traffic"

.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;


# instance fields
.field private cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTimingReset:Landroid/content/BroadcastReceiver;

.field private onTrafficListener:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

.field private task:Lclc/utils/taskmanager/Task;

.field private taskManager:Lclc/utils/taskmanager/TaskManager;

.field private taskToPrint:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "task-of-traffic-print"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskManager:Lclc/utils/taskmanager/TaskManager;

    .line 205
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$3;

    sget-object v1, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$3;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;Lclc/utils/taskmanager/Task$RunningStatus;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->task:Lclc/utils/taskmanager/Task;

    .line 213
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskToPrint:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->initAll()V

    .line 58
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->initTiming(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lclc/utils/taskmanager/Task;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->task:Lclc/utils/taskmanager/Task;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lclc/utils/taskmanager/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskManager:Lclc/utils/taskmanager/TaskManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->onTrafficListener:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    return-object v0
.end method

.method public static format(J)Ljava/lang/String;
    .locals 6
    .param p0, "val"    # J

    .prologue
    .line 269
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "df":Ljava/text/DecimalFormat;
    long-to-float v3, p0

    const/high16 v4, 0x44800000    # 1024.0f

    div-float v1, v3, v4

    .line 271
    .local v1, "kb":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const-string v3, "0"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "val2floatKB":Ljava/lang/String;
    return-object v2

    .line 271
    .end local v2    # "val2floatKB":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->sInstance:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->sInstance:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    .line 48
    :cond_0
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->sInstance:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAll()V
    .locals 7

    .prologue
    .line 63
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    const-string v5, "traffic_stat.xml"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 69
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 70
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 66
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 73
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private initTiming(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x3b

    const/4 v2, 0x0

    .line 223
    new-instance v8, Landroid/content/Intent;

    const-string v1, "clear_traffic_data"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v8, "intent":Landroid/content/Intent;
    const/16 v3, 0x17

    const-wide/32 v6, 0x5265c00

    move-object v1, p1

    move v5, v4

    move v9, v2

    invoke-static/range {v1 .. v9}, Lcom/huami/watch/transport/httpsupport/AlarmDriver;->inject(Landroid/content/Context;IIIIJLandroid/content/Intent;I)V

    .line 226
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mTimingReset:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mTimingReset:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "clear_traffic_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mTimingReset:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    return-void

    .line 233
    .end local v0    # "f":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;

    invoke-direct {v1, p0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$5;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)V

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mTimingReset:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public varargs declared-synchronized appendChannelDownload(Ljava/lang/String;[[B)V
    .locals 18
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "others"    # [[B

    .prologue
    .line 126
    monitor-enter p0

    if-nez p2, :cond_1

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    const-wide/16 v12, 0x0

    .line 132
    .local v12, "len":J
    move-object/from16 v8, p2

    .local v8, "arr$":[[B
    :try_start_0
    array-length v14, v8

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v14, :cond_3

    aget-object v9, v8, v11

    .line 133
    .local v9, "bs":[B
    if-eqz v9, :cond_2

    .line 135
    array-length v3, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v3

    add-long/2addr v12, v4

    .line 132
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 138
    .end local v9    # "bs":[B
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :catch_0
    move-exception v10

    .line 139
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v6, v12

    .line 142
    .local v6, "val":J
    new-instance v2, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;

    sget-object v4, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;J)V

    .line 158
    .local v2, "t":Lclc/utils/taskmanager/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v3, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 161
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 165
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskToPrint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskToPrint:Ljava/lang/Runnable;

    const-wide/16 v16, 0x8fc

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v2    # "t":Lclc/utils/taskmanager/Task;
    .end local v6    # "val":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public varargs declared-synchronized appendChannelUpload(Ljava/lang/String;[[B)V
    .locals 18
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "others"    # [[B

    .prologue
    .line 77
    monitor-enter p0

    const-wide/16 v12, 0x0

    .line 79
    .local v12, "len":J
    if-eqz p2, :cond_1

    .line 80
    move-object/from16 v8, p2

    .local v8, "arr$":[[B
    :try_start_0
    array-length v14, v8

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_1

    aget-object v9, v8, v11

    .line 81
    .local v9, "bs":[B
    if-eqz v9, :cond_0

    .line 83
    array-length v3, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v3

    add-long/2addr v12, v4

    .line 80
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 87
    .end local v9    # "bs":[B
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :catch_0
    move-exception v10

    .line 88
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v8    # "arr$":[[B
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    move-wide v6, v12

    .line 92
    .local v6, "val":J
    new-instance v2, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$1;

    sget-object v4, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$1;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .local v2, "t":Lclc/utils/taskmanager/Task;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskManager:Lclc/utils/taskmanager/TaskManager;

    invoke-virtual {v3, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lclc/utils/taskmanager/TaskManager;->execute()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :goto_1
    :try_start_3
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 122
    :goto_2
    monitor-exit p0

    return-void

    .line 110
    :catch_1
    move-exception v10

    .line 111
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 77
    .end local v2    # "t":Lclc/utils/taskmanager/Task;
    .end local v6    # "val":J
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    .restart local v2    # "t":Lclc/utils/taskmanager/Task;
    .restart local v6    # "val":J
    :cond_2
    :try_start_5
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskToPrint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    sget-object v3, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->taskToPrint:Ljava/lang/Runnable;

    const-wide/16 v16, 0x8fc

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized logAllChannels()V
    .locals 9

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    const-string v2, "traffic_stat.xml"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 183
    .local v8, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 184
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v2, "Traffic"

    const-string v3, "--- print all now --- start\n"

    invoke-virtual {v0, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v2, "Traffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now at : \t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v8, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->onTrafficListener:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    const-wide/16 v2, -0x1

    invoke-interface {v8, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;->onTrafficExtract(Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v8    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v2, "Traffic"

    const-string v3, "--- print all now --- end\n"

    invoke-virtual {v0, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized logChannelCurrStatistic(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    const-string v2, "traffic_stat.xml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "Traffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- Channel ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now at : \t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->resetAll()V

    .line 195
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mHandler:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAll()V
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->mContext:Landroid/content/Context;

    const-string v2, "traffic_stat.xml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setTrafficListener(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->onTrafficListener:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$OnTrafficListener;

    .line 262
    return-void
.end method
