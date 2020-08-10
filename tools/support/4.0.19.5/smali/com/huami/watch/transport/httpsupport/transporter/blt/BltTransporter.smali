.class public Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
.super Ljava/lang/Object;
.source "BltTransporter.java"

# interfaces
.implements Lcom/huami/watch/transport/Transporter$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;,
        Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_CONNECTION_CHANGED:Ljava/lang/String; = "com.huami.watch.action.DEVICE_CONNECTION_CHANGED"

.field public static final ACTION_DEVICE_CONNECTION_CHANGED_IOS:Ljava/lang/String; = "com.huami.watch.action.DEVICE_CONNECTION_CHANGED_IOS"

.field public static final ACTION_WATCH_CONNECT_WITH_COMPANION:Ljava/lang/String; = "com.huami.watch.WATCH_CONNED_4_COMPANION"

.field public static final CONN_BLE_CTRL:Ljava/lang/String; = "com.huami.watch.extra.conn.ctrl"

.field public static final EXTRA_DEVICE_CONNECTION_STATUS:Ljava/lang/String; = "com.huami.watch.extra.DEVICE_CONNECTION_STATUS"

.field public static IS_BLE:Z = false

.field public static final KEY_DEVICE_BOND_TYPE:Ljava/lang/String; = "com.huami.watch.key.DEVICE_BOND_TYPE"

.field private static TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J = 0x0L

.field private static final TIME_OUT_FOR_LOOKSIDE:J = 0x9c40L

.field public static final VALUE_DEVICE_BOND_TYPE_ANDROID:I = 0x1

.field public static final VALUE_DEVICE_BOND_TYPE_IOS_BLE:I = 0x2

.field public static final VALUE_DEVICE_BOND_TYPE_NONE:I

.field private static sBLTTimeOutHandler:Landroid/os/Handler;

.field private static sTimeOutMonitor:Landroid/os/HandlerThread;

.field private static sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private looksideAssist2Watch:Ljava/lang/Runnable;

.field private looksideWatch2Assist:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mTransporter:Lcom/huami/watch/transport/Transporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->IS_BLE:Z

    .line 47
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "http-support-timeout-monitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutMonitor:Landroid/os/HandlerThread;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutMonitor:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutMonitor:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sBLTTimeOutHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    .line 490
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$3;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->looksideWatch2Assist:Ljava/lang/Runnable;

    .line 510
    new-instance v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$4;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->looksideAssist2Watch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sBLTTimeOutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;
    .param p1, "x1"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->dataOutResponseTo(Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private declared-synchronized dataOutResponseTo(Lcom/huami/watch/transport/httpsupport/model/DataItem;ILcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V
    .locals 5
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "code"    # I
    .param p3, "response"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 411
    :cond_1
    :try_start_1
    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 413
    .local v0, "has":Z
    :goto_1
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v1, :cond_2

    .line 414
    const-string v1, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data send result code rev ---> "

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

    const-string v3, " , CODE\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , targetWho : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , remove trigger res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data send result code rev ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , CODE\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , targetWho : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , remove trigger res: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz p3, :cond_0

    .line 426
    invoke-interface {p3, p2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;->onResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 410
    .end local v0    # "has":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 411
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private filterInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> Take as \u5185\u90e8\u547d\u4ee4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_1

    .line 375
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Take as \u5185\u90e8\u547d\u4ee4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_1
    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    if-nez v3, :cond_1

    .line 119
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "WH-BLT"

    const-string v3, "Transporter is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    const-string v4, "Transporter is NULL!"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return v1

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v3, :cond_6

    .line 132
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.huami.watch.extra.DEVICE_CONNECTION_STATUS"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.huami.watch.extra.conn.ctrl"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5

    :cond_2
    move v0, v2

    .line 134
    .local v0, "conn":Z
    :goto_1
    sget-boolean v3, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v3, :cond_3

    .line 135
    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\t\t\tSettings.System.getInt(mContext.getContentResolver(), CONN_BLE_CTRL, 0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.huami.watch.extra.conn.ctrl"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    if-nez v0, :cond_6

    .line 138
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_4

    .line 139
    const-string v2, "WH-BLT"

    const-string v3, "\n\t\t\t******  \u624b\u8868\u8ddf\u624b\u673a\u538b\u6839\u5c31\u6ca1\u8fde\u63a5! ******\n"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    const-string v4, "\n\t\t\t******  \u624b\u8868\u8ddf\u624b\u673a\u538b\u6839\u5c31\u6ca1\u8fde\u63a5! ******\n"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "conn":Z
    :cond_5
    move v0, v1

    .line 132
    goto :goto_1

    .line 149
    :cond_6
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v3}, Lcom/huami/watch/transport/Transporter;->isTransportServiceConnected()Z

    move-result v3

    if-nez v3, :cond_8

    .line 150
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_7

    .line 151
    const-string v2, "WH-BLT"

    const-string v3, "Transporter service NOT connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_7
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    const-string v4, "Transporter service NOT connected!"

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 161
    goto/16 :goto_0
.end method

.method public final dataOut(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)Z
    .locals 10
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "response"    # Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->check()Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v6, :cond_0

    .line 167
    invoke-virtual {p1, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 171
    :goto_0
    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 172
    const/4 v5, 0x0

    .line 276
    :goto_1
    return v5

    .line 169
    :cond_0
    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->createDataItemToDataBundle(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/DataBundle;

    move-result-object v2

    .line 175
    .local v2, "dataBundle":Lcom/huami/watch/transport/DataBundle;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    const-string v6, "priority"

    invoke-virtual {v2, v6, v7}, Lcom/huami/watch/transport/DataBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    :goto_2
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v6, :cond_2

    .line 191
    const-string v6, "WH-BLT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending ---> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-BLT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending ---> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;

    invoke-direct {v1, p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    .line 205
    .local v1, "callbackTrigger":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;

    invoke-direct {v8, p0, p1, v1, p2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$2;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;)V

    invoke-virtual {v6, v7, v2, v8}, Lcom/huami/watch/transport/Transporter;->send(Ljava/lang/String;Lcom/huami/watch/transport/DataBundle;Lcom/huami/watch/transport/Transporter$DataSendResultCallback;)V

    .line 255
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->IS_BLE:Z

    if-nez v6, :cond_4

    .line 256
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v6, :cond_3

    .line 257
    const-string v6, "WH-BLT"

    const-string v7, "WITH --- CALL BACK --- DELAY !FOR ANDROID."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_3
    sget-object v6, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sBLTTimeOutHandler:Landroid/os/Handler;

    sget-wide v8, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    sget-object v6, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sTimeOutTriggerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_4
    sget-boolean v6, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v6, :cond_5

    .line 267
    const-string v6, "WH-BLT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After send ---> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , targetWho "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v6

    const-string v7, "WH-BLT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After send ---> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , targetWho "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    .end local v1    # "callbackTrigger":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$TimeOutCallbackTrigger;
    :cond_6
    const-string v6, "p"

    invoke-virtual {p1, v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "priority":Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, "pri":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 187
    :goto_3
    const-string v6, "priority"

    invoke-virtual {v2, v6, v3}, Lcom/huami/watch/transport/DataBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 183
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public getTransporter()Lcom/huami/watch/transport/Transporter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    return-object v0
.end method

.method protected handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 386
    return-void
.end method

.method public declared-synchronized hasMark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 6
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v1, 0x1

    .line 296
    monitor-enter p0

    const/16 v2, 0x2000

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_0

    .line 298
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FLAG_DATA_SYNC_FLOW \u653e\u884c ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLAG_DATA_SYNC_FLOW \u653e\u884c ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :goto_0
    monitor-exit p0

    return v1

    .line 309
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    move-result-object v0

    .line 310
    .local v0, "orm":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->markLook(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_2

    .line 312
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has mark ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has mark ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    .end local v0    # "orm":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 323
    .restart local v0    # "orm":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    :cond_3
    :try_start_2
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v1, :cond_4

    .line 324
    const-string v1, "WH-BLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore from mark down ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore from mark down ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public lookSideBlt()V
    .locals 5

    .prologue
    .line 478
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->looksideWatch2Assist:Ljava/lang/Runnable;

    .line 479
    .local v0, "target":Ljava/lang/Runnable;
    :goto_0
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v1, :cond_0

    .line 480
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v1, :cond_2

    const-string v1, "<WATCH> "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "==> LOOKSIDE TOUCH REMOVE & RELAUNCH! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->IS_WATCH:Z

    if-eqz v1, :cond_3

    const-string v1, "<WATCH> "

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "==> LOOKSIDE TOUCH REMOVE & RELAUNCH! "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sBLTTimeOutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    sget-object v1, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->sBLTTimeOutHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void

    .line 478
    .end local v0    # "target":Ljava/lang/Runnable;
    :cond_1
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->looksideAssist2Watch:Ljava/lang/Runnable;

    goto :goto_0

    .line 480
    .restart local v0    # "target":Ljava/lang/Runnable;
    :cond_2
    const-string v1, "<PHONE> "

    goto :goto_1

    .line 484
    :cond_3
    const-string v1, "<PHONE> "

    goto :goto_2
.end method

.method public final onDataReceived(Lcom/huami/watch/transport/TransportDataItem;)V
    .locals 8
    .param p1, "transportDataItem"    # Lcom/huami/watch/transport/TransportDataItem;

    .prologue
    .line 339
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 341
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "wake-for-http-sync"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 342
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 344
    invoke-virtual {p1}, Lcom/huami/watch/transport/TransportDataItem;->getData()Lcom/huami/watch/transport/DataBundle;

    move-result-object v0

    .line 345
    .local v0, "bundle":Lcom/huami/watch/transport/DataBundle;
    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/model/DataUtils;->createDataBundleToDataItem(Lcom/huami/watch/transport/DataBundle;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v1

    .line 347
    .local v1, "dataItem":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v4, :cond_0

    .line 348
    const-string v4, "WH-BLT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on data received from WearCompanion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-BLT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on data received from WearCompanion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->filterInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->handleInnerCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->plainItemDataIn(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method

.method protected plainItemDataIn(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 397
    return-void
.end method

.method public declared-synchronized removeMark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z
    .locals 6
    .param p1, "dataItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    move-result-object v0

    .line 281
    .local v0, "orm":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->markDown(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    move-result v1

    .line 282
    .local v1, "res":Z
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_BLT:Z

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "WH-BLT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove mark ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-BLT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove mark ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " res : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return v1

    .line 280
    .end local v0    # "orm":Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;
    .end local v1    # "res":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final start(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.huami.watch.key.DEVICE_BOND_TYPE"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->IS_BLE:Z

    .line 79
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "com.huami.watch.http-support.manager"

    invoke-static {p1, v0}, Lcom/huami/watch/transport/Transporter;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/transport/Transporter;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    .line 81
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->addDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V

    .line 82
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/Transporter;->connectTransportService()V

    .line 84
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    new-instance v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;

    invoke-direct {v2, p0}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$1;-><init>(Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;)V

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/Transporter;->addChannelListener(Lcom/huami/watch/transport/Transporter$ChannelListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.huami.watch.key.DEVICE_BOND_TYPE"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    const-wide/32 v0, 0x493e0

    :goto_1
    sput-wide v0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J

    .line 102
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "WH-SERIAL_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\t\t*\u5f53\u524dcallback \u4fdd\u8bc1\u7684time-out\u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u79d2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sget-boolean v0, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v0

    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t\t\t*\u5f53\u524dcallback \u4fdd\u8bc1\u7684time-out\u65f6\u95f4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->TIME_OUT_FOR_CALLBACK_FAILED_TRIGGER:J

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u79d2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 76
    goto/16 :goto_0

    .line 98
    :cond_3
    const-wide/16 v0, 0x3a98

    goto :goto_1
.end method

.method public final stop(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/Transporter;->removeDataListener(Lcom/huami/watch/transport/Transporter$DataListener;)V

    .line 113
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mTransporter:Lcom/huami/watch/transport/Transporter;

    invoke-virtual {v0}, Lcom/huami/watch/transport/Transporter;->disconnectTransportService()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method
