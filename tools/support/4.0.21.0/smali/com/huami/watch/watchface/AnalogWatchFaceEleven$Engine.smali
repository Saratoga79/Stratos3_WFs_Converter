.class Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AnalogWatchFaceEleven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private big_circle:Landroid/graphics/Bitmap;

.field private config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBound:Landroid/graphics/RectF;

.field private mClip:Landroid/graphics/Path;

.field private mClipPathBig:Landroid/graphics/Path;

.field private mClipPathIn:Landroid/graphics/Path;

.field private mCurStepCount:I

.field private mGPaint:Landroid/graphics/Paint;

.field private mGraduation:Landroid/graphics/Bitmap;

.field private mHourBitmap:Landroid/graphics/Bitmap;

.field private mMinBitmap:Landroid/graphics/Bitmap;

.field private mProgressDegreeStep:I

.field private mSecBitmap:Landroid/graphics/Bitmap;

.field private mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

.field private mTotalStepTarget:I

.field final synthetic this$0:Lcom/huami/watch/watchface/AnalogWatchFaceEleven;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceEleven;)V
    .locals 2

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClip:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mCurStepCount:I

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mTotalStepTarget:I

    new-instance p1, Landroid/graphics/RectF;

    const/high16 v0, 0x43a00000    # 320.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBound:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathIn:Landroid/graphics/Path;

    new-instance p1, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine$1;

    invoke-direct {p1, p0}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine$1;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;)V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceEleven;Lcom/huami/watch/watchface/AnalogWatchFaceEleven$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceEleven;)V

    return-void
.end method

.method static synthetic access$102(Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;I)I
    .locals 0

    iput p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mCurStepCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->updateStepInfo()V

    return-void
.end method

.method private decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-virtual {p1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven;->getResources()Landroid/content/res/Resources;

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

.method private updateStepInfo()V
    .locals 4

    iget v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mTotalStepTarget:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mCurStepCount:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mTotalStepTarget:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x43980000    # 304.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mProgressDegreeStep:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBound:Landroid/graphics/RectF;

    const/high16 v2, 0x42ec0000    # 118.0f

    iget v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mProgressDegreeStep:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private updateTotalStepCount()V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven;->getBaseContext()Landroid/content/Context;

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

    iput v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mTotalStepTarget:I

    invoke-direct {p0}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->updateStepInfo()V
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
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-super {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDestroy()V

    return-void
.end method

.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGraduation:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathBig:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathIn:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->big_circle:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super/range {p0 .. p8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/2addr p3, v0

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    div-int/2addr p8, v0

    int-to-float p8, p8

    sub-float p8, p5, p8

    invoke-virtual {p1, p3, p8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v2, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/2addr p3, v0

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p7, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    div-int/2addr p7, v0

    int-to-float p7, p7

    sub-float p7, p5, p7

    invoke-virtual {p1, p3, p7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    iget-object p7, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v2, v2, p7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p4, p2

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p5, p2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClip:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/huami/watch/watchface/AnalogWatchFaceEleven;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v1

    if-eq v1, v10, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const v1, 0x7f020109

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x140

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v11, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v1, 0x7f020110

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f020111

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f020112

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    const v1, 0x7f02010e

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGraduation:Landroid/graphics/Bitmap;

    const-string v1, "guard/shiguanglicheng/watchface_slpt_big_circle.png"

    invoke-direct {v0, v9, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->big_circle:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGPaint:Landroid/graphics/Paint;

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mGPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mClipPathIn:Landroid/graphics/Path;

    const/high16 v2, 0x430e0000    # 142.0f

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/16 v1, 0x12

    new-array v5, v1, [Landroid/graphics/Bitmap;

    move v2, v11

    :goto_1
    if-ge v2, v1, :cond_3

    const-string v3, "guard/chengshijinying/battery_%d.png"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v12, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;

    const/16 v3, 0xe3

    const/16 v4, 0xa0

    const-string v1, "guard/chengshijinying/watchface_default_oval.png"

    invoke-direct {v0, v9, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x43b40000    # 360.0f

    move-object v1, v12

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lcom/huami/watch/watchface/widget/BatteryCircleWidget;-><init>(Landroid/content/res/Resources;II[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V

    new-instance v8, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;

    const/16 v3, 0x5d

    const-string v1, "guard/chengshijinying/watchface_default_oval.png"

    invoke-direct {v0, v9, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x43b40000    # 360.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/huami/watch/watchface/widget/TodayDistanceProgressWidget;-><init>(Landroid/content/res/Resources;IILandroid/graphics/Bitmap;FF)V

    const/16 v1, 0xa

    new-array v2, v1, [Landroid/graphics/Bitmap;

    move v3, v11

    :goto_2
    if-ge v3, v1, :cond_4

    const-string v4, "guard/chengshijinying/step_%d.png"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v9, v4}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/huami/watch/watchface/widget/StepTextWidget;

    const/16 v3, 0xa0

    const/16 v4, 0xfb

    invoke-direct {v1, v3, v4, v2}, Lcom/huami/watch/watchface/widget/StepTextWidget;-><init>(II[Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v12}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    invoke-virtual {v0, v8}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->mStepDataListener:Lcom/huami/watch/watchface/WatchDataListener;

    invoke-virtual {v0, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v10, :cond_6

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v13, 0x3

    const/4 v14, 0x6

    const/16 v15, 0x6e

    const/16 v16, 0x5e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v0, v9, v2}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->getDataWidget(Landroid/content/res/Resources;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/huami/watch/watchface/AnalogWatchFaceEleven$Engine;->updateTotalStepCount()V

    :cond_0
    return-void
.end method
