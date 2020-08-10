.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;
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


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$2100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$2100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$2100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$2100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
