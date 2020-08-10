.class public Lcom/huami/watch/watchface/LifeDigitalSlptClock;
.super Lcom/huami/watch/watchface/AbstractSlptClock;


# instance fields
.field digitalNums:[Ljava/lang/String;


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

    iput-object v0, p0, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 11

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptFrameLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    new-instance v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v8, "nothing.png"

    invoke-static {p0, v8}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v7, v8}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "typeface/DINPro-Black.otf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {p0}, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "typeface/DINPro-Light.otf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    if-nez v8, :cond_1

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_1
    if-nez v9, :cond_2

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_2
    const/4 v10, -0x1

    iput v10, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->textColor:I

    iput v10, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->textColor:I

    iput v10, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->textColor:I

    iput v10, v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->textColor:I

    const v10, 0x42c8199a    # 100.05f

    iput v10, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->textSize:F

    iput v10, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->textSize:F

    iput v10, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->textSize:F

    iput v10, v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->textSize:F

    iput-object v8, v3, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->typeface:Landroid/graphics/Typeface;

    iput-object v8, v4, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->typeface:Landroid/graphics/Typeface;

    iput-object v9, v5, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->typeface:Landroid/graphics/Typeface;

    iput-object v9, v6, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->typeface:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v8, p0, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v8, p0, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setStringPictureArray([Ljava/lang/String;)V

    iget-object v8, p0, Lcom/huami/watch/watchface/LifeDigitalSlptClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setStringPictureArray([Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v1, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v2, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    const/4 v3, 0x0

    iput-byte v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    iput-byte v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->orientation:B

    iget-object v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v4, 0x69

    iput-short v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v3, v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v4, 0x2c

    iput-short v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    iget-object v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v4, 0x6e

    iput-short v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->left:S

    iget-object v3, v2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->padding:Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;

    const/16 v4, 0x88

    iput-short v4, v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent$Padding;->top:S

    invoke-virtual {v0, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v0
.end method
