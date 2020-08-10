.class final Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$measurementObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "measurementObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$measurementObserver;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "measure unit change to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$100()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HmSlptLockScreen"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService$measurementObserver;->this$0:Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;->access$1000(Lcom/huami/watch/watchface/slpt/Lock/SlptLockScreenService;Z)V

    return-void
.end method
