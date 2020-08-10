.class Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;
.super Ljava/lang/Object;
.source "HttpTransportManager.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

.field final synthetic val$dataParser:Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->val$dataParser:Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 6
    .param p1, "resCode"    # I

    .prologue
    .line 774
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v3, v3, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1200(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;Ljava/lang/String;)V

    .line 776
    if-nez p1, :cond_5

    .line 778
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v3, v3, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltORMM;->mark(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 780
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_0

    .line 781
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u84dd\u7259\u4f20\u8f93\u6210\u529f SUCCESS ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v4, v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n=========\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u84dd\u7259\u4f20\u8f93\u6210\u529f SUCCESS ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v5, v5, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-boolean v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$needLookAsideDB:Z

    if-eqz v2, :cond_2

    .line 795
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v3, v3, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 797
    .local v0, "res":Z
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_1

    .line 798
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece\u6570\u636e\u5e93\u5220\u9664\u5b8c\u6210 ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v4, v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v4, v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , \u5220\u9664\u7ed3\u679c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n=========\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4ece\u6570\u636e\u5e93\u5220\u9664\u5b8c\u6210 ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v5, v5, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v5, v5, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v5}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , \u5220\u9664\u7ed3\u679c: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n=========\n\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->val$dataParser:Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    invoke-virtual {v2, v0}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->getCacheDeleteStateText(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    .line 819
    .end local v0    # "res":Z
    :cond_2
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 820
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->IS_BLE:Z

    if-eqz v2, :cond_4

    .line 821
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$000(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "free_num"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 822
    .local v1, "val":I
    if-lez v1, :cond_3

    .line 823
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->lookSideBlt()V

    .line 853
    .end local v1    # "val":I
    :cond_3
    :goto_0
    return-void

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$500(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter;->lookSideBlt()V

    goto :goto_0

    .line 833
    :cond_5
    sget-boolean v2, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_SERVER:Z

    if-eqz v2, :cond_6

    .line 834
    const-string v2, "WH-SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\u4e0a\u4f20\u5230\u624b\u52a9\u5931\u8d25\uff0c\u5373\u5c06\u7f13\u5b58: ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v4, v4, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \n=========\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_6
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v2

    const-string v3, "WH-SRV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\u4e0a\u4f20\u5230\u624b\u52a9\u5931\u8d25@@@\uff0c\u5373\u5c06\u7f13\u5b58: ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v5, v5, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 846
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v2, v2, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->this$0:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;->access$1300(Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->this$1:Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;

    iget-object v3, v3, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7;->val$bean:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2, v3}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 852
    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/service/HttpTransportManager$7$1;->val$dataParser:Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/DataParser;->getCachaThisText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/translogutils/TransLogs;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
