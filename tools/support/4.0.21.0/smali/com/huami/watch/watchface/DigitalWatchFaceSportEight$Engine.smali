.class Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private NUMS:[Landroid/graphics/Bitmap;

.field private WEEKS:[Landroid/graphics/Bitmap;

.field private big_circle:Landroid/graphics/Bitmap;

.field private hourFormat12:Z

.field private mAmBitmap:Landroid/graphics/Bitmap;

.field private mBound:Landroid/graphics/RectF;

.field private mClipPathBig:Landroid/graphics/Path;

.field private mClipPathSmall:Landroid/graphics/Path;

.field private mColorRed:I

.field private mColorWhite:I

.field private mCurStepCount:I

.field private mGPaint:Landroid/graphics/Paint;

.field private mLeftAm:F

.field private mLeftDate:F

.field private mLeftWeek:F

.field private mPaintHuamiFont:Landroid/text/TextPaint;

.field private mPmBitmap:Landroid/graphics/Bitmap;

.field private mProgressDegreeStep:I

.field private mSportTodayDistance:D

.field private mSportTotalDistance:I

.field private mSportTotalDistanceKm:D

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTopAm:F

.field private mTopDate:F

.field private mTopWeek:F

.field private mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTotalKmIcon:Landroid/graphics/Bitmap;

.field private mTotalStepTarget:I

.field private minus:Landroid/graphics/Bitmap;

.field private small_circle:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

.field private unit:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;)V
    .locals 3

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mCurStepCount:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalStepTarget:I

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43a00000    # 320.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mBound:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    iput-boolean p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$2;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    new-instance p1, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine$3;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateStepInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)D
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTodayDistance:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTodayDistance:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateSportTodayDistance()V

    return-void
.end method

.method static synthetic access$502(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;D)D
    .locals 0

    iput-wide p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTotalDistanceKm:D

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)I
    .locals 0

    iget p0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTotalDistance:I

    return p0
.end method

.method static synthetic access$700(Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateSportTotalDistance()V

    return-void
.end method

.method private decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p2
.end method

.method private updateSportTodayDistance()V
    .locals 4

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTodayDistance:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4073000000000000L    # 304.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mBound:Landroid/graphics/RectF;

    int-to-float v0, v0

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateSportTotalDistance()V
    .locals 2

    iget-wide v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTotalDistanceKm:D

    double-to-int v0, v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTotalDistance:I

    return-void
.end method

.method private updateStepInfo()V
    .locals 4

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x43980000    # 304.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mProgressDegreeStep:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v2, 0x42ec0000    # 118.0f

    iget v3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mProgressDegreeStep:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateStepInfo()V
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
.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDestroy()V

    return-void
.end method

.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mColorWhite:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 p4, 0x43200000    # 160.0f

    const/high16 p5, 0x431e0000    # 158.0f

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mColorRed:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 p5, 0x438c0000    # 280.0f

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    if-eqz p2, :cond_0

    packed-switch p13, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPmBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mAmBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftAm:F

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopAm:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    div-int/lit8 p2, p10, 0xa

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    aget-object p3, p3, p2

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p10, p2

    aget-object p2, p3, p10

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    const/high16 p4, 0x41200000    # 10.0f

    add-float/2addr p3, p4

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->minus:Landroid/graphics/Bitmap;

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    const/high16 p4, 0x41a00000    # 20.0f

    add-float/2addr p3, p4

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-int/lit8 p2, p11, 0xa

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    aget-object p3, p3, p2

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    const/high16 p5, 0x41f00000    # 30.0f

    add-float/2addr p4, p5

    iget p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    iget-object p6, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p11, p2

    aget-object p2, p3, p11

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    const/high16 p4, 0x42200000    # 40.0f

    add-float/2addr p3, p4

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    add-int/lit8 p12, p12, -0x1

    aget-object p2, p2, p12

    iget p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftWeek:F

    iget p4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopWeek:F

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    const/high16 p3, 0x425c0000    # 55.0f

    const/high16 p4, 0x42fe0000    # 127.0f

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mSportTotalDistance:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    mul-int/lit8 p4, p3, 0xa

    add-int/lit8 p5, p4, 0x20

    const/4 p6, 0x2

    div-int/2addr p5, p6

    rsub-int/lit8 p5, p5, 0x46

    const/4 p7, 0x0

    :goto_2
    const/16 p8, 0xa6

    if-ge p7, p3, :cond_1

    iget-object p9, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    invoke-virtual {p2, p7}, Ljava/lang/String;->charAt(I)C

    move-result p10

    add-int/lit8 p10, p10, -0x30

    aget-object p9, p9, p10

    mul-int/lit8 p10, p7, 0xa

    add-int/2addr p10, p5

    int-to-float p10, p10

    int-to-float p8, p8

    iget-object p11, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p9, p10, p8, p11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    add-int/2addr p4, p5

    int-to-float p3, p4

    int-to-float p4, p8

    iget-object p5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->big_circle:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->save(I)I

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mClipPathSmall:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->small_circle:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHourFormatChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->getHourFormat()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    const v0, 0x7f090043

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopWeek:F

    goto :goto_2

    :cond_1
    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    const v0, 0x7f090042

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->invalidate()V

    return-void
.end method

.method protected onMeasurementChanged(I)V
    .locals 2

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->getMeasurement()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v0, 0x7f070023

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const v0, 0x7f070024

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateSportTodayDistance()V

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateSportTotalDistance()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->invalidate()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->getHourFormat()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    const-string v0, "guard/shiguanglicheng/watchface_slpt_icon_km.png"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalKmIcon:Landroid/graphics/Bitmap;

    move v0, v1

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    const-string v3, "guard/shiguanglicheng/watchface_slpt_number_%d.png"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->NUMS:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_2
    const/4 v4, 0x7

    if-ge v3, v4, :cond_2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "guard/shiguanglicheng/watchface_slpt_number_minus.png"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->minus:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->getMeasurement()I

    move-result v0

    if-eq v0, v2, :cond_3

    const v0, 0x7f070023

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->unit:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_3
    const v0, 0x7f070024

    goto :goto_3

    :goto_4
    const-string v0, "guard/shiguanglicheng/watchface_slpt_big_circle.png"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->big_circle:Landroid/graphics/Bitmap;

    const-string v0, "guard/shiguanglicheng/watchface_slpt_small_circle.png"

    invoke-direct {p0, p1, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->small_circle:Landroid/graphics/Bitmap;

    const v0, 0x7f09003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftDate:F

    const v0, 0x7f090041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftWeek:F

    iget-boolean v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->hourFormat12:Z

    if-eqz v0, :cond_4

    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    const v0, 0x7f090043

    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopWeek:F

    goto :goto_6

    :cond_4
    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopDate:F

    const v0, 0x7f090042

    goto :goto_5

    :goto_6
    const v0, 0x7f020150

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mAmBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f020151

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPmBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mLeftAm:F

    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTopAm:F

    const/high16 p1, -0x10000

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mColorRed:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mColorWhite:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v0

    const-string v1, "typeface/HUAMI8CSPORT.ttf"

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v0, 0x43230000    # 163.0f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTodayDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->mTotalDistanceDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEight$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
