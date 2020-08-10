.class Lcom/huami/watch/watchface/DigitalWatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field mBackgroundBitmap:Landroid/graphics/Bitmap;

.field mDatePaint:Landroid/text/TextPaint;

.field mTimePaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFace;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFace;Lcom/huami/watch/watchface/DigitalWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFace;)V

    return-void
.end method


# virtual methods
.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string p2, ""

    const/16 p3, 0xa

    if-ge p8, p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "0"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/high16 p5, 0x42880000    # 68.0f

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 p4, 0x428c0000    # 70.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/high16 p6, 0x43080000    # 136.0f

    invoke-virtual {p1, p2, p4, p6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_1

    const-string p2, ":"

    const/high16 p4, 0x430e0000    # 142.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    const-string p2, ""

    if-ge p7, p3, :cond_2

    const-string p2, "0"

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 p4, 0x43230000    # 163.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object p2, Lcom/huami/watch/watchface/DigitalWatchFace;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 p12, p12, -0x1

    aget-object p2, p2, p12

    iget-object p4, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    const/high16 p5, 0x41c00000    # 24.0f

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 p4, 0x432d0000    # 173.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    const/high16 p6, 0x428e0000    # 71.0f

    invoke-virtual {p1, p2, p6, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-ge p10, p3, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-ge p11, p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    const/high16 p4, 0x41980000    # 19.0f

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 p3, 0x43490000    # 201.0f

    iget-object p4, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p6, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f0200e2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/DINPro-Normal.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
