.class public abstract Lcom/huami/watch/watchface/widget/AbsTextWidget;
.super Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;


# instance fields
.field private fonts:Lcom/huami/watch/watchface/widget/ImageFont;

.field private mGPaint:Landroid/graphics/Paint;

.field private mTextWidth:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;-><init>()V

    iput p1, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->x:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->y:I

    iput-object p3, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->fonts:Lcom/huami/watch/watchface/widget/ImageFont;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->mGPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected abstract getText()Ljava/lang/String;
.end method

.method protected getTextWidth()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->mTextWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->y:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/AbsTextWidget;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->fonts:Lcom/huami/watch/watchface/widget/ImageFont;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->fonts:Lcom/huami/watch/watchface/widget/ImageFont;

    invoke-virtual {v0, v2}, Lcom/huami/watch/watchface/widget/ImageFont;->getFontWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->mTextWidth:I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->fonts:Lcom/huami/watch/watchface/widget/ImageFont;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->mGPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/ImageFont;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/AbsTextWidget;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method
