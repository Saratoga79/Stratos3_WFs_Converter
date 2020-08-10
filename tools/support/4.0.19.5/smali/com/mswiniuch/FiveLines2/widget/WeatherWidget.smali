.class public Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;
.super Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;
.source "WeatherWidget.java"


# instance fields
.field private cityBool:Z

.field private cityLeft:F

.field private cityPaint:Landroid/text/TextPaint;

.field private cityTop:F

.field private humidityBool:Z

.field private humidityLeft:F

.field private humidityPaint:Landroid/text/TextPaint;

.field private humidityTop:F

.field private imgLeft:F

.field private imgTop:F

.field private mService:Landroid/app/Service;

.field private showUnits:Z

.field private temperatureAlignLeftBool:Z

.field private temperatureBool:Z

.field private textLeft:F

.field private textPaint:Landroid/text/TextPaint;

.field private textTop:F

.field private uvBool:Z

.field private uvLeft:F

.field private uvPaint:Landroid/text/TextPaint;

.field private uvTop:F

.field private weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

.field private weatherBool:Z

.field private weatherImage:Landroid/graphics/drawable/Drawable;

.field private weatherImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private windDirectionAsArrowBool:Z

.field private windDirectionBool:Z

.field private windDirectionLeft:F

.field private windDirectionPaint:Landroid/text/TextPaint;

.field private windDirectionTop:F

.field private windStrengthBool:Z

.field private windStrengthLeft:F

.field private windStrengthPaint:Landroid/text/TextPaint;

.field private windStrengthTop:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;-><init>()V

    return-void
.end method

.method private temperatureIntPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 389
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 390
    aget-object p1, p1, v0

    return-object p1
.end method


# virtual methods
.method public buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            ")",
            "Ljava/util/List<",
            "Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 396
    iput-object v1, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->mService:Landroid/app/Service;

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 404
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xf

    .line 405
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v4, v3

    div-int/lit16 v4, v4, 0x3e8

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v3, v4

    add-long/2addr v6, v3

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->getSlptWeather()Lcom/mswiniuch/FiveLines2/data/WeatherData;

    move-result-object v3

    iput-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    .line 416
    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v3, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    const/16 v4, 0x16

    if-ltz v3, :cond_0

    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v3, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    if-le v3, v4, :cond_1

    .line 417
    :cond_0
    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iput v4, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    .line 419
    :cond_1
    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v3, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    if-ltz v3, :cond_2

    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v3, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    if-le v3, v4, :cond_3

    .line 420
    :cond_2
    iget-object v3, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iput v4, v3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    .line 424
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "sunny"

    .line 425
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "cloudy"

    .line 426
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "overcast"

    .line 427
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "fog"

    .line 428
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "fog"

    .line 429
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "showers"

    .line 430
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "t_storm"

    .line 431
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rain"

    .line 432
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rain"

    .line 433
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rainstorm"

    .line 434
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rainstorm"

    .line 435
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "showers"

    .line 436
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rainsnow"

    .line 437
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rainsnow"

    .line 438
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "rainsnow"

    .line 439
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "snow"

    .line 440
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "snow"

    .line 441
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "snow"

    .line 442
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "snow"

    .line 443
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "fog"

    .line 444
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "fog"

    .line 445
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "fog"

    .line 446
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "unknown"

    .line 447
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f03002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    const v9, 0x7f04005e

    const v10, 0x7f050066

    if-eqz v8, :cond_4

    .line 453
    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v11, "F2CB"

    .line 454
    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v8, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(C)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget-object v13, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v12, v13}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 455
    invoke-virtual {v8, v5, v11, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    .line 460
    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 463
    :cond_4
    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-wide/16 v11, 0x0

    cmp-long v8, v6, v11

    const/4 v11, 0x0

    const-wide/16 v12, 0x1c20

    if-eqz v8, :cond_7

    .line 464
    iget-object v14, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-wide v14, v14, Lcom/mswiniuch/FiveLines2/data/WeatherData;->timeStampInSeconds:J

    sub-long v14, v6, v14

    cmp-long v14, v14, v12

    if-lez v14, :cond_5

    goto :goto_1

    .line 468
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v15, v15, Lcom/mswiniuch/FiveLines2/data/WeatherData;->tempString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v12, 0x7f03002d

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    invoke-virtual {v12}, Lcom/mswiniuch/FiveLines2/data/WeatherData;->getUnits()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_6
    const-string v12, ""

    :goto_0
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    move v12, v11

    goto :goto_3

    .line 465
    :cond_7
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v13, v13, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f03002d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    invoke-virtual {v13}, Lcom/mswiniuch/FiveLines2/data/WeatherData;->getUnits()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_8
    const-string v13, ""

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const/16 v12, 0xa

    .line 474
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 473
    invoke-virtual {v5, v13, v9, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    .line 478
    invoke-virtual {v4, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v5, 0x2

    .line 481
    iput-byte v5, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 482
    iput-byte v11, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f050067

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v12

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f03002c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit16 v9, v9, 0x280

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 487
    invoke-virtual {v4, v9, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v9, -0x140

    .line 495
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f050068

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08000c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v14, v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float v14, v14, v10

    sub-float/2addr v12, v14

    float-to-int v10, v12

    .line 493
    invoke-virtual {v4, v9, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f03002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_a

    iput-boolean v11, v4, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 500
    :cond_a
    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v10, 0x1

    if-eqz v8, :cond_c

    .line 501
    iget-object v8, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-wide v12, v8, Lcom/mswiniuch/FiveLines2/data/WeatherData;->timeStampInSeconds:J

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x1c20

    cmp-long v6, v6, v12

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    const-string v6, "slpt_weather/weather_%s.png"

    .line 505
    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v8, v8, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    move v3, v11

    goto :goto_5

    :cond_c
    :goto_4
    const-string v6, "slpt_weather/weather_%s.png"

    .line 502
    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget v8, v8, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/16 v3, 0xa

    .line 509
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v3

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f050075

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 508
    invoke-virtual {v9, v6, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f030037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_d

    iput-boolean v11, v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    .line 515
    :cond_d
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 516
    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 517
    iget-object v7, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v7, v7, Lcom/mswiniuch/FiveLines2/data/WeatherData;->city:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f040026

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 519
    invoke-virtual {v3, v6, v8, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 525
    iput-byte v5, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 526
    iput-byte v11, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f050035

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v13, v6

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f030010

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_e

    mul-int/lit8 v13, v13, 0x2

    add-int/lit16 v13, v13, 0x280

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 530
    invoke-virtual {v3, v13, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v13, -0x140

    .line 538
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f050036

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float v8, v8, v7

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 536
    invoke-virtual {v3, v13, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_f

    iput-boolean v11, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 543
    :cond_f
    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 544
    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 545
    iget-object v8, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v8, v8, Lcom/mswiniuch/FiveLines2/data/WeatherData;->humidity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f04003a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 547
    invoke-virtual {v6, v7, v12, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 553
    iput-byte v5, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 554
    iput-byte v11, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f05004f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v13, v7

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f03001e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_10

    mul-int/lit8 v13, v13, 0x2

    add-int/lit16 v13, v13, 0x280

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 558
    invoke-virtual {v6, v13, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v13, -0x140

    .line 566
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f050050

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    mul-float v12, v12, v8

    sub-float/2addr v7, v12

    float-to-int v7, v7

    .line 564
    invoke-virtual {v6, v13, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f03001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_11

    iput-boolean v11, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 571
    :cond_11
    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 572
    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 573
    iget-object v12, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v12, v12, Lcom/mswiniuch/FiveLines2/data/WeatherData;->uv:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f050071

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040065

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 575
    invoke-virtual {v7, v8, v13, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 581
    iput-byte v5, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 582
    iput-byte v11, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f050072

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v13, v8

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f030036

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_12

    mul-int/lit8 v13, v13, 0x2

    add-int/lit16 v13, v13, 0x280

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 586
    invoke-virtual {v7, v13, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v13, -0x140

    .line 594
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f050073

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float v14, v14, v10

    sub-float/2addr v8, v14

    float-to-int v8, v8

    .line 592
    invoke-virtual {v7, v13, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f030035

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_13

    iput-boolean v11, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 599
    :cond_13
    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 600
    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f03003b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_14

    iget-object v13, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v13, v13, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windArrow:Ljava/lang/String;

    goto :goto_6

    :cond_14
    iget-object v13, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v13, v13, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    :goto_6
    invoke-virtual {v10, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v8, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f050079

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v12, 0x7f040069

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 603
    invoke-virtual {v8, v10, v12, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 609
    iput-byte v5, v8, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 610
    iput-byte v11, v8, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f05007a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f03003c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_15

    mul-int/lit8 v10, v10, 0x2

    add-int/lit16 v10, v10, 0x280

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 614
    invoke-virtual {v8, v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v10, -0x140

    .line 622
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f05007b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    mul-float v14, v14, v13

    sub-float/2addr v12, v14

    float-to-int v12, v12

    .line 620
    invoke-virtual {v8, v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f03003a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_16

    iput-boolean v11, v8, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 627
    :cond_16
    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 628
    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    .line 629
    iget-object v13, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v13, v13, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windStrength:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v10, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050071

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040065

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 631
    invoke-virtual {v10, v12, v13, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 637
    iput-byte v5, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 638
    iput-byte v11, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f05007d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f03003e

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_17

    mul-int/lit8 v13, v13, 0x2

    add-int/lit16 v13, v13, 0x280

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f05007c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 642
    invoke-virtual {v10, v13, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v13, -0x140

    .line 650
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f05007e

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f08000c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f05007c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    mul-float v12, v12, v14

    sub-float/2addr v2, v12

    float-to-int v2, v2

    .line 648
    invoke-virtual {v10, v13, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_18

    iput-boolean v11, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    :cond_18
    const/4 v1, 0x7

    .line 654
    new-array v1, v1, [Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    aput-object v4, v1, v11

    const/4 v2, 0x1

    aput-object v9, v1, v2

    aput-object v3, v1, v5

    const/4 v2, 0x3

    aput-object v6, v1, v2

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    const/4 v2, 0x6

    aput-object v10, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/16 p3, 0xf

    .line 226
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/16 p4, 0x10

    invoke-virtual {p2, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p3, p2

    div-int/lit16 p3, p3, 0x3e8

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    const-wide/16 v0, 0x3e8

    div-long/2addr p4, v0

    int-to-long p2, p3

    add-long/2addr p4, p2

    .line 234
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureBool:Z

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1c20

    if-eqz p2, :cond_3

    .line 235
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->showUnits:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    invoke-virtual {p2}, Lcom/mswiniuch/FiveLines2/data/WeatherData;->getUnits()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    cmp-long p3, p4, v0

    if-eqz p3, :cond_2

    .line 236
    iget-object p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-wide v4, p3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->timeStampInSeconds:J

    sub-long v4, p4, v4

    cmp-long p3, v4, v2

    if-lez p3, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    invoke-virtual {v4}, Lcom/mswiniuch/FiveLines2/data/WeatherData;->getTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 237
    :cond_2
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object v4, v4, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastString:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textLeft:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr p3, v4

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    :cond_3
    :goto_2
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityBool:Z

    if-eqz p2, :cond_4

    .line 245
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->city:Ljava/lang/String;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    :cond_4
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityBool:Z

    if-eqz p2, :cond_5

    .line 250
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->humidity:Ljava/lang/String;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :cond_5
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvBool:Z

    if-eqz p2, :cond_6

    .line 255
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->uv:Ljava/lang/String;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    :cond_6
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionBool:Z

    if-eqz p2, :cond_8

    .line 260
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionAsArrowBool:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windArrow:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windDirection:Ljava/lang/String;

    :goto_3
    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    :cond_8
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthBool:Z

    if-eqz p2, :cond_9

    .line 265
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-object p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->windStrength:Ljava/lang/String;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthLeft:F

    iget v4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthTop:F

    iget-object v5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    :cond_9
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherBool:Z

    if-eqz p2, :cond_10

    cmp-long p2, p4, v0

    const/16 p3, 0x16

    if-eqz p2, :cond_d

    .line 270
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget-wide v0, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->timeStampInSeconds:J

    sub-long/2addr p4, v0

    cmp-long p2, p4, v2

    if-lez p2, :cond_a

    goto :goto_4

    .line 277
    :cond_a
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    if-gt p2, p3, :cond_b

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    if-gez p2, :cond_c

    .line 278
    :cond_b
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iput p3, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    .line 280
    :cond_c
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    iget-object p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p3, p3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->weatherType:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgLeft:F

    float-to-int p3, p3

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgTop:F

    float-to-int p4, p4

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgLeft:F

    float-to-int p5, p5

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgTop:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    .line 271
    :cond_d
    :goto_4
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    if-gt p2, p3, :cond_e

    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p2, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    if-gez p2, :cond_f

    .line 272
    :cond_e
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iput p3, p2, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    .line 274
    :cond_f
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    iget-object p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    iget p3, p3, Lcom/mswiniuch/FiveLines2/data/WeatherData;->forecastType:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgLeft:F

    float-to-int p3, p3

    add-int/lit8 p3, p3, -0xa

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgTop:F

    float-to-int p4, p4

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgLeft:F

    float-to-int p5, p5

    add-int/lit8 p5, p5, -0xa

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgTop:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    :goto_5
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    return-void
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mswiniuch/FiveLines2/data/DataType;",
            ">;"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/mswiniuch/FiveLines2/data/DataType;->WEATHER:Lcom/mswiniuch/FiveLines2/data/DataType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlptWeather()Lcom/mswiniuch/FiveLines2/data/WeatherData;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "1"

    const-string v2, "-/-"

    const-string v3, "-/-"

    const-string v4, "n/a"

    const-string v5, "n/a"

    const-string v6, "n/a"

    const-string v7, "n/a"

    const-string v8, "n/a"

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xf

    .line 311
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v10, v9

    div-int/lit16 v10, v10, 0x3e8

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    int-to-long v9, v10

    add-long/2addr v11, v9

    .line 316
    iget-object v15, v0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->mService:Landroid/app/Service;

    invoke-virtual {v15}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v13, "WeatherInfo"

    invoke-static {v15, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 343
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 344
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v17, 0x0

    .line 346
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "tempUnit"

    .line 347
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v1, "temp"

    .line 348
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureIntPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    const-string v2, "weatherCode"

    .line 349
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_9

    :try_start_3
    const-string v15, "time"

    .line 350
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v15, 0x3e8

    div-long v20, v20, v15

    const/4 v15, 0x0

    add-long v17, v20, v9

    const-wide/32 v9, 0x15180

    .line 351
    div-long/2addr v11, v9

    .line 352
    div-long v9, v17, v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v15, 0x0

    sub-long/2addr v11, v9

    long-to-int v9, v11

    const/4 v10, 0x5

    if-le v9, v10, :cond_0

    :try_start_4
    const-string v2, "-/-"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v3, 0x17

    const/16 v19, 0x17

    goto :goto_0

    :catch_0
    move-object v2, v3

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    const/16 v3, 0x17

    const/16 v19, 0x17

    goto/16 :goto_2

    :cond_0
    :try_start_5
    const-string v10, "forecasts"

    .line 359
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 360
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempMax"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureIntPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "tempMin"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureIntPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    const-string v3, "weatherCodeFrom"

    .line 362
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move/from16 v19, v2

    move-object v2, v10

    :goto_0
    :try_start_7
    const-string v9, "city"

    .line 370
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string v4, "sd"

    .line 371
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    const-string v5, "uv"

    .line 372
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    const-string v6, "windDirection"

    .line 373
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    const-string v7, "windStrength"

    .line 374
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    goto :goto_3

    :catch_1
    move-object v9, v4

    :catch_2
    move-object v4, v5

    :catch_3
    move-object v5, v6

    :catch_4
    move-object v6, v7

    goto :goto_2

    :catch_5
    move/from16 v19, v2

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v2, v10

    goto :goto_1

    :catch_6
    move/from16 v19, v2

    move-object v2, v3

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    :goto_1
    const/16 v3, 0x16

    goto :goto_2

    :catch_7
    move-object v13, v1

    :catch_8
    move-object v1, v2

    :catch_9
    move-object v2, v3

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    const/16 v3, 0x16

    const/16 v19, 0x16

    :catch_a
    :goto_2
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    :goto_3
    move-object/from16 v26, v9

    move-object/from16 v21, v13

    move-wide/from16 v31, v17

    move/from16 v1, v19

    if-ltz v1, :cond_2

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    goto :goto_4

    .line 385
    :cond_1
    new-instance v2, Lcom/mswiniuch/FiveLines2/data/WeatherData;

    move-object/from16 v20, v2

    move/from16 v24, v1

    invoke-direct/range {v20 .. v32}, Lcom/mswiniuch/FiveLines2/data/WeatherData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    .line 382
    :cond_2
    :goto_4
    new-instance v1, Lcom/mswiniuch/FiveLines2/data/WeatherData;

    const-string v2, "1"

    const-string v3, "-/-"

    const/16 v4, 0x16

    invoke-direct {v1, v2, v3, v4}, Lcom/mswiniuch/FiveLines2/data/WeatherData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public init(Landroid/app/Service;)V
    .locals 5

    .line 83
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->mService:Landroid/app/Service;

    .line 85
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textLeft:F

    .line 86
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textTop:F

    .line 88
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgLeft:F

    .line 89
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->imgTop:F

    .line 92
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureAlignLeftBool:Z

    .line 95
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureBool:Z

    .line 96
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureBool:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    .line 98
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->textPaint:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->temperatureAlignLeftBool:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityBool:Z

    .line 106
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityBool:Z

    if-eqz v0, :cond_3

    .line 107
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    .line 108
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 110
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 111
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityLeft:F

    .line 113
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->cityTop:F

    .line 117
    :cond_3
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityBool:Z

    .line 118
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityBool:Z

    if-eqz v0, :cond_5

    .line 119
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    .line 120
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityLeft:F

    .line 125
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->humidityTop:F

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvBool:Z

    .line 130
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvBool:Z

    if-eqz v0, :cond_7

    .line 131
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    .line 132
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_3

    :cond_6
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_3
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 136
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050072

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvLeft:F

    .line 137
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050073

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->uvTop:F

    .line 141
    :cond_7
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionBool:Z

    .line 142
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionBool:Z

    if-eqz v0, :cond_9

    .line 143
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    .line 144
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 146
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_4

    :cond_8
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionLeft:F

    .line 149
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionTop:F

    .line 150
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windDirectionAsArrowBool:Z

    .line 154
    :cond_9
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthBool:Z

    .line 155
    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthBool:Z

    if-eqz v0, :cond_b

    .line 156
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    .line 157
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->TEXT_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v1, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 159
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 160
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_5

    :cond_a
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_5
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthLeft:F

    .line 162
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->windStrengthTop:F

    .line 165
    :cond_b
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherBool:Z

    .line 167
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->showUnits:Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    .line 171
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060057

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060051

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060053

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060052

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060055

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weatherImageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDataUpdate(Lcom/mswiniuch/FiveLines2/data/DataType;Ljava/lang/Object;)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->getSlptWeather()Lcom/mswiniuch/FiveLines2/data/WeatherData;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;->weather:Lcom/mswiniuch/FiveLines2/data/WeatherData;

    return-void
.end method
