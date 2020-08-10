.class public Lcom/huami/watch/common/widget/VerticalViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/common/widget/VerticalViewPager$Decor;,
        Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;,
        Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;,
        Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;,
        Lcom/huami/watch/common/widget/VerticalViewPager$OnAdapterChangeListener;,
        Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;,
        Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;,
        Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;,
        Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;,
        Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;


# instance fields
.field private forceCanScrollHorizontally:Z

.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnAdapterChangeListener;

.field private mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftPageBounds:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightPageBounds:I

.field private mScrollOffset:F

.field private mScrollPos:F

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/huami/watch/common/widget/VerticalViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$1;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$1;-><init>()V

    sput-object v0, Lcom/huami/watch/common/widget/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$2;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$2;-><init>()V

    sput-object v0, Lcom/huami/watch/common/widget/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/huami/watch/common/widget/VerticalViewPager;->sPositionComparator:Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempItem:Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v1, -0x800001

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOffscreenPageLimit:I

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v2, Lcom/huami/watch/common/widget/VerticalViewPager$3;

    invoke-direct {v2, p0}, Lcom/huami/watch/common/widget/VerticalViewPager$3;-><init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V

    iput-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->forceCanScrollHorizontally:Z

    invoke-virtual {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setVerticalScrollBarEnabled(Z)V

    sget-object v0, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    new-instance p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempItem:Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    const/4 p2, 0x1

    iput p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOffscreenPageLimit:I

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    iput-boolean p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    new-instance p2, Lcom/huami/watch/common/widget/VerticalViewPager$3;

    invoke-direct {p2, p0}, Lcom/huami/watch/common/widget/VerticalViewPager$3;-><init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V

    iput-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->forceCanScrollHorizontally:Z

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/common/widget/VerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/common/widget/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huami/watch/common/widget/VerticalViewPager;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    sget-object v0, Lcom/huami/watch/common/widget/VerticalViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;ILcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v3, p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v4, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    iget v4, p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    move p3, v1

    :goto_1
    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    :goto_2
    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    goto :goto_3

    :cond_2
    iput v4, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v5, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v4, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget p3, p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    :goto_4
    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    :goto_5
    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_4
    :goto_6
    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-int/lit8 v3, v3, -0x1

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    goto :goto_6

    :cond_5
    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-nez v5, :cond_7

    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    iget-object v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    :goto_a
    iget v8, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_9

    iget-object v8, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_9
    iget v8, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    iput v3, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v7, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-nez v7, :cond_a

    iput v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_b
    iget v3, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget p1, p1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    :goto_b
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_e

    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    :goto_c
    iget v5, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_c
    iget v5, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_d

    iget v5, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    :cond_d
    iput v3, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    if-eq v6, v4, :cond_2

    invoke-direct {p0, v6}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageScrolled(I)Z

    :cond_2
    iput-boolean v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    move v3, v0

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-boolean v5, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    iput-boolean v2, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->scrolling:Z

    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    :goto_1
    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-object p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget p2, p2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget p3, p3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2, p3}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    int-to-float p1, p1

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollPos:F

    iput p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollOffset:F

    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInternalPageChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;
    .locals 12

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move v5, v6

    :goto_2
    iget-object v10, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    iget-object v10, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    if-nez v5, :cond_2

    iget v11, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    iget-object v10, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempItem:Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iput v7, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget v8, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v7, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    if-nez v5, :cond_3

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_6

    :cond_3
    add-float/2addr v7, v8

    add-float/2addr v7, v0

    cmpg-float v3, v2, v7

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    iget v7, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v9, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move-object v3, v10

    goto :goto_2

    :cond_5
    :goto_3
    move-object v3, v10

    :cond_6
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->onPageScrolled(IFI)V

    iget-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCalledSuper:Z

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v2

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    iget v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v5

    iget v5, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v5

    iget v0, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    add-int/2addr v2, v3

    int-to-float v0, v2

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v6, p1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->onPageScrolled(IFI)V

    iget-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCalledSuper:Z

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private performDrag(F)Z
    .locals 9

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    mul-float v0, v0, p1

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v6, v3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    iget v0, v3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    mul-float v0, v0, p1

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    mul-float v2, v2, p1

    move v7, v4

    goto :goto_1

    :cond_1
    mul-float v2, v2, p1

    :goto_1
    cmpg-float v5, v1, v0

    if-gez v5, :cond_2

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->awakenScrollBars()Z

    goto :goto_2

    :cond_2
    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->awakenScrollBars()Z

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    iget p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-int/2addr p2, v2

    sub-int/2addr p2, v3

    add-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr v4, p2

    sub-int p2, p1, v0

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float p2, p2, v4

    float-to-int v2, p2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    iget p4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, p4}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForPosition(I)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object p4

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget p4, p4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    int-to-float p1, p1

    mul-float p4, p4, p1

    float-to-int v4, p4

    sub-int v5, p2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    :cond_0
    iget p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForPosition(I)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/huami/watch/common/widget/VerticalViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v1, v1, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForPosition(I)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v1, v0, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->dispatchOnPageSelected(I)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->dispatchOnPageSelected(I)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageScrolled(I)Z

    :cond_3
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageTransformer:Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->enableLayers(Z)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/huami/watch/common/widget/VerticalViewPager;->sPositionComparator:Lcom/huami/watch/common/widget/VerticalViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;
    .locals 2

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;-><init>()V

    iput p1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addOnPageChangeListener(Lcom/huami/watch/common/widget/VerticalViewPager$OnPageChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/huami/watch/common/widget/VerticalViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-ne v3, p0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "VerticalViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x82

    const/16 v5, 0x21

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_7

    if-ne p1, v5, :cond_6

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_5

    if-gt v1, v2, :cond_5

    goto :goto_4

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v2, :cond_8

    goto :goto_5

    :cond_8
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageDown()Z

    move-result v1

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageUp()Z

    move-result v1

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->playSoundEffect(I)V

    :cond_c
    return v1
.end method

.method public awakenScrollBars()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public awakenScrollBars(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->awakenScrollBars(I)Z

    move-result p1

    return p1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->forceCanScrollHorizontally:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->forceCanScrollHorizontally:Z

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v3

    if-gez p1, :cond_1

    int-to-float p1, v0

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v3, p1, :cond_2

    :goto_0
    move v1, v2

    return v1

    :cond_1
    if-lez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v3, p1, :cond_2

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    invoke-direct {p0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->completeScroll(Z)V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollPos:F

    iget v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollOffset:F

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method dataSetChanged()V
    .locals 10

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mExpectedAdapterCount:I

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    :goto_1
    iget-object v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    iget-object v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-object v8, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v2, v3

    :cond_2
    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    iget v7, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_3
    :goto_2
    move v5, v3

    goto :goto_3

    :cond_4
    iget v9, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    iget v5, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v9, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v5, v9, :cond_5

    move v6, v8

    :cond_5
    iput v8, v7, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_8
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/huami/watch/common/widget/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v5, v2, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    iput v5, v2, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->heightFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstOffset:F

    int-to-float v8, v2

    mul-float v7, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getHeight()I

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x42

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    return p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->arrowScroll(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget p1, p1, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method infoForPosition(I)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v2, v1, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method initViewPager()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/huami/watch/common/widget/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    const/high16 v4, 0x43480000    # 200.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMinimumVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMaximumVelocity:I

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDefaultGutterSize:I

    new-instance v1, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/huami/watch/common/widget/VerticalViewPager$MyAccessibilityDelegate;-><init>(Lcom/huami/watch/common/widget/VerticalViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v7, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget-object v8, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v10, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v10, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    :goto_1
    iget v11, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    goto :goto_1

    :cond_0
    iget v11, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    iget v7, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v11, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v7, v11

    mul-float v7, v7, v4

    iget v11, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    iget v12, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    move v12, v7

    move v7, v11

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLeftPageBounds:I

    float-to-int v14, v12

    iget v15, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRightPageBounds:I

    move/from16 v16, v3

    iget v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v2, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    move v8, v9

    return v8

    :cond_1
    iget-boolean v2, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    if-nez v2, :cond_e

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_4
    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    if-eq v0, v1, :cond_b

    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionX:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_5

    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-direct {v6, v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v12

    float-to-int v5, v10

    move-object v0, v6

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/common/widget/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v12, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    iput v10, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    iput-boolean v9, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    return v8

    :cond_5
    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_7

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v11, v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_7

    iput-boolean v9, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    invoke-direct {v6, v9}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-direct {v6, v9}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    if-lez v14, :cond_6

    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_6
    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    iput v12, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    invoke-direct {v6, v9}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_7
    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    iput-boolean v9, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    :cond_8
    :goto_1
    iget-boolean v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_b

    invoke-direct {v6, v10}, Lcom/huami/watch/common/widget/VerticalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    iput-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mScrollState:I

    if-ne v0, v2, :cond_a

    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_a

    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    invoke-virtual {v6}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    iput-boolean v9, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    invoke-direct {v6, v9}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-direct {v6, v9}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    goto :goto_2

    :cond_a
    invoke-direct {v6, v8}, Lcom/huami/watch/common/widget/VerticalViewPager;->completeScroll(Z)V

    iput-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    :cond_b
    :goto_2
    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    return v8

    :cond_d
    :goto_3
    iput-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    iput-boolean v8, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsUnableToDrag:Z

    iput v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v8

    move v11, v6

    const/4 v10, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    invoke-virtual {v0, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v14, v12, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    iget v14, v12, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->gravity:I

    iget v12, v12, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v16, v2, v11

    sub-int v14, v16, v14

    add-int/2addr v11, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v6

    move/from16 v17, v14

    move v14, v6

    move/from16 v6, v17

    goto :goto_1

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    and-int/lit8 v12, v12, 0x70

    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v7

    sub-int v7, v3, v7

    sub-int/2addr v7, v12

    move v12, v5

    move v5, v7

    move v7, v15

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_2
    add-int/2addr v5, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v14, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v10, v10, 0x1

    move v5, v12

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    invoke-virtual {v0, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v9, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v7}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v3

    iget v9, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    mul-float v9, v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    iget-boolean v14, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->needsMeasure:Z

    sub-int v14, v2, v6

    sub-int/2addr v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v8, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->heightFactor:F

    mul-float v8, v8, v13

    float-to-int v8, v8

    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v14, v8}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v9

    invoke-virtual {v7, v6, v9, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iput v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLeftPageBounds:I

    sub-int/2addr v2, v11

    iput v2, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRightPageBounds:I

    iput v10, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDecorChildCount:I

    iget-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollToItem(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v1, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0xa

    iget v4, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mGutterSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v4

    move v5, v2

    move v2, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    invoke-virtual {v0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    if-eqz v6, :cond_b

    iget-boolean v10, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    iget v10, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    iget v11, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    move v12, v10

    move v10, v8

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v10

    :goto_4
    iget v13, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    iget v10, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    iget v10, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->width:I

    :goto_5
    move v13, v8

    goto :goto_6

    :cond_6
    move v10, v3

    goto :goto_5

    :cond_7
    move v13, v10

    move v10, v3

    :goto_6
    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_8

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_9

    iget v1, v6, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->height:I

    goto :goto_7

    :cond_8
    move v8, v12

    :cond_9
    move v1, v5

    :goto_7
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_8

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mChildWidthMeasureSpec:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mChildHeightMeasureSpec:I

    iput-boolean v7, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    if-eqz v4, :cond_d

    iget-boolean v7, v4, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v5

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->heightFactor:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v7, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v5

    move v6, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v9, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x10

    if-eq v8, v9, :cond_3

    const/16 v9, 0x30

    if-eq v8, v9, :cond_2

    const/16 v9, 0x50

    if-eq v8, v9, :cond_1

    move v8, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v10, v4, v6

    sub-int v8, v10, v8

    add-int/2addr v6, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v11, v8

    move v8, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v3, v9

    if-eqz v3, :cond_4

    invoke-virtual {v7, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_4
    move v3, v8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->dispatchOnPageScrolled(IFI)V

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageTransformer:Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    invoke-virtual {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iget-boolean v0, v0, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageTransformer:Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;

    invoke-interface {v2, p3, v0}, Lcom/huami/watch/common/widget/VerticalViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    return v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;

    invoke-virtual {p1}, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    return-void

    :cond_1
    iget v0, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->position:I

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    iget-object v0, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    iput v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->position:I

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    iget p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    iget p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    invoke-direct {p0, p2, p4, p1, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFakeDragging:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    goto/16 :goto_3

    :pswitch_2
    iget-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-direct {p0, p1, v2, v1, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollToItem(IZIZ)V

    goto/16 :goto_2

    :pswitch_3
    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    cmpl-float v4, v5, v4

    if-lez v4, :cond_6

    iput-boolean v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    iput v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iget v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-direct {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto :goto_4

    :pswitch_4
    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v5

    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget v1, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v4, v1

    iget v1, v5, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    div-float/2addr v4, v1

    iget v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, v6, v4, v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->determineTargetPage(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v2, v2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    :goto_2
    iput v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->endDrag()V

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    or-int v1, v0, p1

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mLastMotionY:F

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mActivePointerId:I

    :cond_7
    :goto_4
    :pswitch_6
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method pageDown()Z
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pageUp()Z
    .locals 2

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method populate()V
    .locals 1

    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-eq v2, v1, :cond_1

    iget v2, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ge v2, v1, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    iget v4, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {v0, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForPosition(I)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v4

    iput v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    :goto_1
    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_2

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->sortChildDrawingOrder()V

    return-void

    :cond_2
    iget-boolean v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOffscreenPageLimit:I

    iget v5, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    iget v9, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    add-int/2addr v1, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v8, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mExpectedAdapterCount:I

    if-eq v7, v8, :cond_4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move v8, v6

    :goto_4
    iget-object v9, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v9, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget v10, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v11, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-lt v10, v11, :cond_5

    iget v10, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v11, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v10, v11, :cond_6

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    iget v9, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {v0, v9, v8}, Lcom/huami/watch/common/widget/VerticalViewPager;->addNewItem(II)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_18

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_8

    iget-object v12, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9

    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    iget v15, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v3, v15

    :goto_7
    iget v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    add-int/lit8 v6, v6, -0x1

    move v15, v11

    move v11, v8

    const/4 v8, 0x0

    :goto_8
    if-ltz v6, :cond_f

    cmpl-float v16, v8, v3

    if-ltz v16, :cond_b

    if-ge v6, v5, :cond_b

    if-nez v12, :cond_a

    goto :goto_b

    :cond_a
    iget v10, v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_e

    iget-boolean v10, v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_e

    iget-object v10, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v12, v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v0, v6, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v11, v11, -0x1

    if-ltz v15, :cond_d

    goto :goto_9

    :cond_b
    if-eqz v12, :cond_c

    iget v10, v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_c

    iget v10, v12, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_d

    goto :goto_9

    :cond_c
    add-int/lit8 v10, v15, 0x1

    invoke-virtual {v0, v6, v10}, Lcom/huami/watch/common/widget/VerticalViewPager;->addNewItem(II)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v11, v11, 0x1

    if-ltz v15, :cond_d

    :goto_9
    iget-object v10, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-object v12, v10

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :cond_e
    :goto_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_f
    :goto_b
    iget v3, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-int/lit8 v5, v11, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_17

    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_d

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v13

    div-float/2addr v8, v10

    add-float v10, v8, v14

    :goto_d
    iget v8, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    :goto_e
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v7, :cond_17

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v8, v1, :cond_13

    if-nez v6, :cond_12

    goto :goto_11

    :cond_12
    iget v12, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_16

    iget-boolean v12, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_16

    iget-object v12, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v8, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    goto :goto_f

    :cond_13
    if-eqz v6, :cond_14

    iget v12, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_14

    iget v6, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    goto :goto_f

    :cond_14
    invoke-virtual {v0, v8, v5}, Lcom/huami/watch/common/widget/VerticalViewPager;->addNewItem(II)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget v6, v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    :goto_f
    iget-object v6, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    goto :goto_10

    :cond_15
    const/4 v6, 0x0

    :cond_16
    :goto_10
    goto :goto_e

    :cond_17
    :goto_11
    invoke-direct {v0, v9, v11, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->calculatePageOffsets(Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;ILcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;)V

    :cond_18
    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-eqz v9, :cond_19

    iget-object v4, v9, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_12

    :cond_19
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v1, v0, v3, v4}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_1c

    invoke-virtual {v0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;

    iput v3, v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->childIndex:I

    iget-boolean v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_1a

    iget v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->heightFactor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    invoke-virtual {v0, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget v6, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->heightFactor:F

    iput v6, v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->heightFactor:F

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iput v4, v5, Lcom/huami/watch/common/widget/VerticalViewPager$LayoutParams;->position:I

    goto :goto_14

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->sortChildDrawingOrder()V

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v3

    goto :goto_15

    :cond_1d
    const/4 v3, 0x0

    :goto_15
    if-eqz v3, :cond_1e

    iget v1, v3, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v3, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-eq v1, v3, :cond_20

    :cond_1e
    const/4 v1, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20

    invoke-virtual {v0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget v4, v4, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget v5, v0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1f

    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_20
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->removeViewInLayout(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mObserver:Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iget-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->removeNonDecorViews()V

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v1, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iput-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mExpectedAdapterCount:I

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mObserver:Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;-><init>(Lcom/huami/watch/common/widget/VerticalViewPager;Lcom/huami/watch/common/widget/VerticalViewPager$1;)V

    iput-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mObserver:Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

    :cond_2
    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mObserver:Lcom/huami/watch/common/widget/VerticalViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    iget-boolean v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mExpectedAdapterCount:I

    iget v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestLayout()V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapterChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    iget-object v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapterChangeListener:Lcom/huami/watch/common/widget/VerticalViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    iget-boolean v1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mOffscreenPageLimit:I

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/huami/watch/common/widget/VerticalViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    :goto_2
    iget-boolean v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_8

    iput p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    if-eqz p3, :cond_7

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->dispatchOnPageSelected(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->requestLayout()V

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/huami/watch/common/widget/VerticalViewPager;->scrollToItem(IZIZ)V

    return-void

    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setForceCanScrollHorizontally(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->forceCanScrollHorizontally:Z

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->populate()V

    invoke-direct {p0, v1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/huami/watch/common/widget/VerticalViewPager;->setScrollState(I)V

    invoke-direct {p0}, Lcom/huami/watch/common/widget/VerticalViewPager;->getClientHeight()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Lcom/huami/watch/common/widget/VerticalViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p2

    add-float/2addr v0, p2

    int-to-float p2, p3

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget p3, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p1, p1, p2

    iget p2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mPageMargin:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    div-float/2addr p3, p1

    add-float/2addr p3, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p3, p3, p1

    float-to-int p1, p3

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v2, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/common/widget/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
