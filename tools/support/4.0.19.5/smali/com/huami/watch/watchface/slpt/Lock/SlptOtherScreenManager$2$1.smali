.class Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;

    iget-object v0, v0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$000(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;

    iget-object v1, v1, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    iget-object v2, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;

    iget-object v2, v2, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$100(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->enableSlptClock(Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
