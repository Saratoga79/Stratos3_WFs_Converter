.class Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/GreenAnalogWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mDayMarginLeft:F

.field mHourBitmap:Landroid/graphics/Bitmap;

.field mMinuteBitmap:Landroid/graphics/Bitmap;

.field private mMonthMarginLeft:F

.field private mMonthMarginTop:F

.field mPaint:Landroid/graphics/Paint;

.field mPointerBitmap:Landroid/graphics/Bitmap;

.field mSecondBitmap:Landroid/graphics/Bitmap;

.field private mWeekMarginLeft:F

.field private mWeekMarginTop:F

.field final synthetic this$0:Lcom/huami/watch/watchface/GreenAnalogWatchFace;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/GreenAnalogWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/GreenAnalogWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/GreenAnalogWatchFace;Lcom/huami/watch/watchface/GreenAnalogWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/GreenAnalogWatchFace;)V

    return-void
.end method

.method private getDayDegree()F
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41f80000    # 31.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    return v0
.end method

.method private getMonthDegree()F
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    return v0
.end method

.method private getWeekDegree()F
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->getMonthDegree()F

    move-result p2

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginLeft:F

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginTop:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginLeft:F

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginTop:F

    iget-object v2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->getDayDegree()F

    move-result p2

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mDayMarginLeft:F

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginTop:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mDayMarginLeft:F

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginTop:F

    iget-object v2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->getWeekDegree()F

    move-result p2

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginLeft:F

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginTop:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginLeft:F

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginTop:F

    iget-object v2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p8, 0x40000000    # 2.0f

    div-float/2addr p3, p8

    sub-float p3, p4, p3

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p8

    sub-float v0, p5, v0

    iget-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMinuteBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMinuteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p8

    sub-float p3, p4, p3

    iget-object p7, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMinuteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    int-to-float p7, p7

    div-float/2addr p7, p8

    sub-float p7, p5, p7

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->isInAmbientMode()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mSecondBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p8

    sub-float/2addr p4, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p8

    sub-float/2addr p5, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f02011d

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f02011e

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f02011f

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMinuteBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f020120

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mSecondBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f020121

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPointerBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const v0, 0x7f090008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginLeft:F

    const v0, 0x7f090007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mMonthMarginTop:F

    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mDayMarginLeft:F

    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginLeft:F

    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/GreenAnalogWatchFace$Engine;->mWeekMarginTop:F

    return-void
.end method
