.class public Lcom/huami/watch/utils/QuadInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field _mode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/huami/watch/utils/QuadInterpolator;->_mode:B

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iput-byte p1, p0, Lcom/huami/watch/utils/QuadInterpolator;->_mode:B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The mode must be 0, 1 or 2. See the doc"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget-byte v0, p0, Lcom/huami/watch/utils/QuadInterpolator;->_mode:B

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    return p1

    :pswitch_0
    mul-float p1, p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v0

    const/high16 v2, -0x41000000    # -0.5f

    sub-float v1, p1, v1

    mul-float p1, p1, v1

    sub-float/2addr p1, v0

    mul-float p1, p1, v2

    return p1

    :pswitch_1
    neg-float v0, p1

    sub-float/2addr p1, v1

    :goto_0
    mul-float p1, p1, v0

    return p1

    :pswitch_2
    mul-float p1, p1, p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
