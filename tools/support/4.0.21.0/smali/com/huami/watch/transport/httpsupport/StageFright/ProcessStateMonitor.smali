.class public Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
.super Ljava/lang/Object;
.source "ProcessStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;
    }
.end annotation


# static fields
.field public static final STATE_BEGIN_SYNC:B = 0x5t

.field public static final STATE_FINISH_SINGINE_ROM_2_ASSIST:B = 0x4t

.field public static final STATE_FINISH_SINGLE_UPLOAD_CLOUD:B = 0x3t

.field public static final STATE_IDLE:B = 0x0t

.field public static final STATE_PREPARE_REQUEST_CLOUD:B = 0x2t

.field public static final STATE_WAITING_FOR_LAZY_GIRL:B = 0x1t


# instance fields
.field private jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

.field private mLastState:B

.field private mState:B

.field private mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private myReportList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field private reportId:Ljava/lang/String;

.field private sumOfFinishedAssist2Cloud:I

.field private sumOfFinishedRom2Assist:I

.field private sumOfNeedAssist2Cloud:I

.field private sumOfNeedRom2Assist:I

.field private syncStateTime:J

.field private trackWho:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    .line 38
    iget-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    iput-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mLastState:B

    .line 40
    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    .line 41
    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    .line 42
    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    .line 43
    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->syncStateTime:J

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->syncStateTime:J

    .line 121
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processor is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private theJack()Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    return-object v0
.end method


# virtual methods
.method public addNewHolyWho2Queque(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public appendSumOfNeedAssist2Cloud(I)V
    .locals 3
    .param p1, "append"    # I

    .prologue
    .line 54
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now append sum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    .line 56
    return-void
.end method

.method public appendSumOfNeedRom2Assist(I)V
    .locals 1
    .param p1, "append"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    .line 51
    return-void
.end method

.method public extractTargetActions()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v0, "res":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 379
    return-object v0
.end method

.method public finishHolyWho(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method public finishOneAssist2Cloud(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->theJack()Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    .line 79
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> \u52a9\u624b\u5230\u4e91\u7aef \uff1a \u603b\u6570\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u5df2\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , item\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    const/4 v1, 0x3

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    invoke-interface {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->onUpdate(III)V

    goto :goto_0
.end method

.method public finishOneRom2Assist(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->theJack()Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    .line 65
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> ROM\u5230\u52a9\u624b \uff1a \u603b\u6570\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u5df2\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , item\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->trackWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    const/4 v1, 0x4

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    iget v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    invoke-interface {v0, v1, v2, v3}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->onUpdate(III)V

    goto :goto_0
.end method

.method public getCurrState()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    return v0
.end method

.method public getLastState()B
    .locals 1

    .prologue
    .line 104
    iget-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mLastState:B

    return v0
.end method

.method public getReportId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->reportId:Ljava/lang/String;

    return-object v0
.end method

.method public getReportListStorage()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/huami/watch/transport/httpsupport/StageFright/ReportListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myReportList:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myReportList:Ljava/util/HashSet;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myReportList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getStartSyncTime()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->syncStateTime:J

    return-wide v0
.end method

.method public getSumOfFinishedAssist2Cloud()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    return v0
.end method

.method public inJack(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;)V
    .locals 0
    .param p1, "j"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    .line 287
    return-void
.end method

.method public isAllHolyFinished()Z
    .locals 4

    .prologue
    .line 406
    const/4 v2, 0x1

    .line 407
    .local v2, "res":Z
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 408
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 409
    and-int/lit8 v2, v2, 0x0

    .line 412
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    and-int/2addr v2, v3

    .line 413
    goto :goto_0

    .line 415
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_1
    return v2
.end method

.method protected isAuto()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public newDataUploaded()Z
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFeedSingleLazyGirl(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 167
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/Command;->isInternal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v7, :cond_2

    .line 173
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 177
    :cond_2
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 179
    .local v2, "exist":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 180
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v7, :cond_3

    .line 181
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "arrival OUR TRAFFIC tracked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    invoke-virtual {p0, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->finishOneRom2Assist(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 184
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_4
    :goto_1
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ==> arrival ids \u5269\u4f59\u91cf\u5982\u4e0b \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, "sum":I
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    .line 207
    add-int/lit8 v6, v6, 0x1

    .line 209
    :cond_5
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrival: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 186
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "sum":I
    :cond_6
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v7, :cond_4

    .line 187
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "arrival OUR TRAFFIC tracked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " BUT NOT EXPECTED !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 211
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sum":I
    :cond_7
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ==> arrival ids \u5269\u4f59\u91cf \uff1a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-SERIAL_MODE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ==> arrival ids \u5269\u4f59\u91cf \uff1a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v5, 0x1

    .line 217
    .local v5, "ret":Z
    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 221
    .local v1, "b":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    and-int/2addr v5, v7

    .line 222
    goto :goto_3

    .line 224
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_8
    if-eqz v5, :cond_0

    .line 225
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v7, v8, v9, v10}, Lcom/huami/watch/transport/httpsupport/StageFright/SyncProcessManager;->tellWith(Ljava/lang/String;B[I)V

    .line 229
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->onUpdateAssist2CloudState(B)V

    .line 231
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERIAL_MODE:Z

    if-eqz v7, :cond_a

    .line 232
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v7, :cond_9

    .line 233
    const-string v7, "WH-SRV"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " arrival Traffic \u6570\u636etrack\u5b8c\u6210\u4e86\u5462\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v7, "WH-SERIAL_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "arrival \u79fb\u9664\u6389\u4e86time out callback\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_9
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-SRV"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  arrival Traffic \u6570\u636etrack\u5b8c\u6210\u4e86\u5462\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-SRV"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  arrival \u79fb\u9664\u6389\u4e86time out callback\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_a
    sget-boolean v7, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v7, :cond_b

    .line 244
    const-string v7, "WH-SRV"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "arrival -------->>>>> \u5f00\u59cb\u5206\u6790Reportlist\uff01"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_b
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v7

    const-string v8, "WH-SRV"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "arrival -------->>>>> \u5f00\u59cb\u5206\u6790 reportlist\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->onEventOfDanceWith(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    goto/16 :goto_0
.end method

.method public onFinish(Ljava/lang/String;I)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->isAllHolyFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 339
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>> \u8c03\u7528\u4e86FINISH \' \u4f46\u662f\u8fd8\u4e0d\u662f\u65f6\u5019\uff01\uff01\uff01\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->theJack()Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-wide v4, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->syncStateTime:J

    invoke-interface {v2, p2, v0, v4, v5}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->onFinish(IZJ)V

    .line 347
    :cond_1
    const-string v0, "CloudSyncMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>>>>> FINISH \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' DATA SYNC ! CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    iput v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    .line 353
    invoke-static {}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->getInstance()Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huami/watch/transport/httpsupport/StageFright/AnalysisStage;->removeReportArrivalListener(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 344
    goto :goto_1
.end method

.method protected onReportArrival(Landroid/content/Context;Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monitor"    # Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;
    .param p3, "reportItem"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/huami/watch/transport/httpsupport/StageFright/Serializer;->onEventProcessReportItem(Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    .line 139
    return-void
.end method

.method public onUpdateAssist2CloudState(B)V
    .locals 3
    .param p1, "state"    # B

    .prologue
    .line 311
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> \u52a9\u624b\u5230\u4e91\u7aef \uff1a \u603b\u6570\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u5df2\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    if-eqz v0, :cond_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    iget v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    invoke-interface {v0, p1, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->onUpdate(III)V

    .line 323
    iput-byte p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    goto :goto_0
.end method

.method public onUpdateRom2AssistState(B)V
    .locals 3
    .param p1, "state"    # B

    .prologue
    .line 294
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v0, "CloudSyncMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetWho()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> ROM\u5230\u52a9\u624b \uff1a \u603b\u6570\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , \u5df2\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    if-eqz v0, :cond_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    iget v1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    iget v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    invoke-interface {v0, p1, v1, v2}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->onUpdate(III)V

    .line 307
    iput-byte p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    goto :goto_0
.end method

.method public pollHolyParentTarget()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mWho2FinishMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setReportId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reportId"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->reportId:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setState(B)V
    .locals 1
    .param p1, "newState"    # B

    .prologue
    .line 99
    iget-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    iput-byte v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mLastState:B

    .line 100
    iput-byte p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->mState:B

    .line 101
    return-void
.end method

.method public setSumOfNeedAssist2Cloud(I)V
    .locals 1
    .param p1, "sum"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedAssist2Cloud:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedRom2Assist:I

    .line 95
    return-void
.end method

.method public setSumOfNeedRom2Assist(I)V
    .locals 1
    .param p1, "sum"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfNeedRom2Assist:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->sumOfFinishedAssist2Cloud:I

    .line 90
    return-void
.end method

.method public startWaitForDataItems(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "thisIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    .line 262
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->myExtractId2StateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 273
    .end local v1    # "id":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected targetAtAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    invoke-interface {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->targetAtAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected targetAtPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->jack:Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;

    invoke-interface {v0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor$Jack;->targetAtPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected targetWho()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackWho()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->targetAtAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->trackWho:Ljava/lang/String;

    return-object v0
.end method

.method public withStartSyncTime(J)V
    .locals 1
    .param p1, "startSyncTime"    # J

    .prologue
    .line 369
    iput-wide p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/ProcessStateMonitor;->syncStateTime:J

    .line 370
    return-void
.end method
