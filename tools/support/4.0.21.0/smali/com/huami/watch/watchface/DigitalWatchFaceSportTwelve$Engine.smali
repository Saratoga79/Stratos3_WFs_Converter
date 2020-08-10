.class Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private NUMS:[Landroid/graphics/Bitmap;

.field private NUMS_STEP:[Landroid/graphics/Bitmap;

.field private WEEKS:[Landroid/graphics/Bitmap;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mGPaint:Landroid/graphics/Paint;

.field private mLeftDate:F

.field private mLeftWeek:F

.field private mPaintHuamiFont:Landroid/text/TextPaint;

.field private mStepWidget:Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

.field private mTopDate:F

.field private mTotalStepTarget:I

.field private minus:Landroid/graphics/Bitmap;

.field private stepProgress:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;)V
    .locals 1

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    const/16 p1, 0xa

    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS_STEP:[Landroid/graphics/Bitmap;

    const/4 p1, 0x7

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTotalStepTarget:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;)V

    return-void
.end method

.method private decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;->getResources()Landroid/content/res/Resources;

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

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTotalStepTarget:I

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mStepWidget:Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mStepWidget:Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

    iget v1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTotalStepTarget:I

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;->setTotalStepTarget(I)V
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
    .locals 7

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v3, 0x42880000    # 68.0f

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v4, 0x43030000    # 131.0f

    const/high16 v5, 0x435c0000    # 220.0f

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v6, 0x43130000    # 147.0f

    invoke-virtual {v1, v2, v6, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mDrawTimeIndicator:Z

    if-nez v2, :cond_0

    const-string v2, ":"

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {p6}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43580000    # 216.0f

    const/high16 v4, 0x43500000    # 208.0f

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    div-int/lit8 v2, p10, 0xa

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v2, 0xa

    sub-int v2, p10, v2

    aget-object v2, v3, v2

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    const/high16 v4, 0x41600000    # 14.0f

    add-float/2addr v3, v4

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->minus:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    const/high16 v4, 0x41e00000    # 28.0f

    add-float/2addr v3, v4

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-int/lit8 v2, p11, 0xa

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    const/high16 v5, 0x42280000    # 42.0f

    add-float/2addr v4, v5

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v2, 0xa

    sub-int v2, p11, v2

    aget-object v2, v3, v2

    iget v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    const/high16 v4, 0x42600000    # 56.0f

    add-float/2addr v3, v4

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    add-int/lit8 v4, p12, -0x1

    aget-object v2, v2, v4

    iget v4, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftWeek:F

    iget v5, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-super/range {p0 .. p13}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const v2, 0x7f020140

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ge v4, v5, :cond_0

    const-string v5, "guard/huanyingMC/date_%d.png"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS:[Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v5}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x7f070027

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->WEEKS:[Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v8}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "guard/huanyingMC/date_minus.png"

    invoke-direct {v0, v1, v3}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->minus:Landroid/graphics/Bitmap;

    const v3, 0x7f0900d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftDate:F

    const v3, 0x7f0900d3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mLeftWeek:F

    const v3, 0x7f0900d2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mTopDate:F

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mPaintHuamiFont:Landroid/text/TextPaint;

    invoke-static {}, Lcom/huami/watch/watchface/util/TypefaceManager;->get()Lcom/huami/watch/watchface/util/TypefaceManager;

    move-result-object v4

    const-string v7, "typeface/huamidigital.ttf"

    invoke-virtual {v4, v7}, Lcom/huami/watch/watchface/util/TypefaceManager;->createFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_2

    const-string v4, "guard/huanyingMC/step_num_%d.png"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS_STEP:[Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v4}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const v3, 0x7f02003d

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->stepProgress:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

    const/16 v8, 0x58

    const/16 v9, 0x6b

    const/4 v10, 0x0

    const/4 v11, 0x5

    iget-object v12, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->NUMS_STEP:[Landroid/graphics/Bitmap;

    iget-object v13, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->stepProgress:Landroid/graphics/Bitmap;

    const/high16 v14, -0x3d4c0000    # -90.0f

    const/high16 v15, 0x43b40000    # 360.0f

    const/16 v16, 0xc

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, Lcom/huami/watch/watchface/widget/StepProgressTextWidget;-><init>(IIII[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFI)V

    iput-object v3, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mStepWidget:Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

    const/4 v3, 0x6

    new-array v4, v3, [Landroid/graphics/Bitmap;

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_3

    const-string v7, "guard/huanyingMC/android/battery_%d.png"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;

    const/16 v2, 0xd0

    const/16 v3, 0x26

    invoke-direct {v1, v2, v3, v4}, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;-><init>(II[Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->mStepWidget:Lcom/huami/watch/watchface/widget/StepProgressTextWidget;

    invoke-virtual {v0, v2}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportTwelve$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
