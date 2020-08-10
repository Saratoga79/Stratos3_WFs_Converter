.class final Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "totalDistanceObserver"
.end annotation


# instance fields
.field private DistanceUpdate:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver$1;-><init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;->DistanceUpdate:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "HmSlptLockScreen"

    const-string p2, "total distance data has changed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$900()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;->DistanceUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$900()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$totalDistanceObserver;->DistanceUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
