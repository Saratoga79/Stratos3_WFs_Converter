.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;
.super Lclc/utils/taskmanager/Task;
.source "WearHttpCompanion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->process(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

.field final synthetic val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lclc/utils/taskmanager/Task$RunningStatus;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 11
    .param p1, "operation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x12b

    const/16 v8, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_1

    .line 584
    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> \u5c06\u4ece\u6570\u636e\u5e93\u5220\u9664: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> \u5c06\u4ece\u6570\u636e\u5e93\u5220\u9664: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 594
    .local v1, "res":Z
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_2

    .line 595
    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> \u5220\u9664\u7ed3\u679c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> \u5220\u9664\u7ed3\u679c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_3

    .line 606
    const-string v4, "WH-ASSIST"

    const-string v5, "===> LOOK SIDE OR NET <====="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    const-string v6, "===> LOOK SIDE OR NET <====="

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->tryProcessCachedRequestWhileNetWorkAvalible()V

    .line 617
    .end local v1    # "res":Z
    :cond_4
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_5

    .line 618
    const-string v4, "WH-ASSIST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now  TRY  send back to client, will to wear service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_5
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v4

    const-string v5, "WH-ASSIST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Now TRY send back to client, will to wear service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v7}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 630
    sget-boolean v4, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v4, :cond_7

    .line 631
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v4

    if-lt v8, v4, :cond_6

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v4

    if-le v4, v9, :cond_9

    :cond_6
    move v0, v3

    .line 632
    .local v0, "fail":Z
    :goto_0
    const-string v5, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IS ONE SHOT REQ : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " , \u7ed3\u679c\uff1a "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_a

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " , code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v6}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v0    # "fail":Z
    :cond_7
    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v4

    if-lt v8, v4, :cond_8

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v4

    if-le v4, v9, :cond_b

    :cond_8
    move v0, v3

    .line 638
    .restart local v0    # "fail":Z
    :goto_2
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-ASSIST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IS ONE SHOT REQ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , \u7ed3\u679c\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v0    # "fail":Z
    :goto_3
    return-object v10

    :cond_9
    move v0, v2

    .line 631
    goto/16 :goto_0

    .restart local v0    # "fail":Z
    :cond_a
    move v4, v2

    .line 632
    goto :goto_1

    .end local v0    # "fail":Z
    :cond_b
    move v0, v2

    .line 637
    goto :goto_2

    .line 646
    :cond_c
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$3;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-static {v2, v3}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$000(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V

    goto :goto_3
.end method
