.class public Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field private invalidView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    new-instance p2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->invalidView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 4

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getDefaultNumMem()[[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptLastHeartRateView;->setImagePictureArray([[B)Z

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getModel()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v3, "datawidget/--.png"

    :goto_0
    invoke-static {v2, v3}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v3, "datawidget/model_4/font/--.png"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v3, "datawidget/model_3/8C/num/--.png"

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->invalidView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v3, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->invalidView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {v2}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setLastHeartRateInvalidView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->invalidView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    return-object v0
.end method

.method public getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getModel()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_heart_rate.png"

    :goto_0
    invoke-static {v1, v2}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_heart_rate.png"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/model_3/8C/icon/watchface_custom_fun_icon_slpt_heart_rate.png"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_heart_rate_2.png"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

    const-string v2, "datawidget/slpt/watchface_custom_fun_icon_slpt_heart_rate_1.png"

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-object v0
.end method

.method public getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getModel()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getY()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getHeight()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setRect(II)V

    :goto_1
    return-object v2
.end method

.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getDataView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getIconView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getProgressView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getModel()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    invoke-virtual {p0, v1}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->setDataPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

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

    iget v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->dataPadLeft:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getY()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getHeight()I

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

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->dataPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method

.method public setIconPosition(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getY()I

    move-result v1

    iget v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->iconPadTop:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setStart(II)V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptHeartRateWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setRect(II)V

    const/4 v0, 0x2

    iput-byte v0, p1, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->alignX:B

    return-void
.end method
