.class Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;
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

.field final synthetic this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mClip:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->drawBgFog:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;-><init>(Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;)V

    return-void
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super/range {p0 .. p8}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;->onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p8, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p7, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mClip:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->this$0:Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getWatchFaceConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/huami/watch/watchface/util/WatchFaceConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->drawBgFog:Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x140

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getGraduation()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    const-string v2, "graduation/01/graduation.png"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mGraduation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getTimeHand()Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getHour()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getMinute()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig$TimeHand;->getSeconds()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    move-object v2, v4

    :cond_7
    :goto_1
    if-nez v2, :cond_8

    const-string v2, "timehand/01/hour.png"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    const-string v2, "timehand/01/minute.png"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    const-string v2, "timehand/01/seconds.png"

    invoke-static {v1, v2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int v2, v2, 0xa0

    iget-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iget-object v7, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mHour:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v2, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int v2, v2, 0xa0

    iget-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iget-object v7, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mMinute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v2, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int v2, v2, 0xa0

    iget-object v6, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iget-object v7, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->mSeconds:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v2, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_b
    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->config:Lcom/huami/watch/watchface/util/WatchFaceConfig;

    invoke-virtual {v2}, Lcom/huami/watch/watchface/util/WatchFaceConfig;->getDataWidgets()Ljava/util/ArrayList;

    move-result-object v4

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x34

    const/16 v10, 0x76

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x77

    const/16 v18, 0xbb

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v9, 0xb8

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v15, 0x3

    const/16 v16, 0x6

    const/16 v17, 0x6e

    const/16 v18, 0x5e

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_e

    new-instance v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/16 v9, 0x6e

    const/16 v10, 0x5e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;-><init>(IIIIILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_e
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;

    invoke-virtual {v0, v1, v2}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->getDataWidget(Landroid/content/res/Resources;Lcom/huami/watch/watchface/util/WatchFaceConfigTemplate$DataWidgetConfig;)Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v2}, Lcom/huami/watch/watchface/AnalogWatchFaceFourteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    return-void
.end method
