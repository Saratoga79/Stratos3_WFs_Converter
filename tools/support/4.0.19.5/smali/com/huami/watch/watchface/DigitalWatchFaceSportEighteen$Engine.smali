.class Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Engine"
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mClip:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;


# direct methods
.method private constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;)V
    .locals 0

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->this$0:Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$AnalogEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mClip:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen;)V

    return-void
.end method


# virtual methods
.method protected onDrawAnalog(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->onDrawWidgets(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mClip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v13, 0x0

    const v0, 0x7f0200e3

    invoke-virtual {v12, v0, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v11, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v11, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x140

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v14, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v15, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v0, "18"

    invoke-direct {v15, v0}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    move v0, v14

    :goto_0
    const/16 v10, 0xa

    const/4 v9, 0x1

    if-ge v0, v10, :cond_0

    const-string v1, "datawidget/font/18/%d.png"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v12, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v15, v2, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    const-string v1, "datawidget/font/18/point.png"

    invoke-static {v12, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    new-instance v6, Lcom/huami/watch/watchface/widget/ImageFont;

    const-string v0, "18_1"

    invoke-direct {v6, v0}, Lcom/huami/watch/watchface/widget/ImageFont;-><init>(Ljava/lang/String;)V

    move v0, v14

    :goto_1
    if-ge v0, v10, :cond_1

    const-string v1, "datawidget/font/18_1/%d.png"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v12, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/huami/watch/watchface/widget/ImageFont;->addChar(CLandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    new-array v7, v0, [Landroid/graphics/Bitmap;

    move v0, v14

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_2

    const-string v1, "datawidget/date_18/en/%d.png"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/huami/watch/watchface/widget/TextDateWidget;

    const/16 v2, 0xd2

    const/16 v3, 0x98

    const/16 v4, 0x3c

    const/16 v5, 0xf

    move-object v0, v8

    move-object v1, v12

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/watchface/widget/TextDateWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v14, v14}, Lcom/huami/watch/watchface/widget/TextDateWidget;->setWeekPosition(II)V

    const/16 v0, 0x2b

    invoke-virtual {v8, v0, v14}, Lcom/huami/watch/watchface/widget/TextDateWidget;->setDatePosition(II)V

    invoke-virtual {v11, v8}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v8, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$1;

    const/16 v3, 0x7f

    const/16 v4, 0x3b

    const/16 v5, 0x42

    const/16 v6, 0x42

    const/4 v7, 0x2

    const/16 v16, 0x0

    const v0, 0x7f0200e5

    invoke-virtual {v12, v0, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object v0, v8

    move-object v1, v11

    move-object v2, v12

    move-object v14, v8

    move/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$1;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0200e4

    invoke-virtual {v12, v0, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14, v13}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBackground(Landroid/graphics/Bitmap;)V

    const/16 v9, 0xa

    invoke-virtual {v14, v9}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setIconTop(I)V

    const/4 v8, 0x4

    invoke-virtual {v14, v8}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setPaddingToDrawable(I)V

    invoke-virtual {v11, v14}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v14, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;

    const/16 v4, 0xc9

    const/4 v7, 0x1

    const v0, 0x7f0200e6

    invoke-virtual {v12, v0, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object v0, v14

    move/from16 v8, v16

    move-object v9, v15

    move-object v15, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine$2;-><init>(Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;Landroid/content/res/Resources;IIIIIILcom/huami/watch/watchface/widget/ImageFont;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14, v13}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setProgressBackground(Landroid/graphics/Bitmap;)V

    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setIconTop(I)V

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;->setPaddingToDrawable(I)V

    invoke-virtual {v11, v14}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_3

    const-string v2, "guard/anyekupao/8C/power/android/%d.png"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;

    const/16 v2, 0x2d

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3, v0}, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;-><init>(II[Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v1}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    new-instance v0, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;

    const/16 v5, 0xa0

    const/16 v6, 0xa0

    new-instance v7, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v7, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v1, 0x7f020106

    invoke-static {v12, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const v1, 0x7f020107

    invoke-static {v12, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const v1, 0x7f020108

    invoke-static {v12, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/huami/watch/watchface/widget/TimeAnalogWidget;-><init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v0}, Lcom/huami/watch/watchface/DigitalWatchFaceSportEighteen$Engine;->addWidget(Lcom/huami/watch/watchface/widget/AbsWatchFaceDataWidget;)V

    return-void
.end method
