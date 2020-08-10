.class public Lcom/huami/watch/watchface/sportface/LockScreenLayout;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field private digitalNums:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/sportface/LockScreenLayout;->digitalNums:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 46

    move-object/from16 v0, p0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    new-instance v8, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v9, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v14, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v15, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v15}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    move-object/from16 v16, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    move-object/from16 v17, v2

    new-instance v2, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;-><init>()V

    move-object/from16 v18, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;-><init>()V

    move-object/from16 v19, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v20, v9

    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    move-object/from16 v21, v6

    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v22, v8

    new-instance v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v23, v4

    new-instance v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v24, v3

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    move-object/from16 v25, v5

    new-instance v5, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;-><init>()V

    move-object/from16 v26, v10

    new-instance v10, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;-><init>()V

    move-object/from16 v27, v14

    const/16 v14, 0xa

    move-object/from16 v28, v15

    new-array v15, v14, [[B

    const/4 v14, 0x7

    move-object/from16 v30, v12

    new-array v12, v14, [[B

    invoke-virtual/range {p0 .. p0}, Lcom/huami/watch/watchface/sportface/LockScreenLayout;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    move-object/from16 v32, v11

    const-string v11, "typeface/HUAMI8CSPORT.ttf"

    invoke-static {v14, v11}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    move-object/from16 v34, v11

    const/4 v14, 0x0

    :goto_0
    const/16 v11, 0xa

    if-ge v14, v11, :cond_0

    const-string v11, "guard/shiguanglicheng/watchface_slpt_number_%d.png"

    move-object/from16 v35, v13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v33, 0x0

    aput-object v29, v13, v33

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v13, v35

    goto :goto_0

    :cond_0
    move-object/from16 v35, v13

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v11

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x7

    if-ge v13, v14, :cond_2

    if-eqz v11, :cond_1

    const-string v14, "guard/shiguanglicheng/en/watchface_slpt_number_week_%d.png"

    move/from16 v36, v11

    move-object/from16 v37, v15

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v31, 0x0

    aput-object v29, v15, v31

    :goto_2
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_1
    move/from16 v36, v11

    move-object/from16 v37, v15

    const/4 v11, 0x1

    const/16 v31, 0x0

    const-string v14, "guard/shiguanglicheng/watchface_slpt_number_week_%d.png"

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v15, v31

    goto :goto_2

    :goto_3
    invoke-static {v0, v14}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v36

    move-object/from16 v15, v37

    goto :goto_1

    :cond_2
    move-object/from16 v37, v15

    const/4 v11, 0x1

    invoke-static/range {p0 .. p0}, Lcom/huami/watch/watchface/util/Util;->getMeasurement(Landroid/content/Context;)I

    move-result v13

    if-ne v13, v11, :cond_3

    const-string v11, "guard/shiguanglicheng/en/watchface_slpt_number_km.png"

    :goto_4
    invoke-static {v0, v11}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_5

    :cond_3
    const-string v11, "guard/shiguanglicheng/watchface_slpt_number_km.png"

    goto :goto_4

    :goto_5
    const-string v13, "guard/shiguanglicheng/watchface_slpt_icon_km.png"

    invoke-static {v0, v13}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v13

    const-string v14, "guard/shiguanglicheng/watchface_slpt_number_minus.png"

    invoke-static {v0, v14}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "guard/watchface_slpt_icon_low_power.png"

    invoke-static {v0, v15}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {}, Lcom/huami/watch/watchface/util/Util;->needEnAssets()Z

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v38, v12

    const-string v12, "guard/en/watchface_slpt_text_low_power.png"

    :goto_6
    invoke-static {v0, v12}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v12

    move-object/from16 v39, v1

    goto :goto_7

    :cond_4
    move-object/from16 v38, v12

    const-string v12, "guard/watchface_slpt_text_low_power.png"

    goto :goto_6

    :goto_7
    const-string v1, "guard/shiguanglicheng/watchface_slpt_big_circle.png"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v40, v2

    const-string v2, "guard/shiguanglicheng/watchface_slpt_small_circle.png"

    invoke-static {v0, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v8, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v7, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v4, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v3, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v5, v1}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->setImagePicture([B)V

    invoke-virtual {v10, v2}, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->setImagePicture([B)V

    const-string v1, "guard/malasong/AM.png"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    const-string v1, "guard/malasong/PM.png"

    invoke-static {v0, v1}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v11, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-static {v11}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    move-object/from16 v1, v40

    invoke-virtual {v9, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v9, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v6, v39

    invoke-virtual {v6, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v12, v32

    move-object/from16 v13, v35

    invoke-virtual {v13, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v12, v30

    invoke-virtual {v13, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v12, v27

    move-object/from16 v14, v28

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v14, v26

    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-virtual {v15, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v14, v23

    invoke-virtual {v15, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v41, v10

    move-object/from16 v14, v21

    move-object/from16 v10, v22

    invoke-virtual {v14, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v10, v18

    invoke-virtual {v14, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v10, v17

    invoke-virtual {v10, v15}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v10, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v7, v16

    invoke-virtual {v6, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v6, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v42, v4

    iget-object v4, v6, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->background:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;

    move-object/from16 v43, v3

    const/high16 v3, -0x1000000

    iput v3, v4, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Background;->color:I

    const-string v3, "."

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    const/16 v3, 0xb

    iput-short v3, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/4 v3, 0x1

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerHorizontal:B

    iput-byte v3, v4, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->centerVertical:B

    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v44, v5

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v45, v11

    const/4 v11, -0x1

    invoke-virtual {v4, v3, v11, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setTextAttr(FILandroid/graphics/Typeface;)V

    move-object/from16 v3, v37

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceFView;->setImagePictureArray([[B)Z

    move-object/from16 v1, v19

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/sport/SlptTotalDistanceLView;->setImagePictureArray([[B)Z

    const/16 v1, 0x1d

    const/16 v4, 0xa6

    invoke-virtual {v9, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0xd

    iput-short v1, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->id:S

    const/16 v1, 0x52

    const v5, 0x7ffffffe

    invoke-virtual {v9, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v1, 0x2

    iput-byte v1, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/16 v1, 0x37

    const/16 v5, 0x7f

    invoke-virtual {v8, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v1, 0xe

    iput-short v1, v8, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/high16 v1, 0x43230000    # 163.0f

    move-object/from16 v5, v34

    invoke-virtual {v13, v1, v11, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/high16 v8, -0x10000

    invoke-virtual {v12, v1, v8, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/sportface/LockScreenLayout;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/huami/watch/watchface/sportface/LockScreenLayout;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    const/16 v1, 0x24

    const/16 v5, 0x70

    invoke-virtual {v13, v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0x9e

    invoke-virtual {v12, v5, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {v15, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    invoke-virtual {v14, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    move-object/from16 v1, v38

    invoke-virtual {v7, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    const/16 v1, 0xf

    iput-short v1, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->id:S

    const/16 v1, 0xe0

    invoke-virtual {v7, v1, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    const/16 v3, 0x10

    iput-short v3, v7, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->id:S

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    const/16 v5, 0x84

    if-nez v3, :cond_5

    invoke-virtual {v6, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    move-object/from16 v1, v45

    invoke-virtual {v6, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/16 v3, 0x77

    const/16 v8, 0xe4

    invoke-virtual {v2, v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {v1, v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v1, 0xe2

    const/16 v2, 0x96

    invoke-virtual {v10, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0xe5

    const/16 v2, 0xb7

    invoke-virtual {v7, v1, v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    goto :goto_8

    :cond_5
    invoke-virtual {v10, v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    const/16 v1, 0xe3

    invoke-virtual {v7, v1, v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setStart(II)V

    :goto_8
    const/16 v1, 0xd0

    move-object/from16 v2, v44

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->start_angle:I

    const/16 v3, 0x130

    iput v3, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayStepArcAnglePicView;->full_angle:I

    move-object/from16 v2, v41

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->start_angle:I

    iput v3, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptTodayDistanceArcAnglePicView;->full_angle:I

    const/16 v1, 0x23

    move-object/from16 v2, v43

    invoke-virtual {v2, v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v1, 0x11

    iput-short v1, v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    const/16 v2, 0x2e

    move-object/from16 v3, v42

    invoke-virtual {v3, v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    const/16 v2, 0x12

    iput-short v2, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->id:S

    iput-boolean v1, v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->show:Z

    return-object v6
.end method
