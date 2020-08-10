.class public Lcom/huami/watch/common/widget/HmImageView;
.super Landroid/widget/ImageView;


# static fields
.field private static final QUAD_OUT:Lcom/huami/watch/utils/QuadInterpolator;


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClickAnimEnable:Z

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/huami/watch/utils/QuadInterpolator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/huami/watch/utils/QuadInterpolator;-><init>(B)V

    sput-object v0, Lcom/huami/watch/common/widget/HmImageView;->QUAD_OUT:Lcom/huami/watch/utils/QuadInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mClickAnimEnable:Z

    new-instance p1, Lcom/huami/watch/common/widget/HmImageView$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/common/widget/HmImageView$1;-><init>(Lcom/huami/watch/common/widget/HmImageView;)V

    iput-object p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mClickAnimEnable:Z

    new-instance p1, Lcom/huami/watch/common/widget/HmImageView$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/common/widget/HmImageView$1;-><init>(Lcom/huami/watch/common/widget/HmImageView;)V

    iput-object p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mClickAnimEnable:Z

    new-instance p1, Lcom/huami/watch/common/widget/HmImageView$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/common/widget/HmImageView$1;-><init>(Lcom/huami/watch/common/widget/HmImageView;)V

    iput-object p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/huami/watch/common/widget/HmImageView;)F
    .locals 0

    iget p0, p0, Lcom/huami/watch/common/widget/HmImageView;->mScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/huami/watch/common/widget/HmImageView;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/common/widget/HmImageView;->mScale:F

    return p1
.end method
