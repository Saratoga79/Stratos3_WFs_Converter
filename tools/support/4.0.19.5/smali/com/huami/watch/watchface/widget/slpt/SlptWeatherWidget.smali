.class public Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field private iconPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private numPath:Ljava/lang/String;

.field private tempFlag:Ljava/lang/String;

.field private tempString:Ljava/lang/String;

.field private final weatherIconNames:[Ljava/lang/String;

.field private weatherType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    const-string v1, "wf_weather_sunny.png"

    const-string v2, "wf_weather_cloudy.png"

    const-string v3, "wf_weather_overcast.png"

    const-string v4, "wf_weather_fog.png"

    const-string v5, "wf_weather_smog.png"

    const-string v6, "wf_weather_shower.png"

    const-string v7, "wf_weather_thunder_shower.png"

    const-string v8, "wf_weather_light_rain.png"

    const-string v9, "wf_weather_moderate_rain.png"

    const-string v10, "wf_weather_heavy_rain.png"

    const-string v11, "wf_weather_rainstorm.png"

    const-string v12, "wf_weather_torrential_rain.png"

    const-string v13, "wf_weather_sleet.png"

    const-string v14, "wf_weather_freezing_rain.png"

    const-string v15, "wf_weather_hail.png"

    const-string v16, "wf_weather_light_snow.png"

    const-string v17, "wf_weather_moderate_snow.png"

    const-string v18, "wf_weather_heavy_snow.png"

    const-string v19, "wf_weather_snowstorm.png"

    const-string v20, "wf_weather_dust.png"

    const-string v21, "wf_weather_blowing_sand.png"

    const-string v22, "wf_weather_sand_storm.png"

    const-string v23, "wf_weather_unknown.png"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    const-string v1, "--"

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    iget-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    const-string v1, ""

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->iconPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->numPath:Ljava/lang/String;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWeatherData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v8, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIILjava/lang/String;)V

    const-string v9, "wf_weather_sunny.png"

    const-string v10, "wf_weather_cloudy.png"

    const-string v11, "wf_weather_overcast.png"

    const-string v12, "wf_weather_fog.png"

    const-string v13, "wf_weather_smog.png"

    const-string v14, "wf_weather_shower.png"

    const-string v15, "wf_weather_thunder_shower.png"

    const-string v16, "wf_weather_light_rain.png"

    const-string v17, "wf_weather_moderate_rain.png"

    const-string v18, "wf_weather_heavy_rain.png"

    const-string v19, "wf_weather_rainstorm.png"

    const-string v20, "wf_weather_torrential_rain.png"

    const-string v21, "wf_weather_sleet.png"

    const-string v22, "wf_weather_freezing_rain.png"

    const-string v23, "wf_weather_hail.png"

    const-string v24, "wf_weather_light_snow.png"

    const-string v25, "wf_weather_moderate_snow.png"

    const-string v26, "wf_weather_heavy_snow.png"

    const-string v27, "wf_weather_snowstorm.png"

    const-string v28, "wf_weather_dust.png"

    const-string v29, "wf_weather_blowing_sand.png"

    const-string v30, "wf_weather_sand_storm.png"

    const-string v31, "wf_weather_unknown.png"

    filled-new-array/range {v9 .. v31}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    const-string v0, "--"

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    iget-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    const-string v0, ""

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->iconPath:Ljava/lang/String;

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->numPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->iconPath:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->numPath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWeatherData()V

    return-void
.end method

.method private getWeatherData()V
    .locals 4

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WeatherCheckedSummary"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "tempUnit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "weatherCodeFrom"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempFlag:Ljava/lang/String;

    iput-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getModel()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "F"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "C"

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, "--"

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slptWeatherWidget"

    const-string v2, "  handle weather change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 8

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getModel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "datawidget/font/01/"

    goto :goto_0

    :cond_0
    const-string v1, "datawidget/model_4/font/"

    goto :goto_0

    :cond_1
    const-string v1, "datawidget/model_3/8C/num/"

    goto :goto_0

    :cond_2
    const-string v1, "datawidget/font/03/8c/"

    goto :goto_0

    :cond_3
    const-string v1, "datawidget/font/02/"

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->numPath:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->tempString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    aget-char v5, v2, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "minus.png"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huami/watch/watchface/util/Util;->getCharView(Landroid/content/Context;Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v5

    :goto_3
    invoke-virtual {v0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_4

    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "fahrenheit.png"

    goto :goto_2

    :cond_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "C"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "celsius.png"

    goto :goto_2

    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "separator.png"

    goto :goto_2

    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0123456789"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/huami/watch/watchface/util/Util;->getDefaultNumView(Landroid/content/Context;Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptNumView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getDefaultNumMem()[[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptNumView;->setImagePictureArray([[B)Z

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    return-object v0
.end method

.method public getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getModel()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "datawidget/weather/00/8C/"

    goto :goto_0

    :cond_0
    const-string v0, "datawidget/model_4/weather/8C/"

    goto :goto_0

    :cond_1
    const-string v0, "datawidget/weather/03/8C/"

    goto :goto_0

    :cond_2
    const-string v0, "datawidget/weather/02/8C/"

    goto :goto_0

    :cond_3
    const-string v0, "datawidget/weather/01/8C/"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->iconPath:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    iget-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_5

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherIconNames:[Ljava/lang/String;

    iget v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->weatherType:I

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v1
.end method

.method public getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getModel()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->mContext:Landroid/content/Context;

    const-string v1, "datawidget/slpt/watchface_custom_fun_icon_slpt_circle_bg.png"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getY()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getHeight()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    :goto_1
    return-object v2
.end method

.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getModel()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->dataPadLeft:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getY()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getHeight()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    :cond_3
    :goto_0
    return-object v3
.end method

.method public setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->dataPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method

.method public setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->iconPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptWeatherWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method
