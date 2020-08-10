.class Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private WEEKDAYS:[Ljava/lang/String;

.field private mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mBatteryLevel:I

.field private mBatteryProgress:Landroid/graphics/drawable/Drawable;

.field private mBatteryString:Ljava/lang/String;

.field private mBound:Landroid/graphics/RectF;

.field private mColorGreen:I

.field private mColorWhiteCC:I

.field private mCurStepCount:I

.field private mFontSizeBattery:F

.field private mFontSizeDate:F

.field private mFontSizeStep:F

.field private mFontSizeTime:F

.field private mGPaint:Landroid/graphics/Paint;

.field private mPaintHuamiTime2Font:Landroid/text/TextPaint;

.field private mPaintHuamiTimeFont:Landroid/text/TextPaint;

.field private mPaintWeek:Landroid/text/TextPaint;

.field private mPathStepBarBg:Landroid/graphics/Path;

.field private mPathStepBarFg:Landroid/graphics/Path;

.field private mProgressDegreeStep:I

.field private mStepBarBg:Landroid/graphics/Bitmap;

.field private mStepBarFg:Landroid/graphics/Bitmap;

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepIcon:Landroid/graphics/Bitmap;

.field private mStepString:Ljava/lang/String;

.field private mTotalStepTarget:I

.field private mXBatteryString:F

.field private mXDate:F

.field private mXMiddle:F

.field private mXMinute:F

.field private mXStepIcon:F

.field private mXStepString:F

.field private mXWeek:F

.field private mXtHour:F

.field private mYBatteryString:F

.field private mYDate:F

.field private mYHour:F

.field private mYMiddle:F

.field private mYMinute:F

.field private mYStepIcon:F

.field private mYStepString:F

.field private mYWeek:F

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mTotalStepTarget:I

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepString:Ljava/lang/String;

    new-instance p1, Landroid/graphics/RectF;

    const/high16 v0, 0x43a00000    # 320.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBound:Landroid/graphics/RectF;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->updateBatteryLevel(II)V

    return-void
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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryString:Ljava/lang/String;

    const/high16 p2, 0x41880000    # 17.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryLevel:I

    goto :goto_1

    :cond_0
    const-string p1, "--%"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryString:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryProgress:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryLevel:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private updateStepInfo()V
    .locals 6

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeStep:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v1, 0x40800000    # 4.0f

    add-float v2, v0, v1

    iget-object v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepString:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, -0x41000000    # -0.5f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXStepIcon:F

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXStepIcon:F

    add-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXStepString:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mTotalStepTarget:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x439e0000    # 316.0f

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mProgressDegreeStep:I

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v2, -0x3c890000    # -247.0f

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mProgressDegreeStep:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, -0x3c620000    # -316.0f

    iget v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mProgressDegreeStep:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v0, v2, v3, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->updateStepInfo()V
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

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXtHour:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYHour:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXMinute:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYMinute:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mDrawTimeIndicator:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p2, ":"

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXMiddle:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYMiddle:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeDate:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorWhiteCC:I

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

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXDate:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYDate:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->WEEKDAYS:[Ljava/lang/String;

    add-int/lit8 p12, p12, -0x1

    aget-object p2, p2, p12

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXWeek:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYWeek:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintWeek:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeBattery:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXBatteryString:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYBatteryString:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXStepIcon:F

    add-float/2addr p3, p4

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYStepIcon:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorGreen:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeStep:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXStepString:F

    add-float/2addr p3, p4

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYStepString:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    sget-object p4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepBarBg:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepBarFg:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f020152

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepIcon:Landroid/graphics/Bitmap;

    const v1, 0x7f020153

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepBarFg:Landroid/graphics/Bitmap;

    const v1, 0x7f020154

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepBarBg:Landroid/graphics/Bitmap;

    const v0, 0x7f020016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryProgress:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarFg:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPathStepBarBg:Landroid/graphics/Path;

    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXtHour:F

    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYHour:F

    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXMinute:F

    const v0, 0x7f090049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYMinute:F

    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXMiddle:F

    const v0, 0x7f09004b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYMiddle:F

    const v0, 0x7f09004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXBatteryString:F

    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYBatteryString:F

    const v0, 0x7f090052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXDate:F

    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYDate:F

    const v0, 0x7f090054

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mXWeek:F

    const v0, 0x7f090055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYWeek:F

    const v0, 0x7f090057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYStepIcon:F

    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mYStepString:F

    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f09004f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090050

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f090051

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryProgress:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeTime:F

    const v0, 0x7f09005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeStep:F

    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeBattery:F

    const v0, 0x7f09005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeDate:F

    const v0, 0x7f08000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorWhiteCC:I

    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorGreen:I

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorGreen:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mFontSizeTime:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTimeFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/huamitime.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintHuamiTime2Font:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v2

    const-string v3, "typeface/huamitime2.ttf"

    invoke-virtual {v2, v3}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintWeek:Landroid/text/TextPaint;

    const v1, 0x7f09005b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintWeek:Landroid/text/TextPaint;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mColorWhiteCC:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mPaintWeek:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->WEEKDAYS:[Ljava/lang/String;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportFive$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
