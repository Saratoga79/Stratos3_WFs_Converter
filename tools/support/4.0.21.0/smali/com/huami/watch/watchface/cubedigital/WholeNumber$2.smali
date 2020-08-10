.class Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/cubedigital/WholeNumber;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->mIsCanceled:Z

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$300(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$202(Lcom/huami/watch/watchface/cubedigital/WholeNumber;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$002(Lcom/huami/watch/watchface/cubedigital/WholeNumber;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$300(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$202(Lcom/huami/watch/watchface/cubedigital/WholeNumber;I)I

    iget-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$500(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$502(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {v1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$200(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$600(Lcom/huami/watch/watchface/cubedigital/WholeNumber;IZI)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->mIsCanceled:Z

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    return-void
.end method
