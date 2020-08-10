.class public Lcom/huami/watch/transport/httpsupport/client/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;
.implements Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;,
        Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;
    }
.end annotation


# instance fields
.field private mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

.field private mContext:Landroid/content/Context;

.field private mOnCmdArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;

.field private mOnDataArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

.field private mSerialMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTaskManager:Lclc/utils/taskmanager/TaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mSerialMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Lclc/utils/taskmanager/TaskManager;

    const-string v1, "file-manage"

    invoke-direct {v0, v1}, Lclc/utils/taskmanager/TaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mTaskManager:Lclc/utils/taskmanager/TaskManager;

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is NULL for transport manager."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 115
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    .line 118
    :cond_1
    invoke-static {p1}, Lclc/utils/debug/slog/SolidLogger;->withContext(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->initClient(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/TransportManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/transport/httpsupport/client/TransportManager;)Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/client/TransportManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mOnDataArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

    return-object v0
.end method

.method private checkService()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method private fillDataByFile(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "data":Ljava/lang/String;
    const-string v1, "d-path"

    invoke-virtual {p2, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->removeExtraPairByKey(Ljava/lang/String;)Z

    .line 185
    invoke-virtual {p2, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setData(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mTaskManager:Lclc/utils/taskmanager/TaskManager;

    new-instance v2, Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;

    sget-object v3, Lclc/utils/taskmanager/Task$RunningStatus;->WORK_THREAD:Lclc/utils/taskmanager/Task$RunningStatus;

    invoke-direct {v2, p0, v3, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager$2;-><init>(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 193
    return-void
.end method

.method private initClient(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager$1;-><init>(Lcom/huami/watch/transport/httpsupport/client/TransportManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->setOnCustomCommandListener(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnCustomCommandListener;)V

    .line 176
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->setOnQueryCommandListener(Lcom/huami/watch/transport/httpsupport/client/WearHttpClient$OnQueryCommandListener;)V

    .line 177
    return-void
.end method

.method private sendInternal(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/16 v2, 0x4000

    .line 217
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mSerialMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addFlags(I)V

    .line 224
    :goto_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".2 Send Req for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setFlags(I)V

    .line 229
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->initClient(Landroid/content/Context;)V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "WH-APP"

    const-string v2, " pkg is null for sender..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-APP"

    const-string v3, " pkg is null for sender..."

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 220
    :cond_3
    invoke-virtual {p1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->clearFlags(I)V

    goto :goto_0

    .line 248
    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v1, v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I

    goto :goto_1
.end method


# virtual methods
.method protected doRemainsDataTrans()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onCustomCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "commandItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync-internal-for-assist"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->doRemainsDataTrans()Z

    move-result v0

    .line 41
    .local v0, "needDo":Z
    const-string v1, "test_trans_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRemainsDataTrans()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4, v4}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->tellUploadResultForMe(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "needDo":Z
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_arrival_token"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mOnCmdArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "wifi_trans"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trans---onCustomCommand--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mOnCmdArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;

    invoke-interface {v1, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;->onCmdArrival(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_0
.end method

.method public onQueryCommand(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "commandItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 58
    return-void
.end method

.method public final query(Ljava/lang/String;)I
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v1, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->query(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 266
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final sendAsync(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->sendInternal(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 213
    return-void
.end method

.method public final sendSync(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->sendInternal(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 255
    return-void
.end method

.method public setAsSerialMode(Z)V
    .locals 1
    .param p1, "serialMode"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mSerialMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    return-void
.end method

.method public setOnCmdArrivalListener(Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mOnCmdArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnCmdArrivalListener;

    .line 88
    return-void
.end method

.method public setOnDataArrivalListener(Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;)V
    .locals 0
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mOnDataArrivalListener:Lcom/huami/watch/transport/httpsupport/client/TransportManager$OnDataArrivalListener;

    .line 84
    return-void
.end method

.method public setOnServiceStateChangeListener(Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->initClient(Landroid/content/Context;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v0, p1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->setOnServiceStateChangeListener(Lcom/huami/watch/transport/httpsupport/client/OnServiceStateChangeListener;)V

    .line 95
    return-void
.end method

.method public final tellResponseInvalidFromCloud(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 5
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "owner":Ljava/lang/String;
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_CLIENT:Z

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "WH-APP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' SAYS SERVER GIVE BACK BUT RESPONSE IS INVALID!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-APP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' SAYS SERVER GIVE BACK BUT RESPONSE IS INVALID!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final tellUploadResultForMe(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v2

    const-string v3, "tell-internal-for-assist"

    invoke-virtual {v2, v1, v3}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalSyncAction(Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v0

    .line 309
    .local v0, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    const-string v2, "time"

    invoke-virtual {v0, v2, p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "data"

    invoke-virtual {v0, v2, p3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "res"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 313
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v2, v1, v0}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I

    .line 314
    return-void
.end method

.method protected triggerPoorEnergy(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 180
    return-void
.end method

.method public final triggerUploadManual(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetAction"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->triggerUploadManual(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public final triggerUploadManual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetAction"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->getInstance()Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;

    move-result-object v2

    const-string v3, "_client_trigger_report"

    invoke-virtual {v2, p1, p2, v3}, Lcom/huami/watch/transport/httpsupport/global/GlobalDataSyncKicker;->genInternalEnumCollectAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huami/watch/transport/httpsupport/model/DataItem;

    move-result-object v1

    .line 324
    .local v1, "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/client/TransportManager;->mClient:Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/huami/watch/transport/httpsupport/client/WearHttpClient;->data2Host(Ljava/lang/String;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1    # "item":Lcom/huami/watch/transport/httpsupport/model/DataItem;
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
