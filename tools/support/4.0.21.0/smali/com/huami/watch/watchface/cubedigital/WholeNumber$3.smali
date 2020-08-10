.class Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/cubedigital/WholeNumber;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$002(Lcom/huami/watch/watchface/cubedigital/WholeNumber;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$100(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$100(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

    move-result-object p1

    invoke-interface {p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;->refreshView()V

    :cond_0
    return-void
.end method
