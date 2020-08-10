.class final Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/sportface/SlptLockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "measurementObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/sportface/SlptLockScreenService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string p1, "HmSlptLockScreen"

    const-string p2, "measure observer data has changed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$200()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->convertKmToMi(D)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->convertKmToMi(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->setSportValue(FF)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/sportface/SlptLockScreenService$measurementObserver;->this$0:Lcom/huami/watch/watchface/sportface/SlptLockScreenService;

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$100()F

    move-result p2

    invoke-static {}, Lcom/huami/watch/watchface/sportface/SlptLockScreenService;->access$400()F

    move-result v0

    goto :goto_0

    return-void
.end method
