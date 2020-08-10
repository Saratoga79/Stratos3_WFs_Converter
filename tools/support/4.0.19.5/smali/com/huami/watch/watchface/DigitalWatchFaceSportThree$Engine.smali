.class Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private HEART_UNIT:Ljava/lang/String;

.field private STEP_UNIT:Ljava/lang/String;

.field private WEEKDAYS:[Ljava/lang/String;

.field private kcalPaintFont:Landroid/text/TextPaint;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBound:Landroid/graphics/RectF;

.field private mCalories:F

.field private mCaloriesDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mCaloriesText:Ljava/lang/String;

.field private mCenterXCal:F

.field private mCenterXDate:F

.field private mCenterXHeartAnchor:F

.field private mCenterXHeartText:F

.field private mCenterXMiddle:F

.field private mCenterXStepAnchor:F

.field private mCenterXStepText:F

.field private mCenterXWeek:F

.field private mCenterYCal:F

.field private mCenterYDate:F

.field private mCenterYStepAnchor:F

.field private mCenterYWeek:F

.field private mColorDateWhite:I

.field private mColorProgressFg:I

.field private mColorWhite:I

.field private mCurStepCount:I

.field private mFontSizeCal:F

.field private mFontSizeDate:F

.field private mFontSizeHour:F

.field private mFontSizeMiddle:F

.field private mFontSizeMinute:F

.field private mFontSizeStep:F

.field private mGPaint:Landroid/graphics/Paint;

.field private mHeartRateDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mHeartRato:I

.field private mHeartString:Ljava/lang/String;

.field private mIconHeart:Landroid/graphics/Bitmap;

.field private mIconStep:Landroid/graphics/Bitmap;

.field private mLeftHeartIcon:F

.field private mLeftHeartUnitText:F

.field private mLeftMinute:F

.field private mLeftStepIcon:F

.field private mLeftStepUnitText:F

.field private mOffsetYStepAnchor:F

.field private mPaintTekoFont:Landroid/text/TextPaint;

.field private mPaintTekoFontWithShadow:Landroid/text/TextPaint;

.field private mPaintUnit:Landroid/text/TextPaint;

.field private mPaintWeek:Landroid/text/TextPaint;

.field private mProgressDegreeStep:F

.field private mRightHour:F

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepString:Ljava/lang/String;

.field private mTopHeartIcon:F

.field private mTopHeartUnitText:F

.field private mTopHour:F

.field private mTopMiddle:F

.field private mTopMinute:F

.field private mTopStepIcon:F

.field private mTopStepUnitText:F

.field private mTotalStepTarget:I

.field private needUnit:Z

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTotalStepTarget:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRato:I

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepString:Ljava/lang/String;

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartString:Ljava/lang/String;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBound:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCalories:F

    const-string p1, "--kCal"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCaloriesText:Ljava/lang/String;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCaloriesDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRateDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCalories:F

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->updateCalories()V

    return-void
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRato:I

    return p1
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->updateHeartInfo()V

    return-void
.end method

.method private getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private updateCalories()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCalories:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kCal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCaloriesText:Ljava/lang/String;

    return-void
.end method

.method private updateHeartInfo()V
    .locals 5

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRato:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRato:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartString:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "--"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeStep:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iget-boolean v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->HEART_UNIT:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXHeartAnchor:F

    add-float/2addr v3, v0

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartIcon:F

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXHeartAnchor:F

    add-float/2addr v1, v0

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartIcon:F

    :goto_2
    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYStepAnchor:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHeartIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartIcon:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXHeartText:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartIcon:F

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartUnitText:F

    return-void
.end method

.method private updateStepInfo()V
    .locals 5

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mProgressDegreeStep:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCurStepCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepString:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeStep:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iget-boolean v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->STEP_UNIT:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXStepAnchor:F

    add-float/2addr v3, v0

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepIcon:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXStepAnchor:F

    add-float/2addr v1, v0

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepIcon:F

    :goto_1
    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYStepAnchor:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopStepIcon:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepIcon:F

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXStepText:F

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepIcon:F

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepUnitText:F

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->updateStepInfo()V
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

    move v1, p4

    move v2, p5

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v4, 0x430c0000    # 140.0f

    sub-float v5, v1, v4

    sub-float v6, v2, v4

    add-float v8, v1, v4

    add-float v9, v2, v4

    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorProgressFg:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBound:Landroid/graphics/RectF;

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mProgressDegreeStep:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v5, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBound:Landroid/graphics/RectF;

    const/4 v2, 0x0

    move v3, p2

    move v4, p3

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBound:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorWhite:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeHour:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static/range {p8 .. p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mRightHour:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHour:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeMinute:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static/range {p7 .. p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftMinute:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopMinute:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mDrawTimeIndicator:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeMiddle:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v1, ":"

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXMiddle:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopMiddle:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeDate:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorDateWhite:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p10 .. p10}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p11 .. p11}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXDate:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYDate:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 v2, p12, -0x1

    aget-object v1, v1, v2

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXWeek:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYWeek:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeStep:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepIcon:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopStepIcon:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepString:Ljava/lang/String;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXStepText:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYStepAnchor:F

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mOffsetYStepAnchor:F

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->STEP_UNIT:Ljava/lang/String;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftStepUnitText:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopStepUnitText:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartIcon:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHeartIcon:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartString:Ljava/lang/String;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXHeartText:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYStepAnchor:F

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mOffsetYStepAnchor:F

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->HEART_UNIT:Ljava/lang/String;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftHeartUnitText:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHeartUnitText:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeCal:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCaloriesText:Ljava/lang/String;

    iget v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXCal:F

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYCal:F

    iget-object v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7f0200eb

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f02015a

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconStep:Landroid/graphics/Bitmap;

    const v1, 0x7f020159

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mIconHeart:Landroid/graphics/Bitmap;

    const/high16 v0, 0x7f0a0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->needUnit:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070044

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->STEP_UNIT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f070045

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->HEART_UNIT:Ljava/lang/String;

    const v0, 0x7f0900b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mRightHour:F

    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHour:F

    const v0, 0x7f0900b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mLeftMinute:F

    const v0, 0x7f0900b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopMinute:F

    const v0, 0x7f0900b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXMiddle:F

    const v0, 0x7f0900b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopMiddle:F

    const v0, 0x7f0900bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXCal:F

    const v0, 0x7f0900bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYCal:F

    const v0, 0x7f0900bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXDate:F

    const v0, 0x7f0900be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYDate:F

    const v0, 0x7f0900bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXWeek:F

    const v0, 0x7f0900c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYWeek:F

    const v0, 0x7f0900c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXStepAnchor:F

    const v0, 0x7f0900c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterXHeartAnchor:F

    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCenterYStepAnchor:F

    const v0, 0x7f0900c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mOffsetYStepAnchor:F

    const v0, 0x7f0900c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopStepUnitText:F

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mTopHeartUnitText:F

    const v0, 0x7f0900c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeHour:F

    const v0, 0x7f0900c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeMinute:F

    const v0, 0x7f0900c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeMiddle:F

    const v0, 0x7f0900c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeStep:F

    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeCal:F

    const v0, 0x7f0900cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mFontSizeDate:F

    const v0, 0x7f080021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorWhite:I

    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorDateWhite:I

    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorProgressFg:I

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/huamufontspeed.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFontWithShadow:Landroid/text/TextPaint;

    const v2, 0x7f0900d0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0900ce

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0900cf

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f080026

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/huamufontspeed.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/huamufontspeedkcal.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->kcalPaintFont:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorWhite:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorDateWhite:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    const v2, 0x7f0900cc

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mColorDateWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    const v1, 0x7f0900cd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mPaintUnit:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->WEEKDAYS:[Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mCaloriesDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->mHeartRateDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportThree$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
