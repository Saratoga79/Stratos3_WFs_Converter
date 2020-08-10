.class Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;
.super Landroid/support/wearable/view/SimpleAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/indicator/ViewPagerPageIndicator;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;


# direct methods
.method constructor <init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/wearable/view/SimpleAnimatorListener;->onAnimationComplete(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/wearable/view/SimpleAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
