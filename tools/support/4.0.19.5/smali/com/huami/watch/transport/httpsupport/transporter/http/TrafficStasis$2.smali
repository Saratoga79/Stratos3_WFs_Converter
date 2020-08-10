.class Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;
.super Lclc/utils/taskmanager/Task;
.source "TrafficStasis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->appendChannelDownload(Ljava/lang/String;[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$val:J


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;Lclc/utils/taskmanager/Task$RunningStatus;Ljava/lang/String;J)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    iput-object p3, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$key:Ljava/lang/String;

    iput-wide p4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$val:J

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 8
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    const-wide/16 v6, -0x1

    .line 145
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v3}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$000(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "traffic_stat.xml"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 146
    .local v2, "pref":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$key:Ljava/lang/String;

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    .local v0, "curr":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 148
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$key:Ljava/lang/String;

    iget-wide v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$val:J

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    :goto_0
    invoke-static {}, Lclc/utils/debug/slog/SolidLogger;->getInstance()Lclc/utils/debug/slog/SolidLogger;

    move-result-object v3

    const-string v4, "Traffic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< download Channel ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] will increase from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$val:J

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$val:J

    invoke-static {v6, v7}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lclc/utils/debug/slog/SolidLogger;->with2(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    return-object v3

    .line 150
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$key:Ljava/lang/String;

    iget-wide v6, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$2;->val$val:J

    add-long/2addr v6, v0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
