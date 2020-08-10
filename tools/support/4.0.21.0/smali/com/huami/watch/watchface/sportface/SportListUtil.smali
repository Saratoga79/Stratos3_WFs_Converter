.class public Lcom/huami/watch/watchface/sportface/SportListUtil;
.super Ljava/lang/Object;


# static fields
.field public static final mCrossingInfoOrder:[I

.field public static final mIndoorRunningInfoOrder:[I

.field public static final mMountainInfoOrder:[I

.field public static final mOutdoorRidingInfoOrder:[I

.field public static final mRunningInfoOrder:[I

.field public static final mWalkingInfoOrder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/huami/watch/watchface/sportface/SportListUtil;->mRunningInfoOrder:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/huami/watch/watchface/sportface/SportListUtil;->mWalkingInfoOrder:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/huami/watch/watchface/sportface/SportListUtil;->mCrossingInfoOrder:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/huami/watch/watchface/sportface/SportListUtil;->mIndoorRunningInfoOrder:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/huami/watch/watchface/sportface/SportListUtil;->mOutdoorRidingInfoOrder:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/huami/watch/watchface/sportface/SportListUtil;->mMountainInfoOrder:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x1
        0x2
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public static createAltitudeTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_height.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_height.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_height_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_height_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAltitudeView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAltitudeView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_negative.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAltitudeNegativeView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    const-string p2, "sport/num_invalid.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAltitudeInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createAscendDistanceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_distancerise.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_distancerise.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_distancerise_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_distancerise_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAscendDistanceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendDistanceView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createAscendMeterTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_climb.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_climb.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_climb_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_climb_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAscendMeterView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAscendMeterView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createAvgPaceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_avg_pace.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_avg_pace.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_avg_pace_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_avg_pace_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAvgPaceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 4

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceMView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceSView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceSView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceMView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgPaceSView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_minute.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string p2, "sport/num_second.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createAvgSpeedTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_avg_speed.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_avg_speed.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_avg_speed_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_avg_speed_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAvgSpeedView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedMView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedSView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedSView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedMView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgSpeedSView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_point.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAvgSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createAvgStepFreqTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_avg_frequency.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_avg_frequency.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_avg_frequency_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_avg_frequency_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createAvgStepFreqView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgStepFreqView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgStepFreqView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptAvgStepFreqView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createBackGroudLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v1, "sport/slpt_bg.png"

    invoke-static {p0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public static createCalarieTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_consume.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_consume.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_consume_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_consume_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createCalarieView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptCaloriesView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createDescendDistanceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_decline.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_decline.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_decline_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_decline_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createDescendDistanceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendDistanceView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendDistanceView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendDistanceView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createDescendMeterTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_decline.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_decline.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_decline_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_decline_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createDescendMeterView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptDescendMeterView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createDistanceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_mileage.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_mileage.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_mileage_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_mileage_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createDistanceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceFView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptDistanceLView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_point.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setDistanceSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createHeartrateTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 12

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v7, 0x4

    if-ne p1, v7, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_1

    const-string v7, "sport/en/sport_slpt_heart_rate.png"

    goto :goto_0

    :cond_1
    const-string v7, "sport/sport_slpt_heart_rate.png"

    :goto_0
    invoke-static {p0, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz p2, :cond_2

    const-string v8, "sport/en/sport_slpt_heart_hight.png"

    goto :goto_1

    :cond_2
    const-string v8, "sport/sport_slpt_heart_hight.png"

    :goto_1
    invoke-static {p0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    if-eqz p2, :cond_3

    const-string v9, "sport/en/sport_slpt_heart_burning.png"

    goto :goto_2

    :cond_3
    const-string v9, "sport/sport_slpt_heart_burning.png"

    :goto_2
    invoke-static {p0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, "sport/num_invalid.png"

    invoke-static {p0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    if-eqz p2, :cond_4

    const-string v11, "sport/en/sport_slpt_heart_aerobic.png"

    goto :goto_3

    :cond_4
    const-string v11, "sport/sport_slpt_heart_aerobic.png"

    :goto_3
    invoke-static {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    if-eqz p2, :cond_5

    const-string p2, "sport/en/sport_slpt_heart_strength_hight.png"

    goto :goto_9

    :cond_5
    const-string p2, "sport/sport_slpt_heart_strength_hight.png"

    goto :goto_9

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    const-string v7, "sport/en/sport_slpt_heart_rate.png"

    goto :goto_5

    :cond_7
    const-string v7, "sport/sport_slpt_heart_rate.png"

    :goto_5
    invoke-static {p0, v7}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz p2, :cond_8

    const-string v8, "sport/en/sport_slpt_heart_hight_long.png"

    goto :goto_6

    :cond_8
    const-string v8, "sport/sport_slpt_heart_hight_long.png"

    :goto_6
    invoke-static {p0, v8}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    if-eqz p2, :cond_9

    const-string v9, "sport/en/sport_slpt_heart_burning_long.png"

    goto :goto_7

    :cond_9
    const-string v9, "sport/sport_slpt_heart_burning_long.png"

    :goto_7
    invoke-static {p0, v9}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, "sport/num_invalid.png"

    invoke-static {p0, v10}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    if-eqz p2, :cond_a

    const-string v11, "sport/en/sport_slpt_heart_aerobic_long.png"

    goto :goto_8

    :cond_a
    const-string v11, "sport/sport_slpt_heart_aerobic_long.png"

    :goto_8
    invoke-static {p0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    if-eqz p2, :cond_b

    const-string p2, "sport/en/sport_slpt_heart_strength_hight_long.png"

    goto :goto_9

    :cond_b
    const-string p2, "sport/sport_slpt_heart_strength_hight_long.png"

    :goto_9
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v2, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v3, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v4, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v6, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v5, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateBurningView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateHighView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v4}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v6}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateAerobic(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v5}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setHeartrateStrength(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-static {v1, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    invoke-static {v2, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    invoke-static {v3, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    invoke-static {v6, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    invoke-static {v5, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    invoke-static {v4, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v0
.end method

.method public static createHeartrateView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptHeartRateSview;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createPaceTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_pace.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_pace.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_pace_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_pace_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createPaceView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 4

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceMView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptPaceSView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_minute.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string p2, "sport/num_second.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createSpeedTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_speed.png"

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    const-string p2, "sport/en/sport_slpt_speed_long.png"

    goto :goto_2

    :cond_3
    const-string p2, "sport/sport_slpt_speed_long.png"

    :goto_2
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createSpeedView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedMView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSpeedSView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_point.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createSportStepTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_steps.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_step.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_steps_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_step_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createSportStepView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportStepView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportStepView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportStepView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createSportTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 6

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v5, "sport/num_colon.png"

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const-string v5, "sport/num_colon.png"

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportHView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportMView;->setImagePictureArray([[B)Z

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportSView;->setImagePictureArray([[B)Z

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createSportTimeTitlLayout(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "sport/en/sport_slpt_time.png"

    goto :goto_0

    :cond_0
    const-string v0, "sport/sport_slpt_time.png"

    :goto_0
    invoke-static {p0, v0}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    const/4 p0, 0x0

    const/16 v0, 0x66

    invoke-virtual {v1, p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 p0, 0x140

    const/16 v0, 0x16

    invoke-virtual {v1, p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    const/4 p0, 0x2

    iput-byte p0, v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    return-object v1
.end method

.method public static createStepFreqTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_frequency.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_frequency.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_frequency_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_frequency_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createStepFreqView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 0

    new-instance p0, Lcom/ingenic/iwds/slpt/view/sport/SlptStepFreqView;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/sport/SlptStepFreqView;-><init>()V

    invoke-virtual {p0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptStepFreqView;->setImagePictureArray([[B)Z

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static createSystemTimeLayout(Landroid/content/Context;[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 7

    invoke-static {p0}, Lcom/huami/watch/watchface/sportface/SportListUtil;->getBatteryView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    const-string v6, "sport/time_seq.png"

    invoke-static {p0, v6}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    invoke-virtual {v2, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    invoke-virtual {v4, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    invoke-virtual {v5, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object p1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/4 v1, 0x6

    iput-short v1, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->right:S

    const/4 p1, 0x1

    iput-byte p1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignParentY:B

    const/4 p1, 0x0

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 p1, 0x140

    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    return-object p0
.end method

.method public static createVerticalSpeedTitleView(Landroid/content/Context;IZ)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "sport/en/sport_slpt_vertical.png"

    goto :goto_1

    :cond_1
    const-string p2, "sport/sport_slpt_vertical.png"

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "sport/en/sport_slpt_vertical_long.png"

    goto :goto_1

    :cond_3
    const-string p2, "sport/sport_slpt_vertical_long.png"

    :goto_1
    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V

    return-object v0
.end method

.method public static createVerticalSpeedView(Landroid/content/Context;I[[B)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 4

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedFView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedFView;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedLView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedLView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedFView;->setImagePictureArray([[B)Z

    invoke-virtual {v1, p2}, Lcom/ingenic/iwds/slpt/view/sport/SlptVerticalSpeedLView;->setImagePictureArray([[B)Z

    const-string p2, "sport/num_point.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setVerticalSpeedSeparatorView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    const-string p2, "sport/num_negative.png"

    invoke-static {p0, p2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setVerticalSpeedNegativeView(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;)V

    new-instance p0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {p0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-static {p0, p1}, Lcom/huami/watch/watchface/sportface/SportListUtil;->setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V

    return-object p0
.end method

.method public static getBatteryView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [[B

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    invoke-direct {v2, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const-string v5, "sport/battery_%d.png"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    return-object v2
.end method

.method public static getSlptSportItemCount(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_sport_lock_source"

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSportItemOrder(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport_item_order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseStringToOrder(Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HmSportListUtil"

    const-string v4, "order string "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    const-string v1, "HmSportListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse order string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed, return order as null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :goto_1
    const-string p0, "HmSportListUtil"

    const-string v1, "order null "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static setLayoutPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;I)V
    .locals 6

    const/16 v0, 0x83

    const/16 v1, 0x140

    const/16 v2, 0xa0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x38

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0xdb

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v2, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    :goto_0
    invoke-virtual {p0, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x2b

    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    :goto_2
    iput-byte v4, p0, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setTitlePosition(Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;I)V
    .locals 6

    const/16 v0, 0x9f

    const/16 v1, 0xbe

    const/16 v2, 0x140

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x116

    goto :goto_1

    :pswitch_1
    const/16 p1, 0xa1

    invoke-virtual {p0, p1, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x66

    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {p0, v2, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    :goto_2
    iput-byte v5, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignX:B

    iput-byte v5, p0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignY:B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
