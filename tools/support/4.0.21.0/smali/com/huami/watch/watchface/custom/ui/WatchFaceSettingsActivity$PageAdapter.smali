.class Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)I

    move-result v1

    sget v2, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->ZIP:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCorrespondingFragment(Lcom/huami/watch/watchface/custom/model/ConfigInfo;Ljava/lang/String;II)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->setPageScrollListener(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;->this$0:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-static {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method
