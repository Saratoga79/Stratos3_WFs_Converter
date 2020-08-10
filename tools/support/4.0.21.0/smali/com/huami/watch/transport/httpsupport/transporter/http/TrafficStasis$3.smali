.class Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$3;
.super Lclc/utils/taskmanager/Task;
.source "TrafficStasis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;Lclc/utils/taskmanager/Task$RunningStatus;)V
    .locals 0
    .param p2, "x0"    # Lclc/utils/taskmanager/Task$RunningStatus;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-direct {p0, p2}, Lclc/utils/taskmanager/Task;-><init>(Lclc/utils/taskmanager/Task$RunningStatus;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lclc/utils/taskmanager/TaskOperation;)Lclc/utils/taskmanager/TaskOperation;
    .locals 1
    .param p1, "taskOperation"    # Lclc/utils/taskmanager/TaskOperation;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$3;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-virtual {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->logAllChannels()V

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method
