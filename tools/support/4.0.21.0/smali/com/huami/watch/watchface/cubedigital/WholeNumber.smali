.class public Lcom/huami/watch/watchface/cubedigital/WholeNumber;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;
    }
.end annotation


# static fields
.field private static final CubicInOut:Landroid/view/animation/Interpolator;

.field public static mIsHourHRun:Z

.field public static mIsHourLRun:Z

.field public static mIsMinHRun:Z

.field public static mIsMinLRun:Z


# instance fields
.field private mCurNumber:I

.field private mInAnimator:Landroid/animation/ValueAnimator;

.field private mInput:F

.field private mIsAnimationStarted:Z

.field private mIsNeedUpdated:Z

.field private mListener:Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

.field private mOldNumber:I

.field private mOutAnimator:Landroid/animation/ValueAnimator;

.field private mPostion:I

.field private mRectWidth:F

.field private mSmallRect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huami/watch/watchface/cubedigital/SmallRect;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:F

.field private mStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber$5;

    invoke-direct {v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$5;-><init>()V

    sput-object v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->CubicInOut:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInput:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mListener:Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsNeedUpdated:Z

    iput-boolean v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsAnimationStarted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    iput p3, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mRectWidth:F

    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mStartX:F

    iput p2, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mStartY:F

    iput p4, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->initAnimator()V

    return-void
.end method

.method static synthetic access$002(Lcom/huami/watch/watchface/cubedigital/WholeNumber;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInput:F

    return p1
.end method

.method static synthetic access$100(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mListener:Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOldNumber:I

    return p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/cubedigital/WholeNumber;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOldNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mCurNumber:I

    return p0
.end method

.method static synthetic access$402(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsAnimationStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsNeedUpdated:Z

    return p0
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsNeedUpdated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/cubedigital/WholeNumber;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->updateSmallRectInfo(IZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/cubedigital/WholeNumber;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->updateAnimationStatus(Z)V

    return-void
.end method

.method private initAnimator()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/huami/watch/watchface/cubedigital/WholeNumber$1;

    invoke-direct {v2, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$1;-><init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;

    invoke-direct {v2, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$2;-><init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->CubicInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$3;-><init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber$4;-><init>(Lcom/huami/watch/watchface/cubedigital/WholeNumber;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->CubicInOut:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAnimationStatus(Z)V
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sput-boolean p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinLRun:Z

    return-void

    :pswitch_1
    sput-boolean p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinHRun:Z

    return-void

    :pswitch_2
    sput-boolean p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsHourLRun:Z

    return-void

    :pswitch_3
    sput-boolean p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsHourHRun:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSmallRectInfo(IZI)V
    .locals 9

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    sget-object v0, Lcom/huami/watch/watchface/cubedigital/CubeUtils;->FONTS:[[[I

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOldNumber:I

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    aget-object v0, v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    new-instance v5, Lcom/huami/watch/watchface/cubedigital/SmallRect;

    aget v6, v3, v1

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v3, v3, v8

    iget v8, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mRectWidth:F

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/huami/watch/watchface/cubedigital/SmallRect;-><init>(IIIF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    iget-boolean p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsNeedUpdated:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInAnimator:Landroid/animation/ValueAnimator;

    :goto_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOutAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_4
    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mOldNumber:I

    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mCurNumber:I

    return-void
.end method


# virtual methods
.method public drawSelf(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mStartX:F

    iget v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mStartY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mSmallRect:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/cubedigital/SmallRect;

    iget v2, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mInput:F

    invoke-virtual {v1, p1, v2}, Lcom/huami/watch/watchface/cubedigital/SmallRect;->drawSmallRect(Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public setCurNumber(IZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsAnimationStarted:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsHourLRun:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinHRun:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinLRun:Z

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinHRun:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinLRun:Z

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mPostion:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    sget-boolean v0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsMinLRun:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsAnimationStarted:Z

    invoke-direct {p0, v1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->updateAnimationStatus(Z)V

    :cond_3
    iput p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mCurNumber:I

    iput-boolean p2, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mIsNeedUpdated:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->updateSmallRectInfo(IZI)V

    :cond_4
    return-void
.end method

.method public setCurNumber(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(II)Z

    move-result p1

    return p1
.end method

.method public setCurNumber(II)Z
    .locals 2

    iget v0, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mCurNumber:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(IZI)V

    return v1
.end method

.method public setListener(Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->mListener:Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;

    return-void
.end method
