.class public Lcom/huami/watch/indicator/ViewPagerPageIndicator;
.super Landroid/view/View;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;,
        Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private final dirtyRect:Landroid/graphics/Rect;

.field private isScroll:Z

.field private isShow:Z

.field public mAllArc:F

.field private mAniationYOffset:I

.field public mArc_Angle:F

.field mCenterX:F

.field mCenterY:F

.field mCircle_Radius:F

.field mCircle_X:[F

.field mCirlce_Y:[F

.field private mColorFocused:I

.field private mColorNormal:I

.field private mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDelta:I

.field private mDirty:Z

.field public mEvery_ArcAngle:F

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorCenterDistance:F

.field private mIndicatorRadius:F

.field private mIndicatorRadiusFocused:F

.field private mLastOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

.field private mNumPages:I

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectedPage:I

.field public mSetoff:F

.field public mStartAngle:F

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/huami/watch/utils/Gloable;->DEBUG:Z

    sput-boolean v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->TOP:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mLastOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSetoff:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isShow:Z

    const/16 p1, 0xa

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAniationYOffset:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDelta:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->init()V

    invoke-direct {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->initAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static circleX(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F
    .locals 3

    sub-float/2addr p0, p2

    invoke-static {p6}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->access$000(Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float p2, p2, v0

    add-float/2addr p2, p3

    int-to-float p1, p1

    mul-float p1, p1, p5

    add-float/2addr p2, p1

    mul-float p7, p7, p5

    add-float/2addr p2, p7

    float-to-double p1, p2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v1

    const-wide v1, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p0, p0, p1

    cmpl-float p1, p3, v0

    if-ltz p1, :cond_2

    sget-object p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->BOTTOM:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    if-ne p6, p1, :cond_1

    :cond_0
    sub-float/2addr p4, p0

    return p4

    :cond_1
    :goto_0
    add-float/2addr p4, p0

    return p4

    :cond_2
    sget-object p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->BOTTOM:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    if-ne p6, p1, :cond_0

    goto :goto_0

    return p4
.end method

.method public static circleY(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F
    .locals 4

    invoke-static {p6}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->access$000(Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p3

    int-to-float p1, p1

    mul-float p1, p1, p5

    add-float/2addr v0, p1

    mul-float p7, p7, p5

    add-float/2addr v0, p7

    sget-boolean p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "scroll"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  num_Ang"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "scroll"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  setoff*every_ArcAngle"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    sub-float/2addr p0, p2

    mul-float p1, p1, p0

    sget-object p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;->LET:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    if-ne p6, p0, :cond_1

    add-float/2addr p1, p4

    return p1

    :cond_1
    sub-float p1, p4, p1

    return p1
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huami/watch/ui/R$color;->cw_page_indicator_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorFocused:I

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huami/watch/ui/R$color;->cw_page_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorNormal:I

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huami/watch/ui/R$dimen;->indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huami/watch/ui/R$dimen;->indicator_radius_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadiusFocused:F

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/huami/watch/ui/R$dimen;->indicator_center_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorCenterDistance:F

    return-void
.end method

.method private initAnimation()V
    .locals 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;-><init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$2;-><init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private setPageCount(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDirty:Z

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    sget-boolean v0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "scroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageCount page numbers :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->requestLayout()V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public arrayX(FIFFF)[F
    .locals 10

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterX:F

    iget-object v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const/4 v9, 0x0

    move v2, p1

    move v3, v1

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-static/range {v2 .. v9}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->circleX(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public arrayY(FIFFF)[F
    .locals 10

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterY:F

    iget-object v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const/4 v9, 0x0

    move v2, p1

    move v3, v1

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-static/range {v2 .. v9}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->circleY(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F

    move-result v2

    aput v2, v0, v1

    sget-boolean v2, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  circle_Y[i]            :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected dataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->setPageCount(I)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mLastOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_X:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDirty:Z

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDirty:Z

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mLastOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    iget v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    iget v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->arrayX(FIFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_X:[F

    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    iget v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    iget v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    invoke-virtual/range {v3 .. v8}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->arrayY(FIFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    :cond_2
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    if-ge v0, v1, :cond_8

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isScroll:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorFocused:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorNormal:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget-object v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAniationYOffset:I

    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    iget v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDelta:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0xff

    div-int v5, v4, v3

    rem-int/2addr v4, v3

    iget-object v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    if-ne v0, v6, :cond_4

    iget-boolean v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isScroll:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorFocused:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v4, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "scroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alpha  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorNormal:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    mul-int v5, v5, v3

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    :goto_2
    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDelta:I

    mul-int v4, v4, v0

    sub-int v4, v3, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aget v6, v5, v0

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAniationYOffset:I

    iget v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDelta:I

    mul-int v8, v8, v0

    sub-int/2addr v3, v8

    sub-int/2addr v7, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    aput v3, v5, v0

    iget-object v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_X:[F

    aget v3, v3, v0

    iget-object v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aput v4, v1, v0

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_X:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-boolean v1, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mCircle_X[i]            :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_X:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "     mCirlce_Y[i]  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCirlce_Y:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isScroll:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mColorFocused:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    iget v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterX:F

    iget v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    iget-object v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iget v9, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSetoff:F

    invoke-static/range {v2 .. v9}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->circleX(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F

    move-result v0

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    iget v2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    iget v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget v4, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    iget v5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterY:F

    iget v6, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    iget-object v7, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCurrentOrientation:Lcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;

    iget v8, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSetoff:F

    invoke-static/range {v1 .. v8}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->circleY(FIFFFFLcom/huami/watch/indicator/ViewPagerPageIndicator$Orientation;F)F

    move-result v1

    sget-boolean v2, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " scrollY             :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorRadius:F

    iget-object v3, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int p1, p4, p2

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterX:F

    add-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    iput p5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCenterY:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    iget p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    const/4 p5, 0x1

    sub-int/2addr p1, p5

    int-to-float p1, p1

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorCenterDistance:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAllArc:F

    iget p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAllArc:F

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mCircle_Radius:F

    div-float/2addr p1, v1

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, v1

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mArc_Angle:F

    iget p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mArc_Angle:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    iget p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mArc_Angle:F

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    sget-boolean p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "scroll"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout  mNumPages :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   mStartAngle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mStartAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "    mEvery_ArcAngle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mEvery_ArcAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p5, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDirty:Z

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    add-int/lit8 p5, p3, 0x12

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isScroll:Z

    sget-boolean p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "scroll"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isScroll :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isScroll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iput p2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSetoff:F

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->setPageCount(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eq p1, v1, :cond_5

    iput-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez p1, :cond_3

    new-instance p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;

    invoke-direct {p1, p0, v0}, Lcom/huami/watch/indicator/ViewPagerPageIndicator$PagerObserver;-><init>(Lcom/huami/watch/indicator/ViewPagerPageIndicator;Lcom/huami/watch/indicator/ViewPagerPageIndicator$1;)V

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "should call ViewPager.setAdpater before setViewPager"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->setPageCount(I)V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mSelectedPage:I

    :cond_5
    return-void
.end method

.method public showIndicator(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isShow:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->isShow:Z

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "scroll"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumPages :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mAniationYOffset:I

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    iget v1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mDelta:I

    iget-object v2, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mNumPages:I

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/huami/watch/indicator/ViewPagerPageIndicator;->invalidate(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method
