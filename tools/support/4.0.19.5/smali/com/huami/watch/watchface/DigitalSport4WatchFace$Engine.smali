.class Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalSport4WatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private cureBackPaint:Landroid/graphics/Paint;

.field private datePaint:Landroid/text/TextPaint;

.field private hourPaint:Landroid/text/TextPaint;

.field private icon_step:Landroid/graphics/Bitmap;

.field private km_icon:Landroid/graphics/Bitmap;

.field private km_left:F

.field private km_top:F

.field private left_hour:F

.field private left_km_text:F

.field private left_minute:F

.field private left_month:F

.field private left_step_img:F

.field private left_step_text:F

.field private left_weekly:F

.field mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mCurStepCount:I

.field private mDest:Landroid/graphics/RectF;

.field private mOldCurStepCount:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStepAnimator:Landroid/animation/ValueAnimator;

.field private mStepCompose:I

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mStepDiff:I

.field private mStepPaint:Landroid/graphics/Paint;

.field private mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTotalStepTarget:I

.field private minutePaint:Landroid/text/TextPaint;

.field private monthPaint:Landroid/text/TextPaint;

.field private stepNumberPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

.field private top_hour:F

.field private top_km_text:F

.field private top_minute:F

.field private top_month:F

.field private top_step_img:F

.field private top_step_text:F

.field private top_weekly:F

.field private totalKMNumber:D

.field private totalKmString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_icon:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->icon_step:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mCurStepCount:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepDiff:I

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mDest:Landroid/graphics/RectF;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKMNumber:D

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKmString:Ljava/lang/String;

    new-instance p1, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I

    new-instance p1, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine$4;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine$4;-><init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Lcom/huami/watch/watchface/DigitalSport4WatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;-><init>(Lcom/huami/watch/watchface/DigitalSport4WatchFace;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepDiff:I

    return p0
.end method

.method static synthetic access$202(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepDiff:I

    return p1
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mCurStepCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKMNumber:D

    return-wide v0
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKMNumber:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->updateSportTotalDistance()V

    return-void
.end method

.method static synthetic access$900(Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private drawBackgroundArc(Landroid/graphics/Canvas;FF)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mRadius:F

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMonthDay(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 3

    const-string v0, ""

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-ge p3, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_month:F

    iget v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_month:F

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStepContent(Landroid/graphics/Canvas;FF)V
    .locals 11

    iget v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mRadius:F

    sub-float v3, p2, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mRadius:F

    sub-float v4, p3, v1

    iget v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mRadius:F

    add-float v5, v1, p2

    iget p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mRadius:F

    add-float v6, p2, p3

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float v8, v0, p2

    iget-object v10, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDistanceUnit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "km"

    return-object v0

    :cond_0
    const-string v0, "mi"

    return-object v0
.end method

.method private updateSportTotalDistance()V
    .locals 4

    const-string v0, "HmWatchFace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSportTotalDistance: totalNumbers :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKMNumber:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKMNumber:D

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->getDistanceUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKmString:Ljava/lang/String;

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I
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

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0, p1, p4, p5}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->drawBackgroundArc(Landroid/graphics/Canvas;FF)V

    invoke-direct {p0, p1, p4, p5}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->drawStepContent(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKmString:Ljava/lang/String;

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_icon:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3, p5, p4, p6}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->access$700(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_left:F

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_icon:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_left:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_top:F

    const/4 p6, 0x0

    invoke-virtual {p1, p2, p3, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKmString:Ljava/lang/String;

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->km_icon:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p9, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3, p5, p4, p9}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->access$800(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_km_text:F

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->totalKmString:Ljava/lang/String;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_km_text:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_km_text:F

    iget-object p9, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    if-ge p8, p3, :cond_0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "0"

    invoke-virtual {p5, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :goto_0
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_hour:F

    iget p8, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_hour:F

    iget-object p9, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->hourPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p5, p8, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p7, p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "0"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_minute:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_minute:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->minutePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->monthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, p10, p11, p2}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->drawMonthDay(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    invoke-virtual {p2}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->getApplicationContext()Landroid/content/Context;

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

    const-string p5, ""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_weekly:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_weekly:F

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->datePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p5, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    iget p7, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    add-int/2addr p5, p7

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->icon_step:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p7, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3, p5, p4, p7}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->access$700(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p2

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->icon_step:Landroid/graphics/Bitmap;

    int-to-float p2, p2

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_step_img:F

    invoke-virtual {p1, p3, p2, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->this$0:Lcom/huami/watch/watchface/DigitalSport4WatchFace;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    iget p6, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    add-int/2addr p5, p6

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->icon_step:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-static {p2, p3, p5, p4, p6}, Lcom/huami/watch/watchface/DigitalSport4WatchFace;->access$800(Lcom/huami/watch/watchface/DigitalSport4WatchFace;Ljava/lang/String;FFLandroid/graphics/Paint;)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_step_text:F

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mOldCurStepCount:I

    iget p4, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mStepCompose:I

    add-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->mTotalStepTarget:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->left_step_text:F

    iget p4, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->top_step_text:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->stepNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->updateSportTotalDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->invalidate()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 1

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    new-instance p1, Ljava/lang/VerifyError;

    const-string v0, "bad dex opcode"

    invoke-direct {p1, v0}, Ljava/lang/VerifyError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalSport4WatchFace$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
