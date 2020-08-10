.class Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;
.super Ljava/lang/Object;
.source "TrafficStasis.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v0}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$200(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis$4;->this$0:Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;

    invoke-static {v1}, Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;->access$100(Lcom/huami/watch/transport/httpsupport/transporter/http/TrafficStasis;)Lclc/utils/taskmanager/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lclc/utils/taskmanager/TaskManager;->next(Lclc/utils/taskmanager/Task;)Lclc/utils/taskmanager/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lclc/utils/taskmanager/TaskManager;->execute()V

    .line 217
    return-void
.end method
