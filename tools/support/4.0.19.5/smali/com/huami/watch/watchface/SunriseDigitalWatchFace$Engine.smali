.class Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/SunriseDigitalWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private final LINEAR:Landroid/view/animation/LinearInterpolator;

.field private isSlowAnimStart:Z

.field private mAnimCloud:Landroid/animation/ValueAnimator;

.field private mAnimHandler:Landroid/os/Handler;

.field private mAnimSun:Landroid/animation/ValueAnimator;

.field private mBgBmp:Landroid/graphics/Bitmap;

.field private mBmpPaint:Landroid/graphics/Paint;

.field private mClipPath:Landroid/graphics/Path;

.field private mCloud0Bmp:Landroid/graphics/Bitmap;

.field private mCloud1Bmp:Landroid/graphics/Bitmap;

.field private mCloudStartTime:J

.field private mCurrentAnimTime:J

.field private mDatePaint:Landroid/text/TextPaint;

.field private mFgBmp:Landroid/graphics/Bitmap;

.field private mInitAnim:Landroid/animation/ValueAnimator;

.field private mLight:I

.field private mLightBmp:Landroid/graphics/Bitmap;

.field private mLightPaint:Landroid/graphics/Paint;

.field private mPosXCloud0:F

.field private mPosXCloud1:F

.field private mPosXSun:F

.field private mPosYSun:F

.field private mSlowAnimRunnable:Ljava/lang/Runnable;

.field private mSunBmp:Landroid/graphics/Bitmap;

.field private mSunStartTime:J

.field private mTimePaint:Landroid/text/TextPaint;

.field private mWeekPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/huami/watch/watchface/SunriseDigitalWatchFace;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/SunriseDigitalWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLight:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->LINEAR:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimHandler:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->isSlowAnimStart:Z

    new-instance p1, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$5;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSlowAnimRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace;Lcom/huami/watch/watchface/SunriseDigitalWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloudStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloudStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXSun:F

    return p1
.end method

.method static synthetic access$1100(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->startSlowAnim()V

    return-void
.end method

.method static synthetic access$1300(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->isSlowAnimStart:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunX(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosYSun:F

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunY(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->setLight(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud0:F

    return p1
.end method

.method static synthetic access$702(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;F)F
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud1:F

    return p1
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCurrentAnimTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCurrentAnimTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)J
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSunStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;J)J
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSunStartTime:J

    return-wide p1
.end method

.method private cancelSlowAnim()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->isSlowAnimStart:Z

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSlowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method private getSunX(F)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x4298b333    # 76.35f

    mul-float p1, p1, v0

    const v0, 0x41de6666    # 27.8f

    add-float/2addr p1, v0

    return p1
.end method

.method private getSunY(F)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x4298b333    # 76.35f

    mul-float p1, p1, v0

    const/high16 v0, 0x434a0000    # 202.0f

    sub-float/2addr v0, p1

    return v0
.end method

.method private setLight(I)V
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLight:I

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLight:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private startSlowAnim()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->isSlowAnimStart:Z

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSlowAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mClipPath:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBgBmp:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSunBmp:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXSun:F

    iget p5, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosYSun:F

    iget-object p6, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloud0Bmp:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud0:F

    iget-object p5, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloud1Bmp:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud1:F

    iget-object p5, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mFgBmp:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightBmp:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/high16 p4, 0x42c20000    # 97.0f

    const/high16 p5, 0x430a0000    # 138.0f

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/high16 p5, 0x43260000    # 166.0f

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p2, ":"

    const/high16 p3, 0x43190000    # 153.0f

    const/high16 p4, 0x42b20000    # 89.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/SunriseDigitalWatchFace;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace;->getApplicationContext()Landroid/content/Context;

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

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x42a60000    # 83.0f

    const/high16 p4, 0x43050000    # 133.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 9

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v3

    const-string v4, "typeface/AvenirLTStd-Medium.otf"

    invoke-virtual {v3, v4}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const v3, 0x7f090101

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mTimePaint:Landroid/text/TextPaint;

    const/high16 v3, 0x38000000

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v7

    const-string v8, "typeface/Century-Gothic.ttf"

    invoke-virtual {v7, v8}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mDatePaint:Landroid/text/TextPaint;

    const v7, 0x7f090102

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    const v1, 0x7f090103

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v5, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mClipPath:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mClipPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBmpPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/SunriseDigitalWatchFace;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0200ee

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mBgBmp:Landroid/graphics/Bitmap;

    const v0, 0x7f020145

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mFgBmp:Landroid/graphics/Bitmap;

    const v0, 0x7f02014b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightBmp:Landroid/graphics/Bitmap;

    const v0, 0x7f02015d

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mSunBmp:Landroid/graphics/Bitmap;

    const v0, 0x7f0200f4

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloud0Bmp:Landroid/graphics/Bitmap;

    const v0, 0x7f0200f5

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mCloud1Bmp:Landroid/graphics/Bitmap;

    const/high16 p1, 0x43a00000    # 320.0f

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud0:F

    const/high16 p1, 0x430c0000    # 140.0f

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud1:F

    const p1, 0x4021f770

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunX(F)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXSun:F

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunY(F)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosYSun:F

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLight:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimSun:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$1;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, p1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mAnimCloud:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;

    invoke-direct {v1, p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$2;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$3;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;

    invoke-direct {v0, p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine$4;-><init>(Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    const/4 v0, 0x0

    const/high16 v1, 0x430c0000    # 140.0f

    const/high16 v2, 0x43a00000    # 320.0f

    const v3, 0x4021f770

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud0:F

    iput v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud1:F

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunX(F)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXSun:F

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunY(F)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosYSun:F

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mInitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->cancelSlowAnim()V

    iput v2, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud0:F

    iput v1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXCloud1:F

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunX(F)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosXSun:F

    invoke-direct {p0, v3}, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->getSunY(F)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mPosYSun:F

    iget-object p1, p0, Lcom/huami/watch/watchface/SunriseDigitalWatchFace$Engine;->mLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
