.class Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private KM:Landroid/graphics/Bitmap;

.field private MI:Landroid/graphics/Bitmap;

.field private WEEKS:[Landroid/graphics/Bitmap;

.field private hourFormat12:Z

.field private mAmBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mBound:Landroid/graphics/RectF;

.field private mCenterXBatteryLevel:F

.field private mCenterXDate:F

.field private mCenterXTodayAnchor:F

.field private mCenterXTotalAnchor:F

.field private mCenterYBatteryLevel:F

.field private mCenterYDate:F

.field private mCenterYKMAnchor:F

.field private mCenterYStepCount:F

.field private mColorBlue:I

.field private mColorProgressBg:I

.field private mColorProgressFg:I

.field private mColorRed:I

.field private mColorWhite:I

.field private mCurStepCount:I

.field private mFontSizeBattery:F

.field private mFontSizeDate:F

.field private mFontSizeHour:F

.field private mFontSizeKm:F

.field private mFontSizeMinute:F

.field private mFontSizeSecond:F

.field private mFontSizeStep:F

.field private mGPaint:Landroid/graphics/Paint;

.field private mLeftAm:F

.field private mLeftMinute:F

.field private mLeftSecond:F

.field private mLeftTodayIcon:F

.field private mLeftTodayText:F

.field private mLeftTodayUnit:F

.field private mLeftTotalIcon:F

.field private mLeftTotalText:F

.field private mLeftTotalUnit:F

.field private mLeftWeek:F

.field private mOffsetYKMAnchor:F

.field private mOffsetYUnit:F

.field private mPaintHuamiFont:Landroid/text/TextPaint;

.field private mPmBitmap:Landroid/graphics/Bitmap;

.field private mProgressBattery:I

.field private mProgressDegreeBattery:F

.field private mProgressDegreeStep:F

.field private mRightHour:F

.field private mSportTodayDistance:D

.field private mSportTodayString:Ljava/lang/String;

.field private mSportTotalDistance:D

.field private mSportTotalString:Ljava/lang/String;

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepString:Ljava/lang/String;

.field private mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTodayKmIcon:Landroid/graphics/Bitmap;

.field private mTopAm:F

.field private mTopHour:F

.field private mTopMinute:F

.field private mTopSecond:F

.field private mTopTodayIcon:F

.field private mTopTotalIcon:F

.field private mTopWeek:F

.field private mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTotalKmIcon:Landroid/graphics/Bitmap;

.field private mTotalStepTarget:I

.field private mUnitWidth:F

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCurStepCount:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalStepTarget:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mStepString:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalDistance:D

    iput-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayDistance:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getDistanceUnit()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalString:Ljava/lang/String;

    const-string v0, "--"

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayString:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$4;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine$4;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateBatteryLevel(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayDistance:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayDistance:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateSportTodayDistance()V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalDistance:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalDistance:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateSportTotalDistance()V

    return-void
.end method

.method private getDistanceUnit()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->KM:Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->MI:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
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

    iput p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressBattery:I

    const/high16 p2, 0x428c0000    # 70.0f

    mul-float p1, p1, p2

    :goto_0
    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressDegreeBattery:F

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressBattery:I

    const/4 p1, 0x0

    goto :goto_0

    return-void
.end method

.method private updateSportTodayDistance()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeKm:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayDistance:D

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayString:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mUnitWidth:F

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXTodayAnchor:F

    add-float/2addr v1, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopTodayIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayIcon:F

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayText:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayText:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayUnit:F

    return-void
.end method

.method private updateSportTotalDistance()V
    .locals 4

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalDistance:D

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalString:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeKm:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mUnitWidth:F

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXTotalAnchor:F

    add-float/2addr v1, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopTotalIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalIcon:F

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalText:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalText:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalUnit:F

    return-void
.end method

.method private updateStepInfo()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCurStepCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalStepTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mStepString:Ljava/lang/String;

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, -0x3d740000    # -70.0f

    mul-float v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressDegreeStep:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateStepInfo()V
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
    .locals 10

    move-object v0, p0

    move-object v7, p1

    move v1, p2

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/4 v5, 0x0

    move v6, p3

    invoke-virtual {v4, v5, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorWhite:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeHour:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static/range {p8 .. p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mRightHour:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopHour:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorRed:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeMinute:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static/range {p7 .. p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftMinute:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopMinute:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorWhite:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeSecond:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static/range {p6 .. p6}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftSecond:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopSecond:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    if-eqz v4, :cond_0

    packed-switch p13, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPmBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mAmBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftAm:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopAm:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeDate:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p10 .. p10}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p11 .. p11}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXDate:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYDate:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    add-int/lit8 v5, p12, -0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v5

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftWeek:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopWeek:F

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-direct {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getDistanceUnit()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeKm:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalIcon:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopTotalIcon:F

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTotalString:Ljava/lang/String;

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalText:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYKMAnchor:F

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_2

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTotalUnit:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYUnit:F

    add-float/2addr v6, v8

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayKmIcon:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayIcon:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopTodayIcon:F

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mSportTodayString:Ljava/lang/String;

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayText:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYKMAnchor:F

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_3

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftTodayUnit:F

    iget v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    iget v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYUnit:F

    add-float/2addr v6, v8

    iget-object v8, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeStep:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mStepString:Ljava/lang/String;

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v1, v1, v5

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYStepCount:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v4, 0x42ee0000    # 119.0f

    sub-float v5, p4, v4

    sub-float v6, p5, v4

    add-float v2, p4, v4

    add-float v3, p5, v4

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorProgressBg:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v3, 0x42fa0000    # 125.0f

    const/high16 v4, -0x3d740000    # -70.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v3, -0x3d060000    # -125.0f

    const/high16 v4, 0x428c0000    # 70.0f

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorProgressFg:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v3, 0x42fa0000    # 125.0f

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressDegreeStep:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v3, -0x3d060000    # -125.0f

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressDegreeBattery:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeBattery:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorBlue:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mProgressBattery:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXBatteryLevel:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYBatteryLevel:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHourFormatChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getHourFormat()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090063

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopSecond:F

    goto :goto_2

    :cond_1
    const v0, 0x7f090062

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->invalidate()V

    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateSportTodayDistance()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateSportTotalDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->invalidate()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->getHourFormat()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    const v0, 0x7f0200e7

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f020149

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f02014a

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayKmIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f020155

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mAmBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f020156

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPmBitmap:Landroid/graphics/Bitmap;

    const-string v0, "guard/malasong/small_km.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->KM:Landroid/graphics/Bitmap;

    const-string v0, "guard/malasong/en/small_km.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->MI:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->KM:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->KM:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mUnitWidth:F

    :cond_1
    const v0, 0x7f09005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mRightHour:F

    const v0, 0x7f09005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopHour:F

    const v0, 0x7f09005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftMinute:F

    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopMinute:F

    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftSecond:F

    iget-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->hourFormat12:Z

    if-eqz v0, :cond_2

    const v0, 0x7f090063

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopSecond:F

    goto :goto_2

    :cond_2
    const v0, 0x7f090062

    goto :goto_1

    :goto_2
    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYStepCount:F

    const v0, 0x7f090065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXBatteryLevel:F

    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYBatteryLevel:F

    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXDate:F

    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYDate:F

    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftWeek:F

    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopWeek:F

    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXTotalAnchor:F

    const v0, 0x7f09006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterXTodayAnchor:F

    const v0, 0x7f09006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mCenterYKMAnchor:F

    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYKMAnchor:F

    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mOffsetYUnit:F

    const v0, 0x7f090078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mLeftAm:F

    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTopAm:F

    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeHour:F

    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeMinute:F

    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeSecond:F

    const v0, 0x7f090073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeStep:F

    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeBattery:F

    const v0, 0x7f090075

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeDate:F

    const v0, 0x7f090077

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mFontSizeKm:F

    const v0, 0x7f08000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorRed:I

    const v0, 0x7f08000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorBlue:I

    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorWhite:I

    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorProgressFg:I

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mColorProgressBg:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v3

    const-string v4, "typeface/huamifont.ttf"

    invoke-virtual {v3, v4}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_3
    const/4 v4, 0x7

    if-ge v3, v4, :cond_3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-static {p1, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportOne$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
