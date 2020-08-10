.class public Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field private BATTERY_LEVEL:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getDefaultNumMem()[[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptPowerNumView;->setImagePictureArray([[B)Z

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getPercentView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v0
.end method

.method public getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 7

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getModel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    sget v0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->POWER_LEVLE_MODE_10:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    if-ge v3, v4, :cond_4

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery%d.png"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_0
    sget v0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->POWER_LEVLE_MODE_10:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    if-ge v3, v4, :cond_4

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_battery%d.png"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_1

    :cond_1
    sget v0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->POWER_LEVLE_MODE_10:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    if-ge v3, v4, :cond_4

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "datawidget/model_3/8C/icon/watchface_custom_fun_icon_slpt_battery_%d.png"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_2

    :cond_2
    sget v0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->POWER_LEVLE_MODE_10:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_3
    iget v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    if-ge v3, v4, :cond_4

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery2_%d.png"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_3

    :cond_3
    sget v0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->POWER_LEVEL_MODE_11:I

    iput v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    new-array v0, v0, [[B

    const/4 v3, 0x0

    :goto_4
    iget v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    if-ge v3, v4, :cond_4

    new-array v4, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "datawidget/slpt/watchface_custom_fun_icon_slpt_battery1_%d.png"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_4

    :cond_4
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->BATTERY_LEVEL:I

    invoke-direct {v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptBatteryView;->setImagePictureArray([[B)Z

    return-object v1
.end method

.method public getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getModel()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_circle_r.png"

    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    const-string v3, "datawidget/slpt/watchface_custom_fun_icon_slpt_circle_bg.png"

    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->checkNeed26WC()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/icon/watchface_custom_fun_icon_circle_r.png"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/icon/watchface_custom_fun_icon_slpt_circle_r.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_circle_r_2.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-eqz v3, :cond_3

    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getX()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_3
    if-eqz v1, :cond_4

    new-instance v2, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setImagePicture([B)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getY()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->setRect(II)V

    const/4 v1, 0x0

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->start_angle:I

    const/16 v3, 0x168

    iput v3, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->full_angle:I

    iput v1, v2, Lcom/ingenic/iwds/slpt/view/arc/SlptPowerArcAnglePicView;->len_angle:I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_4
    return-object v0
.end method

.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getModel()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->dataPadLeft:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getY()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getHeight()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v0, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    :goto_0
    return-object v3
.end method

.method public setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->dataPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method

.method public setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->iconPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptPowerWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method
