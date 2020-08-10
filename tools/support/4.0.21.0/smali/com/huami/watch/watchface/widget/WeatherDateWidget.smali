.class public Lcom/huami/watch/watchface/widget/WeatherDateWidget;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# instance fields
.field private icon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIconPath:Ljava/lang/String;

.field private mLastIconIndex:I

.field private mTempString:Ljava/lang/String;

.field private tempFlag:Ljava/lang/String;

.field private tempString:Ljava/lang/String;

.field private final weatherIconNames:[Ljava/lang/String;

.field private weatherType:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 32

    move-object/from16 v7, p0

    move/from16 v8, p6

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

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

    iput-object v0, v7, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherIconNames:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v7, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherType:I

    const-string v1, "--"

    iput-object v1, v7, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mTempString:Ljava/lang/String;

    iput v0, v7, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mLastIconIndex:I

    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    const/4 v0, 0x2

    if-eq v8, v0, :cond_2

    const/4 v0, 0x3

    if-eq v8, v0, :cond_2

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1

    const/16 v0, 0x13

    if-eq v8, v0, :cond_0

    const-string v0, "datawidget/weather/00/"

    :goto_0
    iput-object v0, v7, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mIconPath:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "datawidget/weather/03/"

    goto :goto_0

    :cond_1
    const-string v0, "datawidget/model_4/weather/"

    goto :goto_0

    :cond_2
    const-string v0, "datawidget/weather/02/"

    goto :goto_0

    :cond_3
    const-string v0, "datawidget/weather/01/"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 8

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;-><init>(Landroid/content/res/Resources;IIIIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method private setWeatherIcon(I)V
    .locals 2

    iget v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mLastIconIndex:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mLastIconIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherIconNames:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->resources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->icon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->icon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->icon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mTempString:Ljava/lang/String;

    return-object v0
.end method

.method protected isAlwaysShowUnit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempFlag:Ljava/lang/String;

    const/4 p1, 0x1

    aget-object v0, p2, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempString:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherType:I

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempString:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->getModel()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempString:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->isAlwaysShowUnit()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempFlag:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempFlag:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "\u2109"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "\u2103"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mTempString:Ljava/lang/String;

    iget p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherType:I

    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherIconNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherIconNames:[Ljava/lang/String;

    array-length p2, p2

    goto :goto_2

    :cond_4
    const-string p2, "--"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->mTempString:Ljava/lang/String;

    iget-object p2, p0, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->weatherIconNames:[Ljava/lang/String;

    array-length p2, p2

    :goto_2
    sub-int/2addr p2, p1

    :goto_3
    invoke-direct {p0, p2}, Lcom/huami/watch/watchface/widget/WeatherDateWidget;->setWeatherIcon(I)V

    :cond_5
    return-void
.end method
