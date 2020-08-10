.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initAnim()V
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

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
