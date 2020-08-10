.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/common/widget/VerticalViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onBackgroundChanged(Landroid/graphics/drawable/Drawable;ZI)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/common/widget/VerticalViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$302(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;I)I

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$202(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$202(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onPageScrollStateChanged(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    :cond_0
    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v3

    sget-object v4, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    invoke-interface {v3, v4}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onScrollDirectionChange(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v1

    sget-object v3, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->UP:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    invoke-interface {v1, v3}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onScrollDirectionChange(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;)V

    move v1, p1

    :goto_0
    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v4}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v4}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onBackgroundChanged(Landroid/graphics/drawable/Drawable;ZI)V

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$202(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onPageScrolled(IFI)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {p2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;->onBackgroundChanged(Landroid/graphics/drawable/Drawable;ZI)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$302(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;I)I

    return-void
.end method
