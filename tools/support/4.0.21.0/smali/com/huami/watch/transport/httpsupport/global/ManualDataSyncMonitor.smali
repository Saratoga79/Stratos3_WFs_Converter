.class public Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;
.super Ljava/lang/Object;
.source "ManualDataSyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor$TransState;
    }
.end annotation


# instance fields
.field private mInterestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->interestAt()[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "interest":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->mInterestList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method protected interestAt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInterested(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->mInterestList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->mInterestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final notifyStateChangeFor(Lcom/huami/watch/transport/httpsupport/model/DataItem;I)V
    .locals 8
    .param p1, "item"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "state"    # I

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->isInterested(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "action":Ljava/lang/String;
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getExtraValByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "time":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 129
    .local v4, "timeL":J
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_1
    move-object v0, p0

    move v3, p2

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/transport/httpsupport/global/ManualDataSyncMonitor;->onStateChange(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStateChange(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "time"    # J

    .prologue
    .line 138
    return-void
.end method
