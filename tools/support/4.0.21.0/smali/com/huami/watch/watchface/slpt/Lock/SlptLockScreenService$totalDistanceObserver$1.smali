.class Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver$1;->this$1:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;

    iget-object v0, v0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$1000(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Z)V

    return-void
.end method
