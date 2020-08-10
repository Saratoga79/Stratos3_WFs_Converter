.class Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;
.super Ljava/lang/Object;
.source "HolyBaby.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->sortByTimeStamp([Ljava/lang/String;)[Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-static {v2, p1}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 96
    .local v0, "timel":Ljava/lang/Long;
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby$1;->this$0:Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;

    invoke-static {v2, p2}, Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;->access$000(Lcom/huami/watch/transport/httpsupport/StageFright/HolyBaby;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 98
    .local v1, "timer":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 103
    :goto_0
    return v2

    .line 100
    :cond_0
    if-ne v0, v1, :cond_1

    .line 101
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
