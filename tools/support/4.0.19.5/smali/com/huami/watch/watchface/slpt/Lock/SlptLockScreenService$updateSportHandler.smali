.class Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$updateSportHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateSportHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$updateSportHandler;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$updateSportHandler;-><init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$200(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$updateSportHandler;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$300()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->setSportValue(FFZ)V

    return-void
.end method
