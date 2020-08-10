.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;
.super Landroid/support/v4/view/PagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchFaceFragmentAdapter"
.end annotation


# instance fields
.field final mTouchSlop:I

.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->mTouchSlop:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    sget-boolean v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->SHOWN_CUSTOM_USER:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$1;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter$2;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
