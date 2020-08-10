.class Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private batteryDrawable:Landroid/graphics/drawable/Drawable;

.field private hourPaint:Landroid/graphics/Paint;

.field private image_background:Landroid/graphics/Bitmap;

.field private image_battery:Landroid/graphics/Bitmap;

.field private image_kaluli:Landroid/graphics/Bitmap;

.field private image_step:Landroid/graphics/Bitmap;

.field private img_step_centerX:F

.field private img_step_total_centerX:F

.field private left_battery_img:F

.field private left_battery_text:F

.field private left_battery_unit_text:F

.field private left_hour:F

.field private left_kaluli_img:F

.field private left_kaluli_number:F

.field private left_kaluli_unit:F

.field private left_minute:F

.field private left_month:F

.field private left_step_img:F

.field private left_step_number:F

.field private left_step_unit:F

.field private left_weekly:F

.field private mAmBitmap:Landroid/graphics/Bitmap;

.field private mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mBound:Landroid/graphics/RectF;

.field private mCurStepCount:I

.field private mLeftAm:F

.field private mOldCurStepCount:I

.field private mPmBitmap:Landroid/graphics/Bitmap;

.field private mProgressBattery:I

.field private mProgressDegreeBattery:I

.field private mProgressDegreeStep:I

.field private mRadius:F

.field private mSportTodayDistance:D

.field private mSportTodayString:Ljava/lang/String;

.field private mStepAnimator:Landroid/animation/ValueAnimator;

.field private mStepCompose:I

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepDiff:I

.field private mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTopAm:F

.field private mTotalStepTarget:I

.field private minutePaint:Landroid/graphics/Paint;

.field private needUnit:Z

.field private numberPaint:Landroid/graphics/Paint;

.field private paintBatterUnit:Landroid/graphics/Paint;

.field private paintKaluliUnit:Landroid/graphics/Paint;

.field private paint_arc_battery:Landroid/graphics/Paint;

.field private paint_arc_kaluli:Landroid/graphics/Paint;

.field private paint_arc_step:Landroid/graphics/Paint;

.field private paint_battery:Landroid/graphics/Paint;

.field private paint_bg:Landroid/graphics/Paint;

.field private step:Ljava/lang/String;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;

.field private top_battery_img:F

.field private top_battery_text:F

.field private top_hour:F

.field private top_kaluli_img:F

.field private top_kaluli_number:F

.field private top_minute:F

.field private top_month:F

.field private top_step_img:F

.field private top_step_number:F

.field private top_weekly:F

.field private weeklyPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mBound:Landroid/graphics/RectF;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    const-string p1, "--"

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mCurStepCount:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepDiff:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->needUnit:Z

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mBatteryDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mTotalStepTarget:I

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$4;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$4;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine$5;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepDiff:I

    return p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepDiff:I

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mCurStepCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->updateBatteryLevel(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->updateSportTodayDistance()V

    return-void
.end method

.method static synthetic access$800(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private drawBatteryArc(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressDegreeBattery:I

    int-to-float v7, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v2, p2, v0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v3, p3, v0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v4, p2, v0

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v5, p3, p2

    iget-object v9, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_arc_battery:Landroid/graphics/Paint;

    const/high16 v6, -0x3cfa0000    # -134.0f

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawKaluLiArc(Landroid/graphics/Canvas;FF)V
    .locals 11

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x429a0000    # 77.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v3, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v4, p3, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v5, v1, p2

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v6, p2, p3

    int-to-float v8, v0

    iget-object v10, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_arc_kaluli:Landroid/graphics/Paint;

    const/high16 v7, 0x43010000    # 129.0f

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMonthDay(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_month:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_month:F

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStepArc(Landroid/graphics/Canvas;FF)V
    .locals 11

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressDegreeStep:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v3, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    sub-float v4, p3, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v5, v1, p2

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mRadius:F

    add-float v6, p2, p3

    neg-int p2, v0

    int-to-float v8, p2

    iget-object v10, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_arc_step:Landroid/graphics/Paint;

    const/high16 v7, 0x424c0000    # 51.0f

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDistanceUnit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "km"

    return-object v0

    :cond_0
    const-string v0, "mi"

    return-object v0
.end method

.method private getUnitLeftPosX(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Paint;Ljava/lang/String;F)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p3, p4}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p1, p5

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

    iput p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressBattery:I

    const/high16 p2, 0x42ae0000    # 87.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressDegreeBattery:I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressBattery:I

    goto :goto_0

    return-void
.end method

.method private updateSportTodayDistance()V
    .locals 4

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide v2, 0x4053400000000000L    # 77.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressDegreeStep:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayDistance:D

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mTotalStepTarget:I
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
.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget p2, v2, p1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mBound:Landroid/graphics/RectF;

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->image_background:Landroid/graphics/Bitmap;

    iget-object v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mBound:Landroid/graphics/RectF;

    iget-object v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_bg:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressBattery:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_battery_img:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_battery_img:F

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_battery_text:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_battery_text:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_battery:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_battery:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mProgressBattery:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v8

    iput v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_battery_unit_text:F

    const-string v0, "%"

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_battery_unit_text:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_battery_text:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintBatterUnit:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->drawBatteryArc(Landroid/graphics/Canvas;FF)V

    invoke-static/range {p8 .. p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_hour:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_hour:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->hourPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static/range {p7 .. p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_minute:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_minute:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->minutePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    packed-switch p13, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mPmBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mAmBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mLeftAm:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mTopAm:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paint_bg:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {v6, v7, v1, v2, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->drawMonthDay(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p12, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_weekly:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_weekly:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->weeklyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->image_kaluli:Landroid/graphics/Bitmap;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_img:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_kaluli_img:F

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->needUnit:Z

    const/high16 v11, 0x40400000    # 3.0f

    if-eqz v0, :cond_0

    iget-object v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iget v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    iget-object v4, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->step:Ljava/lang/String;

    iget v5, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->img_step_centerX:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getUnitLeftPosX(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_unit:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_unit:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_kaluli_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->step:Ljava/lang/String;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_unit:F

    add-float/2addr v1, v11

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_kaluli_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_0
    iget-object v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iget v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    const-string v4, ""

    iget v5, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->img_step_centerX:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getUnitLeftPosX(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_unit:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mOldCurStepCount:I

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mStepCompose:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_kaluli_unit:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_kaluli_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    goto :goto_2

    :goto_3
    invoke-direct {v6, v7, v8, v9}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->drawKaluLiArc(Landroid/graphics/Canvas;FF)V

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->image_step:Landroid/graphics/Bitmap;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_img:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_step_img:F

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->needUnit:Z

    if-eqz v0, :cond_1

    iget-object v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    iget-object v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    invoke-direct {v6}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v4

    iget v5, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->img_step_total_centerX:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getUnitLeftPosX(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_unit:F

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_unit:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_step_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct {v6}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_unit:F

    add-float/2addr v1, v11

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_step_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_1
    iget-object v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    iget-object v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->paintKaluliUnit:Landroid/graphics/Paint;

    const-string v4, ""

    iget v5, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->img_step_total_centerX:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->getUnitLeftPosX(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Paint;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_unit:F

    iget-object v0, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->mSportTodayString:Ljava/lang/String;

    iget v1, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->left_step_unit:F

    iget v2, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->top_step_number:F

    iget-object v3, v6, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->numberPaint:Landroid/graphics/Paint;

    goto :goto_4

    :goto_5
    invoke-direct {v6, v7, v8, v9}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->drawStepArc(Landroid/graphics/Canvas;FF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->updateSportTodayDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->invalidate()V

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

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwo$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
