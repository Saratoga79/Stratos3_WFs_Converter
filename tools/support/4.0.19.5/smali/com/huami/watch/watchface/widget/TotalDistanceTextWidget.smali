.class public Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;
.super Lcom/huami/watch/watchface/widget/AbsTextWidget;


# instance fields
.field private mText:Ljava/lang/String;

.field private mUnit:Landroid/graphics/drawable/Drawable;

.field private measurement:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/huami/watch/watchface/widget/AbsTextWidget;-><init>(IILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p2, "--"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mText:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->measurement:I

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->resources:Landroid/content/res/Resources;

    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private updateUnit()V
    .locals 4

    iget v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->measurement:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0200ca

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0200c9

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mText:Ljava/lang/String;

    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->measurement:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->measurement:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->updateUnit()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/widget/AbsTextWidget;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
