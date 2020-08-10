.class Lcom/huami/watch/watchface/ExternalWatchFace$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/ExternalWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mClip:Landroid/graphics/Path;

.field private mGraduation:Landroid/graphics/drawable/Drawable;

.field private mHour:Landroid/graphics/drawable/Drawable;

.field private mMinute:Landroid/graphics/drawable/Drawable;

.field private mSeconds:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/huami/watch/watchface/ExternalWatchFace;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/ExternalWatchFace;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/ExternalWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mClip:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/ExternalWatchFace;Lcom/huami/watch/watchface/ExternalWatchFace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;-><init>(Lcom/huami/watch/watchface/ExternalWatchFace;)V

    return-void
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super/range {p0 .. p8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 12

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mClip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/ExternalWatchFace;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/ExternalWatchFace;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "external_watchface"

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getStatusBarPosY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    div-float/2addr v0, v1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->this$0:Lcom/huami/watch/watchface/ExternalWatchFace;

    invoke-virtual {v1, v0}, Lcom/huami/watch/watchface/ExternalWatchFace;->notifyStatusBarPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x140

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduation()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeHand()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getHour()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getMinute()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getSeconds()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0xa0

    iget-object v3, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0xa0

    iget-object v3, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0xa0

    iget-object v1, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0xa0

    iget-object v3, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeDigital()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "ExternalWatchFace"

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getImageFontInfo()Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/huami/watch/watchface/util/WatchFaceConfig$ImageFontInfo;->parseImageFont()Lcom/huami/watch/watchface/widget/ImageFont;

    move-result-object v9

    new-instance v1, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getModel()I

    move-result v4

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getX()I

    move-result v5

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getY()I

    move-result v6

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getColor()I

    move-result v10

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeDigital;->getGap()I

    move-result v11

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;-><init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;II)V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    :cond_b
    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {p0, p1, v1}, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->getDataWidget(Landroid/content/res/Resources;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/ExternalWatchFace$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method
