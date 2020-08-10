.class public Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AbstractWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlptWatchFaceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/AbstractWatchFace;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.huami.watchface.SlptWatchService.disable.sportView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "slpt watchface locked"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->checkWatchFaceLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSportfaceValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string p2, "in sport mode do not need to enable clock"

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->cleanSportItemOrder()V

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable clock slpt view "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSportfaceValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    add-int/2addr p1, v1

    sput p1, Lcom/huami/watch/watchface/util/Util;->sHasWatchFaceStarted:I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "force_update"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p2}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.huami.watchface.SlptWatchService.enable.sportView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string p2, "disenable clock slpt view"

    :goto_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.huami.watchface.SlptWatchService.leave_gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->checkWatchFaceLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSportfaceValue()I

    move-result p1

    const-string v0, "leave GPS page enter sport mode"

    if-ne p1, v1, :cond_5

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    const/4 p1, 0x0

    const-string v1, "is_start_sport"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->showWatchFace(Landroid/content/Context;)V

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string p2, "leave GPS page start clock page "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.huami.watchface.SlptWatchService.enable.otherScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "start other screen"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$200(Lcom/huami/watch/watchface/AbstractWatchFace;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->createScreen(Landroid/content/Intent;)I

    move-result p1

    if-lez p1, :cond_8

    iget-object p2, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p2}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$200(Lcom/huami/watch/watchface/AbstractWatchFace;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->showScreen()V

    :cond_8
    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.huami.watchface.SlptWatchService.disable.otherScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v1, "stop other screen"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$200(Lcom/huami/watch/watchface/AbstractWatchFace;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->hideScreen(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$000(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huami/watch/watchface/util/Util;->checkWatchFaceLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    :goto_3
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace;->stopService(Landroid/content/Intent;)Z

    :goto_4
    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/AbstractWatchFace;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->getSlptRuningMode()I

    move-result p1

    sget v0, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_WATCH:I

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/huami/watch/watchface/AbstractWatchFace;->TAG:Ljava/lang/String;

    const-string v0, "exit  slpt watch mode "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/ingenic/iwds/slpt/SlptClock;->CLOCK_SLPT_MODE_WATCH:I

    const-string v0, "type"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$200(Lcom/huami/watch/watchface/AbstractWatchFace;)Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huami/watch/watchface/slpt/Lock/SlptOtherScreenManager;->hideScreen(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/AbstractWatchFace$SlptWatchFaceReceiver;->this$0:Lcom/huami/watch/watchface/AbstractWatchFace;

    invoke-static {p1}, Lcom/huami/watch/watchface/AbstractWatchFace;->access$100(Lcom/huami/watch/watchface/AbstractWatchFace;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method
