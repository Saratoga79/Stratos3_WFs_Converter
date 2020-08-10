.class Lcom/huami/watch/common/widget/HmImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/HmImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/common/widget/HmImageView;


# direct methods
.method constructor <init>(Lcom/huami/watch/common/widget/HmImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/huami/watch/common/widget/HmImageView;->access$002(Lcom/huami/watch/common/widget/HmImageView;F)F

    iget-object p1, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    iget-object v0, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    invoke-static {v0}, Lcom/huami/watch/common/widget/HmImageView;->access$000(Lcom/huami/watch/common/widget/HmImageView;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huami/watch/common/widget/HmImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    iget-object v0, p0, Lcom/huami/watch/common/widget/HmImageView$1;->this$0:Lcom/huami/watch/common/widget/HmImageView;

    invoke-static {v0}, Lcom/huami/watch/common/widget/HmImageView;->access$000(Lcom/huami/watch/common/widget/HmImageView;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/huami/watch/common/widget/HmImageView;->setScaleY(F)V

    return-void
.end method
