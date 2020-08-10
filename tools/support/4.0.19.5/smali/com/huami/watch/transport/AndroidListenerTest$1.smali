.class Lcom/huami/watch/transport/AndroidListenerTest$1;
.super Landroid/os/HandlerThread;
.source "AndroidListenerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/transport/AndroidListenerTest;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/transport/AndroidListenerTest;


# direct methods
.method constructor <init>(Lcom/huami/watch/transport/AndroidListenerTest;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huami/watch/transport/AndroidListenerTest$1;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 42
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest$1;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v0}, Lcom/huami/watch/transport/AndroidListenerTest;->access$000(Lcom/huami/watch/transport/AndroidListenerTest;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest$1;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/huami/watch/transport/AndroidListenerTest;->access$102(Lcom/huami/watch/transport/AndroidListenerTest;Z)Z

    .line 44
    iget-object v0, p0, Lcom/huami/watch/transport/AndroidListenerTest$1;->this$0:Lcom/huami/watch/transport/AndroidListenerTest;

    invoke-static {v0}, Lcom/huami/watch/transport/AndroidListenerTest;->access$000(Lcom/huami/watch/transport/AndroidListenerTest;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
