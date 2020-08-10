.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private WEEKDAYS:[Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBound:Landroid/graphics/RectF;

.field private mCenterXDate:F

.field private mCenterXMiddle:F

.field private mCenterYDate:F

.field private mCenterYMiddle:F

.field private final mClipPath:Landroid/graphics/Path;

.field private mColorBlack:I

.field private mColorBlack7A:I

.field private mColorBlue:I

.field private mColorWhite:I

.field private mColorWhite4D:I

.field private mColorWhite7A:I

.field private mCurStepCount:I

.field private mCurrentStepString:Ljava/lang/String;

.field private mFontSizeDate:F

.field private mFontSizeHour:F

.field private mFontSizeKm:F

.field private mFontSizeMiddle:F

.field private mFontSizeMinute:F

.field private mFontSizeSecond:F

.field private mFontSizeStep:F

.field private mGPaint:Landroid/graphics/Paint;

.field private mLeftSecond:F

.field private mPaintMantekaFont:Landroid/text/TextPaint;

.field private mPaintTekoFont:Landroid/text/TextPaint;

.field private mPaintWeek:Landroid/text/TextPaint;

.field private mProgressStepLevel:I

.field private mSportTotalDistance:D

.field private mSportTotalString:Ljava/lang/String;

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepIcon:Landroid/graphics/Bitmap;

.field private mStepProgress:Landroid/graphics/drawable/Drawable;

.field private mTopSecond:F

.field private mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTotalKmIcon:Landroid/graphics/Bitmap;

.field private mTotalStepString:Ljava/lang/String;

.field private mTotalStepTarget:I

.field private mXCurrentStepCount:F

.field private mXHour:F

.field private mXKmIcon:F

.field private mXMinute:F

.field private mXStepIcon:F

.field private mXTotalKm:F

.field private mXTotalStepCount:F

.field private mYHour:F

.field private mYKmIcon:F

.field private mYMinute:F

.field private mYStepCount:F

.field private mYStepIcon:F

.field private mYTotalKm:F

.field private mYWeek:F

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurStepCount:I

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepTarget:I

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurrentStepString:Ljava/lang/String;

    const-string p1, "8000"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepString:Ljava/lang/String;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mBound:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mClipPath:Landroid/graphics/Path;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalString:Ljava/lang/String;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalDistance:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalDistance:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateSportTotalDistance()V

    return-void
.end method

.method private getDistanceUnit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "km"

    return-object v0

    :cond_0
    const-string v0, "mi"

    return-object v0
.end method

.method private getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private updateSportTotalDistance()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalDistance:D

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalString:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeKm:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v1, 0x41600000    # 14.0f

    add-float v2, v0, v1

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalString:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, -0x41000000    # -0.5f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXKmIcon:F

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXKmIcon:F

    add-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXTotalKm:F

    return-void
.end method

.method private updateStepInfo()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurStepCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurrentStepString:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeStep:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurrentStepString:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    add-float v3, v0, v2

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepString:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, -0x41000000    # -0.5f

    mul-float v3, v3, v4

    iput v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXStepIcon:F

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXStepIcon:F

    add-float/2addr v3, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXCurrentStepCount:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXCurrentStepCount:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXTotalStepCount:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mProgressStepLevel:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepProgress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mProgressStepLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepTarget:I

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepTarget:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateStepInfo()V
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

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mBound:Landroid/graphics/RectF;

    const/4 p9, 0x0

    invoke-virtual {p5, p9, p9, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mBound:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 p9, 0x0

    invoke-virtual {p1, p2, p9, p3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlack:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeHour:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXHour:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYHour:F

    iget-object p8, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeMinute:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXMinute:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYMinute:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeSecond:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {p6}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mLeftSecond:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTopSecond:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeMiddle:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p2, ":"

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterXMiddle:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterYMiddle:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeDate:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlack7A:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

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

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterXDate:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterYDate:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXStepIcon:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYStepIcon:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeStep:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCurrentStepString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXCurrentStepCount:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYStepCount:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite7A:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalStepString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXTotalStepCount:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYStepCount:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXKmIcon:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYKmIcon:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeKm:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlue:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mSportTotalString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXTotalKm:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYTotalKm:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 p3, p12, -0x1

    aget-object p2, p2, p3

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYWeek:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite4D:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 p3, p12, -0x2

    if-gez p3, :cond_1

    const/4 p3, 0x6

    :cond_1
    aget-object p2, p2, p3

    const/high16 p3, 0x42ba0000    # 93.0f

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYWeek:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->WEEKDAYS:[Ljava/lang/String;

    rem-int/lit8 p12, p12, 0x7

    aget-object p2, p2, p12

    const/high16 p3, 0x43680000    # 232.0f

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYWeek:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateSportTotalDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->invalidate()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f0200e8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f020029

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepProgress:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020158

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f020157

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f09007a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXHour:F

    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYHour:F

    const v0, 0x7f09007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mXMinute:F

    const v0, 0x7f09007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYMinute:F

    const v0, 0x7f090080

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterXMiddle:F

    const v0, 0x7f090081

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterYMiddle:F

    const v0, 0x7f09007e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mLeftSecond:F

    const v0, 0x7f09007f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTopSecond:F

    const v0, 0x7f090088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYStepIcon:F

    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYStepCount:F

    const v0, 0x7f090089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYKmIcon:F

    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYTotalKm:F

    const v0, 0x7f09008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterXDate:F

    const v0, 0x7f09008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mCenterYDate:F

    const v0, 0x7f09008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mYWeek:F

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mClipPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f090092

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f09008f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f090090

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepProgress:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f090082

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeHour:F

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeMinute:F

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeMiddle:F

    const v0, 0x7f090083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeSecond:F

    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeDate:F

    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeStep:F

    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mFontSizeKm:F

    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlack:I

    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlue:I

    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite:I

    const v0, 0x7f080012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite7A:I

    const v0, 0x7f080013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite4D:I

    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorBlack7A:I

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintMantekaFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/manteka.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintTekoFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/Teko-Regular.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    const v1, 0x7f090087

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->WEEKDAYS:[Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateStepInfo()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeven$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
