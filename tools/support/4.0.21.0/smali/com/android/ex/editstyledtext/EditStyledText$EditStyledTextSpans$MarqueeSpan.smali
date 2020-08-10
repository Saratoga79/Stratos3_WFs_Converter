.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeSpan"
.end annotation


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method private getMarqueeColor(II)I
    .locals 4

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    const/16 v3, 0x80

    if-nez v0, :cond_0

    move v0, v3

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string p1, "EditStyledText"

    const-string p2, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    if-le v2, v3, :cond_1

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    rsub-int p1, v2, 0xff

    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    :pswitch_1
    if-le v1, v3, :cond_2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    rsub-int p1, v1, 0xff

    div-int/lit8 v1, p1, 0x2

    :goto_0
    invoke-static {v0, v1, v2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    :goto_1
    :pswitch_2
    const p1, 0xffffff

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public resetColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
