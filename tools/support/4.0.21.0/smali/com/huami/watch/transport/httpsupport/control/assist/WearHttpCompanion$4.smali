.class Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;
.super Ljava/lang/Object;
.source "WearHttpCompanion.java"

# interfaces
.implements Lcom/huami/watch/transport/httpsupport/transporter/blt/BltTransporter$IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->data2ClientByBlt(Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

.field final synthetic val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/model/DataItem;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    iput-object p2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    .line 701
    if-eqz p1, :cond_3

    .line 703
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v1, :cond_0

    .line 704
    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u8868\u6682\u65f6\u4e0d\u901a\uff0c\u7f13\u5b58Item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u624b\u8868\u6682\u65f6\u4e0d\u901a\uff0c\u7f13\u5b58Item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$100(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->getInstance(Landroid/content/Context;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$702(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->setState(I)V

    .line 716
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->save(Lcom/huami/watch/transport/httpsupport/model/DataItem;)Z

    .line 732
    :cond_2
    :goto_0
    return-void

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v1}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->this$0:Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;->access$700(Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion;)Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v2}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/transport/httpsupport/cacher/DataCacher;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 723
    .local v0, "res":Z
    sget-boolean v1, Lcom/huami/watch/transport/httpsupport/GlobalDefine;->DEBUG_COMPANION:Z

    if-eqz v1, :cond_4

    .line 724
    const-string v1, "WH-ASSIST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>\u4f20\u8f93\u6210\u529f\u540e\uff0c\u5220\u9664\u672c\u6761Item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v3}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , \u7ed3\u679c\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_4
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v1

    const-string v2, "WH-ASSIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>\u4f20\u8f93\u6210\u529f\u540e\uff0c\u5220\u9664\u672c\u6761Item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/control/assist/WearHttpCompanion$4;->val$item:Lcom/huami/watch/transport/httpsupport/model/DataItem;

    invoke-virtual {v4}, Lcom/huami/watch/transport/httpsupport/model/DataItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , \u7ed3\u679c\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lclc/utils/debug/slog/SolidLogger;->with(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
