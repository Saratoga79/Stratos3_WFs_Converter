.class Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;
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
.field final synthetic this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$300(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$202(Lcom/huami/watch/watchface/cubedigital/WholeNumber;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$002(Lcom/huami/watch/watchface/cubedigital/WholeNumber;F)F

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$300(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$202(Lcom/huami/watch/watchface/cubedigital/WholeNumber;I)I

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$700(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;->this$0:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z

    return-void
.end method
