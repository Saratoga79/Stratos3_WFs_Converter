.class Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;

# interfaces
.implements Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/CubeDigitalWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private mDayStr:Ljava/lang/String;

.field private mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

.field private mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

.field private mIsFirstLoaded:Z

.field private mMarginLeft:F

.field private mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

.field private mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

.field private mMonthStr:Ljava/lang/String;

.field private mRadius:F

.field private mRectWidth:F

.field private mSecMarginLeft:F

.field private mSecMarginTop:F

.field private mSecPaint:Landroid/graphics/Paint;

.field private mStartLeft:F

.field private mStartTop:F

.field private mTextMarginBottom:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field final synthetic this$0:Lcom/huami/watch/watchface/CubeDigitalWatchFace;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/CubeDigitalWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/CubeDigitalWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mIsFirstLoaded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/CubeDigitalWatchFace;Lcom/huami/watch/watchface/CubeDigitalWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/CubeDigitalWatchFace;)V

    return-void
.end method


# virtual methods
.method protected getInitAnimDuration()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p8, p7}, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->updateCurrentTime(II)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginLeft:F

    iget p3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginTop:F

    iget p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    add-float/2addr p3, p5

    iget p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    iget-object p6, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginLeft:F

    iget p3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginTop:F

    const/high16 p5, 0x40a00000    # 5.0f

    iget p6, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    mul-float p6, p6, p5

    add-float/2addr p3, p6

    iget p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    iget-object p6, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->drawSelf(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->drawSelf(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->drawSelf(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p2, p1}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->drawSelf(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/CubeDigitalWatchFace;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/CubeDigitalWatchFace;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0005

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p12, p12, -0x1

    aget-object p2, p2, p12

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p10}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMonthStr:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p11}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mDayStr:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x43960000    # 300.0f

    iget p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextMarginBottom:F

    sub-float/2addr p3, p5

    iget-object p5, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartLeft:F

    const v0, 0x7f090019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartTop:F

    const v0, 0x7f090016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const v0, 0x7f09001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMarginLeft:F

    const v0, 0x7f09001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginTop:F

    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mSecMarginLeft:F

    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextSize:F

    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextMarginBottom:F

    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMonthStr:Ljava/lang/String;

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mDayStr:Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartLeft:F

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartTop:F

    iget v2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;-><init>(FFFI)V

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    new-instance p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartLeft:F

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMarginLeft:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartTop:F

    iget v3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/4 v4, 0x1

    invoke-direct {p1, v0, v1, v3, v4}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;-><init>(FFFI)V

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    new-instance p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartLeft:F

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMarginLeft:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartTop:F

    iget v4, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/4 v5, 0x2

    invoke-direct {p1, v0, v1, v4, v5}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;-><init>(FFFI)V

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    new-instance p1, Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartLeft:F

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMarginLeft:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRadius:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mStartTop:F

    iget v2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mRectWidth:F

    const/4 v3, 0x3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;-><init>(FFFI)V

    iput-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setListener(Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setListener(Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setListener(Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setListener(Lcom/huami/watch/watchface/cubedigital/WholeNumber$IWholeNumber;)V

    return-void
.end method

.method public refreshView()V
    .locals 0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->postInvalidate()V

    return-void
.end method

.method public updateCurrentTime(II)V
    .locals 4

    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    div-int/lit8 v1, p2, 0xa

    rem-int/lit8 p2, p2, 0xa

    iget-boolean v2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mIsFirstLoaded:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {v2, v0, v3, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(IZI)V

    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {v0, p1, v3, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(IZI)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, v1, v3, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(IZI)V

    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p2, v3, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(IZI)V

    iput-boolean v3, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mIsFirstLoaded:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {v2, v0}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x32

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mHourL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {v0, p1, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(II)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v3, v3, 0x32

    :cond_2
    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinH:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, v1, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(II)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v3, v3, 0x32

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/watchface/CubeDigitalWatchFace$Engine;->mMinL:Lcom/huami/watch/watchface/cubedigital/WholeNumber;

    invoke-virtual {p1, p2, v3}, Lcom/huami/watch/watchface/cubedigital/WholeNumber;->setCurNumber(II)Z

    return-void
.end method
