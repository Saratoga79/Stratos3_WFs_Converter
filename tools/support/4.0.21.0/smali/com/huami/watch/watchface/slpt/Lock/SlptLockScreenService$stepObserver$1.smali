.class Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;

    iget-object v0, v0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$stepObserver;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$700(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Landroid/content/Context;)V

    return-void
.end method
