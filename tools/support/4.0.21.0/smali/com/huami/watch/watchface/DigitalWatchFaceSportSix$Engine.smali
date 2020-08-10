.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private WEEKDAYS:[Ljava/lang/String;

.field private batteryDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mBatteryTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mCalCircleRadius:F

.field private mCalCircleThickness:F

.field private mCalPaint:Landroid/graphics/Paint;

.field private mCalStepTypeface:Landroid/graphics/Typeface;

.field private mCenterXBatteryLevel:F

.field private mCenterXDate:F

.field private mCenterXWeek:F

.field private mCenterYBatteryLevel:F

.field private mCenterYDate:F

.field private mCenterYWeek:F

.field private mColorBattery:I

.field private mColorBgStepCirlce:I

.field private mColorCal:I

.field private mColorKmOne:I

.field private mColorKmThree:I

.field private mColorKmTwo:I

.field private mColorStep:I

.field private mColorStepCirlce:I

.field private mColorTime:I

.field private mColorWhite:I

.field private mCurStepCount:I

.field private mDateBatteryTypeface:Landroid/graphics/Typeface;

.field private mFontSizeBattery:F

.field private mFontSizeDate:F

.field private mFontSizeHour:F

.field private mFontSizeMinute:F

.field private mFontSizeStep:F

.field private mGPaint:Landroid/graphics/Paint;

.field private mKmBitmap:Landroid/graphics/Bitmap;

.field private mLeftMinute:F

.field private mLeftSecond:F

.field private mLeftTodayCalorieIcon:F

.field private mLeftTodayStepIcon:F

.field private mOldCurStepCount:I

.field private mPaintHuamiFont:Landroid/text/TextPaint;

.field private mPaintWeek:Landroid/text/TextPaint;

.field private mProgressBattery:I

.field private mProgressDegreeBattery:F

.field private mRightHour:F

.field private mSecondIcon:Landroid/graphics/Bitmap;

.field private mSportTodayDistance:D

.field private mSportTodayString:Ljava/lang/String;

.field private mStepAnimator:Landroid/animation/ValueAnimator;

.field private mStepCircleBitmap:Landroid/graphics/Bitmap;

.field private mStepCircleRadius:F

.field private mStepCircleThickness:F

.field private mStepCompose:I

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepDiff:I

.field private mStepPaint:Landroid/graphics/Paint;

.field private mStepString:Ljava/lang/String;

.field private mTimeTypeface:Landroid/graphics/Typeface;

.field private mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTodayStepIcon:Landroid/graphics/Bitmap;

.field private mTopCalorie:F

.field private mTopHour:F

.field private mTopMinute:F

.field private mTopSecond:F

.field private mTopStep:F

.field private mTopTodayCalorieIcon:F

.field private mTopTodayStepIcon:F

.field private mTotalKmIcon:Landroid/graphics/Bitmap;

.field private mTotalStepTarget:I

.field private mWeekTypeface:Landroid/graphics/Typeface;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mOldCurStepCount:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepDiff:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCompose:I

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTotalStepTarget:I

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepString:Ljava/lang/String;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBound:Landroid/graphics/RectF;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayDistance:D

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayString:Ljava/lang/String;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$4;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$4;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$5;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine$5;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCompose:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepDiff:I

    return p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepDiff:I

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mOldCurStepCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mOldCurStepCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayDistance:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayDistance:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateSportTodayDistance()V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateBatteryLevel(II)V

    return-void
.end method

.method private drawCalorieContent(Landroid/graphics/Canvas;FF)V
    .locals 12

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayDistance:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    sub-float v4, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    sub-float v5, p3, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    add-float v6, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    add-float v7, p3, v1

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v9, v0

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v2, p2

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    float-to-double v4, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mKmBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-double v4, p2

    sub-double/2addr v2, v4

    double-to-float p2, v2

    float-to-double v2, p3

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalCircleRadius:F

    float-to-double v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    sub-double/2addr v2, v0

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mKmBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-double v0, p3

    sub-double/2addr v2, v0

    double-to-float p3, v2

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mKmBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawStepContent(Landroid/graphics/Canvas;FF)V
    .locals 11

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorBgStepCirlce:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorStepCirlce:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    sub-float v3, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    sub-float v4, p3, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    add-float v5, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    add-float v6, p3, v1

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v8, v0, v1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    sub-double/2addr v2, v0

    float-to-double v0, p2

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    float-to-double v4, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-double v4, p2

    sub-double/2addr v0, v4

    double-to-float p2, v0

    float-to-double v0, p3

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleRadius:F

    float-to-double v4, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-double v2, p3

    sub-double/2addr v0, v2

    double-to-float p3, v0

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepCircleBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDistanceUnit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "km"

    return-object v0

    :cond_0
    const-string v0, "mi"

    return-object v0
.end method

.method private updateBatteryLevel(II)V
    .locals 1

    if-lez p2, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mProgressBattery:I

    const/high16 p2, 0x428c0000    # 70.0f

    mul-float p1, p1, p2

    :goto_0
    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mProgressDegreeBattery:F

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mProgressBattery:I

    const/4 p1, 0x0

    goto :goto_0

    return-void
.end method

.method private updateSportTodayDistance()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayDistance:D

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayString:Ljava/lang/String;

    return-void
.end method

.method private updateStepInfo()V
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCurStepCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "huami.watch.health.config"

    invoke-static {v0, v1}, Lcom/huami/watch/companion/settings/WatchSettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "step_target"

    const/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateStepInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBound:Landroid/graphics/RectF;

    const/4 p9, 0x0

    invoke-virtual {p6, p9, p9, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBound:Landroid/graphics/RectF;

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 p9, 0x0

    invoke-virtual {p1, p2, p9, p3, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->drawStepContent(Landroid/graphics/Canvas;FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTimeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorTime:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mFontSizeHour:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mRightHour:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopHour:F

    iget-object p8, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p6, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSecondIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftSecond:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopSecond:F

    iget-object p8, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p6, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorTime:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mFontSizeMinute:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftMinute:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopMinute:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mDateBatteryTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mFontSizeDate:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p10}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p11}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterXDate:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterYDate:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mWeekTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 p12, p12, -0x1

    aget-object p2, p2, p12

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterXWeek:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterYWeek:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCalStepTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorCal:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftTodayCalorieIcon:F

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopTodayCalorieIcon:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p6, p7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mSportTodayString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftTodayCalorieIcon:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p3, p6

    const/high16 p6, 0x40400000    # 3.0f

    add-float/2addr p3, p6

    iget p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopCalorie:F

    iget-object p8, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p7, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorStep:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mFontSizeStep:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTodayStepIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftTodayStepIcon:F

    iget p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopTodayStepIcon:F

    iget-object p8, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p7, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mStepString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mLeftTodayStepIcon:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTodayStepIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p3, p7

    add-float/2addr p3, p6

    iget p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mTopStep:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->drawCalorieContent(Landroid/graphics/Canvas;FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mProgressBattery:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterXBatteryLevel:F

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterYBatteryLevel:F

    invoke-virtual {p1, p2, p3, p4, p9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mDateBatteryTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mFontSizeBattery:F

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mColorBattery:I

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setColor(I)V

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mProgressBattery:I

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mCenterXBatteryLevel:F

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p4

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mBatteryTop:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateSportTodayDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->invalidate()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 1

    new-instance p1, Ljava/lang/VerifyError;

    const-string v0, "bad dex opcode"

    invoke-direct {p1, v0}, Ljava/lang/VerifyError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSix$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
