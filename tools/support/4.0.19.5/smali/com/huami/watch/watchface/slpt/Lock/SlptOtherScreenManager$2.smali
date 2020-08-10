.class Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ingenic/iwds/slpt/SlptClockClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$202(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Z)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$300(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClock;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$400(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "SlptOtherScreenManager"

    if-ne v0, v1, :cond_0

    const-string v0, "slpt set display off mode , disable display"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$100(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$500(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$400(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "slpt set watch mode , enable display on "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    invoke-static {v0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$100(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;)Lcom/ingenic/iwds/slpt/SlptClockClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$600(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Lcom/ingenic/iwds/slpt/SlptClockClient;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2$1;-><init>(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string v0, "SlptOtherScreenManager"

    const-string v1, "slpt clock service has crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager$2;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->access$202(Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;Z)Z

    return-void
.end method
