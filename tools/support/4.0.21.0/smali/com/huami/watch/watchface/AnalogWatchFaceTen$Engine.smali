.class Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AnalogWatchFaceTen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mHourBitmap:Landroid/graphics/Bitmap;

.field private mMinBitmap:Landroid/graphics/Bitmap;

.field private mSecBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/huami/watch/watchface/AnalogWatchFaceTen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceTen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceTen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceTen;Lcom/huami/watch/watchface/AnalogWatchFaceTen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceTen;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-super {p0}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDestroy()V

    return-void
.end method

.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    div-int/lit8 p8, p8, 0x2

    int-to-float p8, p8

    sub-float p8, p5, p8

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float p3, p4, p3

    iget-object p7, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    div-int/lit8 p7, p7, 0x2

    int-to-float p7, p7

    sub-float p7, p5, p7

    iget-object p8, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p7, p8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p5, p3

    iget-object p3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBitmapPaint:Landroid/graphics/Paint;

    const v0, 0x7f020137

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mBgBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f020138

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mHourBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f020139

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mMinBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f02013a

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceTen$Engine;->mSecBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
