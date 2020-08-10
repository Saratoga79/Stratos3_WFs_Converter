.class Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

.field private drawBgFog:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mClip:Landroid/graphics/Path;

.field private mGraduation:Landroid/graphics/Bitmap;

.field private mHourBitmap:Landroid/graphics/Bitmap;

.field private mMinBitmap:Landroid/graphics/Bitmap;

.field private mSecBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mClip:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->drawBgFog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-super {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDestroy()V

    return-void
.end method

.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mGraduation:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-super/range {p0 .. p8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    div-int/lit8 p8, p8, 0x2

    int-to-float p8, p8

    sub-float p8, p5, p8

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p7, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    sub-float p7, p5, p7

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p7, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p5, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 12

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mClip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->drawBgFog:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const v0, 0x7f0200da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x140

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f02013b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mGraduation:Landroid/graphics/Bitmap;

    const v0, 0x7f02013c

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f02013d

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f02013e

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_5

    new-instance v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0x6e

    const/16 v8, 0x5e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {p0, p1, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->getDataWidget(Landroid/content/res/Resources;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/AnalogWatchFaceThirteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
