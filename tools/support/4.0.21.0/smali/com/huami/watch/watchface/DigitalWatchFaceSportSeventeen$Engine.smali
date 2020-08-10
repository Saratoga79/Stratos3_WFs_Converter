.class Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mClip:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mClip:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;)V

    return-void
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->onDrawWidgets(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mClip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v9, 0x0

    const v0, 0x7f0200e9

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x140

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v1, "17"

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    const/16 v3, 0xa

    const/4 v6, 0x1

    if-ge v1, v3, :cond_0

    const-string v4, "datawidget/font/17/%d.png"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    const-string v4, "datawidget/font/17/colon.png"

    invoke-static {v8, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v1, 0x41

    const-string v4, "datawidget/font/17/A.png"

    invoke-static {v8, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v1, 0x50

    const-string v4, "datawidget/font/17/P.png"

    invoke-static {v8, v4}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    new-instance v1, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;

    const/4 v11, 0x0

    const/16 v12, 0x25

    const/16 v13, 0x75

    const/16 v14, 0xf6

    const/16 v15, 0x5a

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf6

    const/16 v20, 0x2

    move-object v10, v1

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v20}, Lcom/huami/watch/watchface/widget/TimeDigitalWidget;-><init>(IIIIILcom/huami/watch/watchface/widget/ImageFont;IIII)V

    invoke-virtual {v7, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v10, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v0, "17_1"

    invoke-direct {v10, v0}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_1

    const-string v1, "datawidget/font/17_1/%d.png"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v4, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x2f

    const-string v1, "datawidget/font/17_1/separator.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x2d

    const-string v1, "datawidget/font/17_1/minus.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x2e

    const-string v1, "datawidget/font/17_1/point.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x25

    const-string v1, "datawidget/font/17_1/percent.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x20

    const-string v1, "datawidget/font/17_1/space.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x2103

    const-string v1, "datawidget/font/17_1/celsius.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    const/16 v0, 0x2109

    const-string v1, "datawidget/font/17_1/fahrenheit.png"

    invoke-static {v8, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    new-instance v11, Lcom/huami/watch/watchface/widget/DigitDateWidget;

    const/16 v2, 0x64

    const/16 v3, 0x63

    const/4 v4, 0x2

    const v5, 0x7f070020

    move-object v0, v11

    move-object v1, v8

    move v12, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DigitDateWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v11}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v11, Lcom/huami/watch/watchface/widget/DigitDateWidget;

    const/16 v3, 0x3c

    const/4 v4, 0x4

    const/4 v5, -0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DigitDateWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v11}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v23, 0xf

    const/16 v24, 0x45

    const/16 v25, 0x11

    move-object/from16 v21, v0

    move-object/from16 v26, v10

    invoke-direct/range {v21 .. v26}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/WalkDateWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/16 v23, 0xcc

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/huami/watch/watchface/widget/WalkDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x40

    const/16 v3, 0xd2

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/huami/watch/watchface/widget/FatBurnTextWidget;-><init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/huami/watch/watchface/widget/TodayFloorTextWidget;-><init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x80

    const/16 v3, 0x10c

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/huami/watch/watchface/widget/TotalDistanceTextWidget;-><init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/HeartRateTextWidget;

    iget-object v1, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/huami/watch/watchface/widget/HeartRateTextWidget;-><init>(Landroid/content/res/Resources;IILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v7, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v8, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$1;

    iget-object v0, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x76

    const/16 v4, 0xbc

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v8, v9}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->setProgressBackground(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v12}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->setPaddingToDrawable(I)V

    invoke-virtual {v7, v8}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v8, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$2;

    iget-object v0, v7, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;

    invoke-virtual {v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x63

    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    invoke-virtual {v8, v9}, Lcom/huami/watch/watchface/widget/BatteryRemindDateWidget;->setProgressBackground(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/huami/watch/watchface/DigitalWatchFaceSportSeventeen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    return-void
.end method
