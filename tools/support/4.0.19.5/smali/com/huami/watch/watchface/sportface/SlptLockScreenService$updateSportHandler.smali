.class Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateSportHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Lcom/huami/watch/watchface/sportface/SlptLockScreenService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;-><init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$102(F)F

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$300(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$updateSportHandler;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result v0

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->setSportValue(FF)V

    return-void
.end method
