.class public Lcom/huami/watch/watchface/widget/StepProgressTextWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mProgressWidget:Lcom/huami/watch/watchface/widget/ProgressWidget;

.field private mStepCount:I

.field private mTextWidget:Lcom/huami/watch/watchface/widget/TextWidget;

.field private mTextX:I

.field private mTextY:I

.field private mTotalStepTarget:I


# direct methods
.method public constructor <init>(IIII[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFI)V
    .locals 1

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mStepCount:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTotalStepTarget:I

    iput p1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mCenterX:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mCenterY:I

    iput p3, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextX:I

    iput p4, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextY:I

    new-instance p1, Lcom/huami/watch/watchface/widget/ProgressWidget;

    invoke-direct {p1, p6, p7, p8, p9}, Lcom/huami/watch/watchface/widget/ProgressWidget;-><init>(Landroid/graphics/Bitmap;FFI)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mProgressWidget:Lcom/huami/watch/watchface/widget/ProgressWidget;

    new-instance p1, Lcom/huami/watch/watchface/widget/TextWidget;

    invoke-direct {p1, p5}, Lcom/huami/watch/watchface/widget/TextWidget;-><init>([Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextWidget:Lcom/huami/watch/watchface/widget/TextWidget;

    return-void
.end method

.method private updateProgress()V
    .locals 4

    iget v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mProgressWidget:Lcom/huami/watch/watchface/widget/ProgressWidget;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mStepCount:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTotalStepTarget:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/huami/watch/watchface/widget/ProgressWidget;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mCenterX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mCenterY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p2, p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mStepCount:I

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextWidget:Lcom/huami/watch/watchface/widget/TextWidget;

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mStepCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p2, p1, v0}, Lcom/huami/watch/watchface/widget/TextWidget;->onDataUpdate(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->updateProgress()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mProgressWidget:Lcom/huami/watch/watchface/widget/ProgressWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mProgressWidget:Lcom/huami/watch/watchface/widget/ProgressWidget;

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/widget/ProgressWidget;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextWidget:Lcom/huami/watch/watchface/widget/TextWidget;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextWidget:Lcom/huami/watch/watchface/widget/TextWidget;

    invoke-virtual {v0, p1}, Lcom/huami/watch/watchface/widget/TextWidget;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTextY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method public setTotalStepTarget(I)V
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->mTotalStepTarget:I

    return-void
.end method
