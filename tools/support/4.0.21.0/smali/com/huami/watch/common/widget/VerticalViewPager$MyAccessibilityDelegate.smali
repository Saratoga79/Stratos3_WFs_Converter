.class Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/common/widget/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/common/widget/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$200(Lcom/huami/watch/common/widget/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$200(Lcom/huami/watch/common/widget/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$200(Lcom/huami/watch/common/widget/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$200(Lcom/huami/watch/common/widget/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$300(Lcom/huami/watch/common/widget/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$300(Lcom/huami/watch/common/widget/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class p1, Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return p3

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$300(Lcom/huami/watch/common/widget/VerticalViewPager;)I

    move-result p2

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {p1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;->this$0:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->access$300(Lcom/huami/watch/common/widget/VerticalViewPager;)I

    move-result p2

    add-int/2addr p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItem(I)V

    :goto_1
    move p3, v0

    :cond_3
    return p3
.end method
