.class Lcom/huami/watch/watchface/AbstractSlptClock$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/AbstractSlptClock$2;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/AbstractSlptClock$2;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/AbstractSlptClock$2;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2$1;->this$1:Lcom/huami/watch/watchface/AbstractSlptClock$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2$1;->this$1:Lcom/huami/watch/watchface/AbstractSlptClock$2;

    iget-object v0, v0, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v0}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$000(Lcom/huami/watch/watchface/AbstractSlptClock;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/huami/watch/watchface/AbstractSlptClock$2$1;->this$1:Lcom/huami/watch/watchface/AbstractSlptClock$2;

    iget-object v1, v1, Lcom/huami/watch/watchface/AbstractSlptClock$2;->this$0:Lcom/huami/watch/watchface/AbstractSlptClock;

    invoke-static {v1}, Lcom/huami/watch/watchface/AbstractSlptClock;->access$100(Lcom/huami/watch/watchface/AbstractSlptClock;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
