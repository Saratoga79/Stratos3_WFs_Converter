.class Lcom/huami/watchface/SlptClockService$Caller$1;
.super Ljava/lang/Object;
.source "SlptClockService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watchface/SlptClockService$Caller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watchface/SlptClockService$Caller;


# direct methods
.method constructor <init>(Lcom/huami/watchface/SlptClockService$Caller;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 629
    iget-object v1, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    iget-object v1, v1, Lcom/huami/watchface/SlptClockService$Caller;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, v1, Lcom/huami/watchface/SlptClockService;->stub:Lcom/ingenic/iwds/slpt/ISlptClockService$Stub;

    monitor-enter v2

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    iget-object v1, v1, Lcom/huami/watchface/SlptClockService$Caller;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v3, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    invoke-static {v1, v3}, Lcom/huami/watchface/SlptClockService;->access$1000(Lcom/huami/watchface/SlptClockService;Lcom/huami/watchface/SlptClockService$Caller;)Z

    move-result v0

    .line 631
    .local v0, "isCurrentCaller":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iget-object v1, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    iget-object v1, v1, Lcom/huami/watchface/SlptClockService$Caller;->this$0:Lcom/huami/watchface/SlptClockService;

    iget-object v2, p0, Lcom/huami/watchface/SlptClockService$Caller$1;->this$1:Lcom/huami/watchface/SlptClockService$Caller;

    iget-object v2, v2, Lcom/huami/watchface/SlptClockService$Caller;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/huami/watchface/SlptClockService;->onCallerDied(Ljava/lang/String;Z)V

    .line 635
    return-void

    .line 631
    .end local v0    # "isCurrentCaller":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
