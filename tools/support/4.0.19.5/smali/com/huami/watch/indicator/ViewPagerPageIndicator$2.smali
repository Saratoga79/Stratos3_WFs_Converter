.class Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;->this$0:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    invoke-static {v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->access$200(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
