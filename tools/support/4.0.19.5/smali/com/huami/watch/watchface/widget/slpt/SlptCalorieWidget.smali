.class public Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getDefaultNumMem()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptTodayCaloriesView;->setImagePictureArray([[B)Z

    return-object v0
.end method

.method public getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getModel()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_calories.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_calories.png"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/icon/watchface_custom_fun_icon_slpt_calories.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_calories_2.png"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_calories_1.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getModel()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getY()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getHeight()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    :goto_1
    return-object v2
.end method

.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 6

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getModel()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-virtual {v3, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->dataPadLeft:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getY()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getHeight()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iput-byte v5, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v5, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    :goto_0
    return-object v3
.end method

.method public setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->dataPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method

.method public setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->iconPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptCalorieWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method
