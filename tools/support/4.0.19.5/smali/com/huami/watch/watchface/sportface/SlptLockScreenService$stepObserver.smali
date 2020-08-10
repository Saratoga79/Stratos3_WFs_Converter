.class final Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "stepObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "HmSlptLockScreen"

    const-string p2, "provider data has changed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$600(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$stepObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$900(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/content/Context;)V

    return-void
.end method
