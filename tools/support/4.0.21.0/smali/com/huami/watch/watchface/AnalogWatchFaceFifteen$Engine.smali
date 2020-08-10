.class Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

.field private drawBgFog:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mClip:Landroid/graphics/Path;

.field private mGraduation:Landroid/graphics/drawable/Drawable;

.field private mHour:Landroid/graphics/drawable/Drawable;

.field private mMinute:Landroid/graphics/drawable/Drawable;

.field private mSeconds:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mClip:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->drawBgFog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;)V

    return-void
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 0

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mClip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->drawBgFog:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const v0, 0x7f0200d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x140

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduation()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    const-string v0, "graduation/06/graduation.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeHand()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getHour()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getMinute()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getSeconds()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    :cond_6
    if-nez v0, :cond_7

    const-string v0, "timehand/04/hour.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    const-string v0, "timehand/04/minute.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    const-string v0, "timehand/04/seconds.png"

    invoke-static {p1, v0}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    rsub-int p1, p1, 0xa0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    rsub-int p1, p1, 0xa0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    rsub-int p1, p1, 0xa0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFifteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    return-void
.end method
