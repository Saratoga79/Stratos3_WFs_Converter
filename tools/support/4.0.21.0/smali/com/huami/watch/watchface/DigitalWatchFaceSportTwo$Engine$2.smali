.class Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;
.super Landroid/support/wearable/view/SimpleAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->onPrepareResources(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$2;->this$1:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;

    invoke-static {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
