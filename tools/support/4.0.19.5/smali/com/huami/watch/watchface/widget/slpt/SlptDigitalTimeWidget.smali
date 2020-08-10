.class public Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field colonView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

.field hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

.field layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field private mContext:Landroid/content/Context;

.field mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

.field minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

.field minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

.field pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIII)V

    new-instance p2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    new-instance p2, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    new-instance p2, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    new-instance p2, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    new-instance p2, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    new-instance p2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->colonView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->colonView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignY:B

    :cond_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignY:B

    :cond_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    iget-object v2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->alignY:B

    :cond_2
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->layout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    return-object v0
.end method

.method public setAPMview([B[B[B)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object v1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v1, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->aView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setAmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    :goto_0
    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {p1, p2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->pView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-static {p1}, Lcom/ingenic/iwds/slpt/view/sport/SlptSportUtil;->setPmBgView(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)V

    :goto_1
    if-nez p3, :cond_2

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    return-void

    :cond_2
    new-instance p1, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->mView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {p1, p3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-void
.end method

.method public setColonView([B)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->colonView:Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    return-void
.end method

.method public setTimeView([[B)V
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourHView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;->setImagePictureArray([[B)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->hourLView:Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;->setImagePictureArray([[B)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteHView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;->setImagePictureArray([[B)Z

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDigitalTimeWidget;->minuteLView:Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-virtual {v0, p1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;->setImagePictureArray([[B)Z

    return-void
.end method
