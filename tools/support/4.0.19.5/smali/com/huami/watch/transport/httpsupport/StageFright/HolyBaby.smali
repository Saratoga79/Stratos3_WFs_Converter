.class public final Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
.super Lcom/huami/watch/transport/httpsupport/model/DataItem;
.source "HolyBaby.java"


# static fields
.field public static final ACTION_OF_HOLY_BOARD:Ljava/lang/String; = "_holy_"

.field public static final EXTRA_OF_GRADLE:Ljava/lang/String; = "gradle"

.field public static final EXTRA_OF_TARGET:Ljava/lang/String; = "target"

.field public static final OWNER_OF_HOLY_BOARD:Ljava/lang/String; = "_holy_board"


# instance fields
.field private homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    const/4 v0, 0x0

    const-string v1, "_holy_"

    const-string v2, "_holy_board"

    const-string v3, "get"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "gradle"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->setIdentifier(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parseTimeStamp(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .locals 3
    .param p0, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 56
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-direct {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;-><init>()V

    .line 57
    .local v0, "baby":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->setIdentifier(Ljava/lang/String;)V

    .line 58
    const-string v1, "gradle"

    const-string v2, "gradle"

    invoke-virtual {p0, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "target"

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->withParent(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method private parseTimeStamp(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "timeStr":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "timeStamp":Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    aget-object v4, v3, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 121
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 123
    .local v1, "time":Ljava/lang/Long;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .end local v1    # "time":Ljava/lang/Long;
    .end local v2    # "timeStamp":Ljava/lang/String;
    .end local v3    # "timeStr":[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 118
    .restart local v2    # "timeStamp":Ljava/lang/String;
    .restart local v3    # "timeStr":[Ljava/lang/String;
    :cond_1
    aget-object v2, v3, v6

    goto :goto_0

    .line 124
    .restart local v1    # "time":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "time":Ljava/lang/Long;
    .end local v2    # "timeStamp":Ljava/lang/String;
    .end local v3    # "timeStr":[Ljava/lang/String;
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1
.end method

.method private sortByTimeStamp([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "arrayedItem"    # [Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;

    invoke-direct {v0, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;-><init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 108
    return-object p1
.end method

.method public static zygoteAddAndFillHomeWorkAndKickToFly(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/util/concurrent/ConcurrentHashMap;Lclc/utils/taskmanager/TaskManager;)Ljava/util/HashSet;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p3, "taskManager"    # Lclc/utils/taskmanager/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lclc/utils/taskmanager/TaskManager;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "sWho2UploadSerial":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v4, "holyBabies":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 209
    .local v10, "whosList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 210
    .local v7, "who":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 211
    const-string v11, "WH-SERIAL_MODE"

    const-string v12, "\u7a7a\u7684===================== target DROPped !!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_0
    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v9, v11, v12

    .line 216
    .local v9, "whoPackage":Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v8, v11, v12

    .line 218
    .local v8, "whoAction":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "targetPackage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "*"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 220
    .local v1, "allAction":Z
    const-string v11, "*"

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 221
    .local v2, "allPackage":Z
    if-nez v2, :cond_1

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 222
    const-string v11, "WH-SERIAL_MODE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6ce8\u610f\uff01\uff01\uff01 111 \u5ffd\u7565\u4e86 \u4e0d\u5173\u5fc3\u7684who \uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , \u53ea\u5173\u5fc3\uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->extractTargetActions()Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 227
    const-string v11, "WH-SERIAL_MODE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6ce8\u610f\uff01\uff01\uff01  \u5ffd\u7565\u4e86 \u4e0d\u5173\u5fc3\u7684who \uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , \u53ea\u5173\u5fc3\uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_2
    const-string v11, "WH-SERIAL_MODE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*****OK GO --> \u63a5\u7eb3\u4e86 who \uff1a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v3, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-direct {v3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;-><init>()V

    .line 234
    .local v3, "baby":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    invoke-virtual {v3, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->withParent(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, p0, v11}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->fillHomeWork(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 239
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->addBaby(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V

    .line 241
    invoke-virtual {p1, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->addNewHolyWho2Queque(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .end local v1    # "allAction":Z
    .end local v2    # "allPackage":Z
    .end local v3    # "baby":Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;
    .end local v6    # "targetPackage":Ljava/lang/String;
    .end local v7    # "who":Ljava/lang/String;
    .end local v8    # "whoAction":Ljava/lang/String;
    .end local v9    # "whoPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->pollHolyParentTarget()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 245
    invoke-static {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    move-result-object v11

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->pollHolyParentTarget()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, p1, v12}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->kickToFly(Lclc/utils/taskmanager/TaskManager;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Ljava/lang/String;)V

    .line 248
    :cond_4
    return-object v4
.end method


# virtual methods
.method public addExtraPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "gradle"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->lookupAllHomeWork()Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 70
    :cond_0
    return-void
.end method

.method public calculateTaskNum()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    goto :goto_0
.end method

.method public fillHomeWork(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "serialIds":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 76
    .local v1, "arrayedItemIds":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->sortByTimeStamp([Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v5, "sb":Ljava/lang/StringBuffer;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 82
    .local v3, "id":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    const-string v6, "gradle"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 88
    return-void
.end method

.method public finishHomeWork(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "singleWork"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return v1

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "WH-SERIAL_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f5c\u4e1a\u6ca1\u5bf9\u4e0a\uff01\uff01\uff01\uff1a check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> against "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f5c\u4e1a\u6ca1\u5bf9\u4e0a\uff01\uff01\uff01\uff1a check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> against "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 156
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "WH-SERIAL_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BABY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5b8c\u6210\u4e86\u4f5c\u4e1a ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SERIAL_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BABY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u5b8c\u6210\u4e86\u4f5c\u4e1a ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hasMoreHomeWork()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookupAllHomeWork()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    const-string v6, "gradle"

    invoke-virtual {p0, v6}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "holy":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    const/4 v6, 0x0

    .line 186
    :goto_0
    return-object v6

    .line 176
    :cond_0
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "strs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v6, :cond_1

    .line 178
    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 180
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 181
    .local v4, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0
.end method

.method public nextHomeWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->homeWork:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public parent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "_holy_board"

    invoke-super {p0, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setOwner(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public withParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->parent:Ljava/lang/String;

    .line 197
    const-string v0, "target"

    invoke-virtual {p0, v0, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->addExtraPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method
