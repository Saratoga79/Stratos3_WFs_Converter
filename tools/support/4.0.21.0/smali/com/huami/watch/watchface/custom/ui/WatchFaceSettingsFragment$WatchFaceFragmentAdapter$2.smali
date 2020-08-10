.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field final synthetic this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->downY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget v1, v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->downX:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->this$1:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget p2, p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;->downY:F

    :cond_3
    return v0
.end method
