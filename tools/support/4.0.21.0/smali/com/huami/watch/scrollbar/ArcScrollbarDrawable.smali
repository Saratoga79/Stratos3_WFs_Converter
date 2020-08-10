.class public Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;
.super Landroid/widget/ScrollBarDrawable;


# static fields
.field public static final DEBUG:Z


# instance fields
.field private final RANGE_TRACK_ANGLE:F

.field private final START_TRACK_ANGLE:F

.field private final STROKE_WIDHTH:F

.field private alpha:F

.field private mRangeAngle:F

.field private mScrollbarView:Landroid/view/View;

.field paint:Landroid/graphics/Paint;

.field private startAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/huami/watch/utils/Gloable;->DEBUG:Z

    sput-boolean v0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/ScrollBarDrawable;-><init>()V

    const v0, 0x43a8c000    # 337.5f

    iput v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->START_TRACK_ANGLE:F

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->RANGE_TRACK_ANGLE:F

    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->STROKE_WIDHTH:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->alpha:F

    iput-object p1, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mScrollbarView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->init()V

    return-void
.end method

.method private drawVerticalTack(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mScrollbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mScrollbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    float-to-int v4, v2

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-boolean v5, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Arc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   height :"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  bounds height : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   bounds width :"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  maxScreen:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x424c0000    # 51.0f

    iget v5, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->alpha:F

    mul-float v5, v5, v1

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    sget-boolean v0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Arc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  top"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   bottom"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   left"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  right"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 p2, 0x41200000    # 10.0f

    iput p2, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iput v2, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p2

    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    const v7, 0x43a8c000    # 337.5f

    const/high16 v8, 0x42340000    # 45.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVerticalThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 9

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mScrollbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mScrollbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    float-to-int v2, v0

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float p4, p4

    const/high16 v3, 0x42340000    # 45.0f

    mul-float p4, p4, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p4, v4

    int-to-float p3, p3

    mul-float p3, p3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    const p2, 0x43a8c000    # 337.5f

    add-float/2addr p3, p2

    iput p3, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->startAngle:F

    iput p4, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mRangeAngle:F

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/high16 p2, 0x41200000    # 10.0f

    iput p2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->alpha:F

    const/high16 p4, 0x43230000    # 163.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x40900000    # 4.5f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v5, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->startAngle:F

    iget v6, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->mRangeAngle:F

    iget-object v8, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->drawVerticalThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    return-void
.end method

.method protected drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->drawVerticalTack(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/huami/watch/scrollbar/ArcScrollbarDrawable;->alpha:F

    return-void
.end method
