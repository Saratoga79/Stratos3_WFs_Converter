.class Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$1;
.super Ljava/lang/Object;
.source "HolyBoard.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;->updateBabyOutOrder(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huami/watch/transport/httpsupport/model/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I
    .locals 12
    .param p1, "lhs"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;
    .param p2, "rhs"    # Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .prologue
    const-wide/16 v10, 0x0

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "l":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 122
    .local v3, "r":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {p1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "lo":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "ro":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 125
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 126
    if-nez v1, :cond_0

    .line 127
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 129
    :cond_0
    if-nez v3, :cond_1

    .line 130
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 132
    :cond_1
    if-ne v1, v3, :cond_2

    .line 133
    const/4 v5, 0x0

    .line 139
    .end local v2    # "lo":Ljava/lang/String;
    .end local v4    # "ro":Ljava/lang/String;
    :goto_0
    return v5

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-gez v5, :cond_3

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/huami/watch/transport/httpsupport/model/DataItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBoard$1;->compare(Lcom/huami/watch/transport/httpsupport/model/DataItem;Lcom/huami/watch/transport/httpsupport/model/DataItem;)I

    move-result v0

    return v0
.end method
