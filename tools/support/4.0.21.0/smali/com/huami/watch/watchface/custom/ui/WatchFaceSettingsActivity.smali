.class public Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;
    }
.end annotation


# instance fields
.field private mBottomDigitalImg:Landroid/widget/ImageView;

.field private mBottomImg:Landroid/widget/ImageView;

.field private mBottomPointImg:Landroid/widget/ImageView;

.field private mBottomScaleImg:Landroid/widget/ImageView;

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomContainer:Landroid/widget/FrameLayout;

.field private mDefaultMaxScale:F

.field private mIndicator:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

.field private mLoadCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

.field private mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLoadingView:Landroid/widget/ImageView;

.field private mPageAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/custom/model/ConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mResType:I

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSaveContainer:Landroid/view/View;

.field private mScrollDirection:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

.field private mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDigitalImg:Landroid/widget/ImageView;

.field private mTopImg:Landroid/widget/ImageView;

.field private mTopPointImg:Landroid/widget/ImageView;

.field private mTopScaleImg:Landroid/widget/ImageView;

.field private mValueAnim:Landroid/animation/ValueAnimator;

.field private mWactchFaceFragmentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchFaceName:Ljava/lang/String;

.field private mWatchFaceResName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mIndicator:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mCustomContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceResName:Ljava/lang/String;

    sget v1, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->NORMAL:I

    iput v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mResType:I

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    sget-object v0, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mScrollDirection:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$4;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->refreshView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->addDataWidgetPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mResType:I

    return p0
.end method

.method static synthetic access$2000(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceResName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initAnim()V

    return-void
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->init()V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initPageView()V

    return-void
.end method

.method private addDataWidgetPage()V
    .locals 5

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPositionConfigs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->getDataWidgetConfigs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    new-instance v3, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mCustomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;

    invoke-virtual {v3}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetPositionConfig;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private changeBottomImg(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    goto :goto_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideAllView()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hideBottomView()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private init()V
    .locals 7

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initPageCount()V

    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mIndicator:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v4, v5}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getInstance(Landroid/content/Context;)Lcom/huami/watch/watchface/custom/presenter/LoadResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    new-instance v4, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    invoke-direct {v4, v6}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/huami/watch/watchface/custom/presenter/LoadResManager;->getDefaultDrawable(Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;Ljava/lang/String;Lcom/huami/watch/watchface/custom/model/ConfigInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$3;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setDefaultGutterSize(I)V

    return-void
.end method

.method private initAnim()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$1;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$2;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initLoadingAnim()V
    .locals 6

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$5;

    invoke-direct {v4, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$5;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$6;

    invoke-direct {v4, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$6;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$7;

    invoke-direct {v4, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$7;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;

    invoke-direct {v4, p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$8;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;

    invoke-direct {v5, p0, v3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$9;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPageCount()V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    new-instance v1, Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huami/watch/watchface/custom/model/ConfigInfo;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    const v1, 0x3f3d70a4    # 0.74f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private initPageView()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    new-instance v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;-><init>(Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageAdapter:Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity$PageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mIndicator:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mIndicator:Lcom/huami/watch/indicator/ViewPagerPageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->showIndicator(Z)V

    return-void
.end method

.method private initTopView()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadTemplate()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPageList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceResName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget v0, Lcom/huami/watch/watchface/custom/model/WatchFaceResType;->ZIP:I

    iput v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mResType:I

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceResName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadCompleteListener:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;

    invoke-static {p0, v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->loadWatchFaceTemplate(Landroid/content/Context;Ljava/lang/String;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$OnLoadCompleteListener;)Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private refreshView(I)V
    .locals 3

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hideBottomView()V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->SHOWN_CUSTOM_USER:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurrentItem()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->hideAllView()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initTopView()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$BasePreviewConfig;->getPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->changeBottomImg(I)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurConfig()Lcom/huami/watch/watchface/custom/model/ConfigInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    iget v0, v0, Lcom/huami/watch/watchface/custom/model/ConfigInfo;->position:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getTemplate()Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    return-object v0
.end method

.method public hasBackground()Z
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasDataWidget()Z
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getDataWidgetPositionConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasGraduation()Z
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getGraduations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasTimeDigital()Z
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeDigitals()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasTimeHander()Z
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->getTimeHands()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "custom_refresh_ui"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->refreshUI(Z)V

    :cond_1
    return-void
.end method

.method public onBackgroundChanged(Landroid/graphics/drawable/Drawable;ZI)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mScrollDirection:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    sget-object v3, Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;->DOWN:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    if-ne p2, v3, :cond_4

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v2, :cond_6

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v1, :cond_7

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_7
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p2

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_9

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCurrentItem()I

    move-result p1

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCount()I

    move-result p3

    sub-int/2addr p3, v2

    if-eq p1, p3, :cond_b

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initTopView()V

    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0c002f

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->saveSelectedItem()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.huami.intent.action.WATCHFACE_CONFIG_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "huami.watchface.servicename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "huami.watchface.resname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWatchFaceResName:Ljava/lang/String;

    const p1, 0x7f03000b

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->setContentView(I)V

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mRootView:Landroid/widget/FrameLayout;

    const p1, 0x7f0c0028

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mCustomContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->initLoadingAnim()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->loadTemplate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;->onDestroy()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTemplate:Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mLoadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->refreshView(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    sub-float v3, v2, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    sub-float v3, v2, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomPointImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    sub-float v3, v2, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomScaleImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    iget v3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mDefaultMaxScale:F

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    sub-float v3, v2, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomDigitalImg:Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getItemType()I

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz p3, :cond_4

    sget-boolean p3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->SHOWN_CUSTOM_USER:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mWactchFaceFragmentList:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;

    invoke-virtual {p3}, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsFragment;->getCount()I

    move-result p3

    sub-int/2addr p3, v1

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mSaveContainer:Landroid/view/View;

    sub-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopPointImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopDigitalImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopScaleImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mConfigViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mBottomImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mTopImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onScrollDirectionChange(Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/custom/ui/WatchFaceSettingsActivity;->mScrollDirection:Lcom/huami/watch/watchface/custom/listener/ICustomChangeListener$ScrollDirection;

    return-void
.end method
