.class public Lcom/huami/watch/watchface/widget/FatBurnTextWidget;
.super Lcom/huami/watch/watchface/widget/AbsTextWidget;


# instance fields
.field private mText:Ljava/lang/String;

.field private mUnit:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/huami/watch/watchface/widget/AbsTextWidget;-><init>(IILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p2, "--"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mText:Ljava/lang/String;

    const p2, 0x7f0200c8

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/widget/AbsTextWidget;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->getTextWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;->mUnit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
