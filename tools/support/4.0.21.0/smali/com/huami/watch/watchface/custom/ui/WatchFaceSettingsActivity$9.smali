.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initLoadingAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

.field final synthetic val$alphaOutAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->val$alphaOutAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->val$alphaOutAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->val$alphaOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->val$alphaOutAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;->val$alphaOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
