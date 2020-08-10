.class public Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;
    }
.end annotation


# static fields
.field public static SHOWN_CUSTOM_USER:Z = true

.field private static final TAG:Ljava/lang/String; = "com.huami.watch.watchface.custom.ui.WatchFaceSettingsFragment"


# instance fields
.field private isChangeBackground:Z

.field private mActivity:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

.field private mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

.field private mCurItem:I

.field private mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

.field private mCustomType:I

.field private mInfo:Lcom/huami/watch/watchface/custom/model/ConfigInfo;

.field private mPageScrollListener:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

.field private mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

.field private mPosition:I

.field private mPreviewsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mResType:I

.field private mWatchFaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    const/4 v1, -0x1

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPosition:I

    sget v1, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    iput-boolean v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->isChangeBackground:Z

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPageScrollListener:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    return p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->isChangeBackground:Z

    return p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->isChangeBackground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    return p0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPosition:I

    return p0
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)Lcom/huami/watch/common/widget/VerticalViewPager;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->forceCanScrollHorizontally()V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    return p0
.end method

.method private forceCanScrollHorizontally()V
    .locals 3

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->setForceCanScrollHorizontally(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setForceCanScrollHorizontally(Z)V

    return-void
.end method

.method public static getCorrespondingFragment(Lcom/huami/watch/watchface/custom/model/ConfigInfo;Ljava/lang/String;II)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;
    .locals 3

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-direct {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "custom_info"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "watch_name"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "watch_position"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "watch_face_res_type"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$1;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->addOnPageChangeListener(Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getSavedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private initPreviewList()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getBackground()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurConfig()Lcom/huami/watch/watchface/custom/model/ConfigInfo;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mInfo:Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    return-object v0
.end method

.method public getCurDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getBackground()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mActivity:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "custom_info"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mInfo:Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const-string v0, "watch_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPosition:I

    const-string v0, "watch_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    const-string v0, "watch_face_res_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mInfo:Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->getConfigType()I

    move-result p3

    iput p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    :cond_0
    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "err custom watch face name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p3, 0x7f03000a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    if-nez p2, :cond_2

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/huami/watch/watchface/custom/presenter/CustomBackgroundSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/huami/watch/watchface/custom/presenter/CustomTimeHanderSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomGradutionSelectedItem;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/huami/watch/watchface/custom/presenter/CustomGradutionSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomDataWidgetSelectedItem;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mActivity:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->getTemplate()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPositionConfigs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mInfo:Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    iget v2, v2, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    iget v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/huami/watch/watchface/custom/presenter/CustomDataWidgetSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;I)V

    goto :goto_0

    :cond_5
    iget p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_6

    new-instance p2, Lcom/huami/watch/watchface/custom/presenter/CustomTimeDigitalSelectedItem;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mWatchFaceName:Ljava/lang/String;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mResType:I

    invoke-direct {p2, p3, v0, v1}, Lcom/huami/watch/watchface/custom/presenter/CustomTimeDigitalSelectedItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mActivity:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->getTemplate()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->setTemplate(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;)V

    const p2, 0x7f0c0020

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0c0021

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->getFgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0c001f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/huami/watch/common/widget/VerticalViewPager;

    iput-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-static {p2}, Lcom/huami/watch/scrollbar/ArcScrollbarHelper;->setArcScrollBarDrawable(Landroid/view/View;)Z

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->initPreviewList()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->init()V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "err custom type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public refreshUI(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->initPreviewList()V

    sget-object v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment$WatchFaceFragmentAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getCurrentItem()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPager:Lcom/huami/watch/common/widget/VerticalViewPager;

    invoke-virtual {v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    iput p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->forceCanScrollHorizontally()V

    return-void
.end method

.method public saveSelectedItem()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPreviewsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCustomSelectedItem:Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;

    iget v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mCurItem:I

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/custom/presenter/AbsCustomSelectedItem;->saveSelectedItem(I)V

    :cond_1
    return-void
.end method

.method public setPageScrollListener(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->mPageScrollListener:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;

    return-void
.end method
