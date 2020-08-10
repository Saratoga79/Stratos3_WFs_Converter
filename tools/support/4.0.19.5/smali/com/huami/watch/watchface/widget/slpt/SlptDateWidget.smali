.class public Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;
.super Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;


# instance fields
.field dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huami/watch/watchface/widget/slpt/SlptDefaultWidget;-><init>(Landroid/content/Context;IIIIIZ)V

    new-instance p2, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {p2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->initDefaultWeekMem()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->initDefaultDateMem()V

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHolidayView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;
    .locals 6

    new-instance v0, Lcom/huami/watch/watchface/util/CalendarUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huami/watch/watchface/util/CalendarUtil;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/huami/watch/watchface/util/CalendarUtil;->getHolidayString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    invoke-static {v0}, Lcom/huami/watch/watchface/util/Util;->chinaToUnicode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "holiday string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getModel()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    const-string v0, "datawidget/model_4/week/cn/"

    goto :goto_0

    :cond_1
    const-string v0, "datawidget/font/lunar/"

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/ingenic/iwds/slpt/view/utils/SimpleFile;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    invoke-virtual {v5, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    invoke-virtual {v1, v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    return-object v1
.end method


# virtual methods
.method public getDayView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getDefaultDateMem()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    return-object v0
.end method

.method public getMonthView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 3

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthHView;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getDefaultDateMem()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    return-object v0
.end method

.method public getSeqView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;
    .locals 1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getModel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getMinusView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    const-string v0, "datawidget/model_4/font/dot.png"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getPathView(Ljava/lang/String;)Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->checkNeed26WC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "datawidget/model_3/font/dot.png"

    goto :goto_0

    :cond_0
    const-string v0, "datawidget/model_3/8C/num/dot.png"

    goto :goto_0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getWeekView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 2

    new-instance v0, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getDefaultWeekMem()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;->setImagePictureArray([[B)Z

    return-object v0
.end method

.method public getWidgetView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 7

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getYearView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getMonthView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getDayView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getWeekView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    move-result-object v3

    iget-object v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getHolidayView(Landroid/content/Context;)Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getModel()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getSeqView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :goto_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->weekPadingLeft:I

    invoke-virtual {v3, v0, v6, v6, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;->setPadding(IIII)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v4, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getSeqView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v3, v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getSeqView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_2

    :pswitch_4
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_3

    :goto_2
    :pswitch_6
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getSeqView()Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :pswitch_7
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->dateLayout:Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    iput-byte v1, v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getYearView()Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;
    .locals 5

    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    new-instance v1, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;

    invoke-direct {v1}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;-><init>()V

    new-instance v2, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;-><init>()V

    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;-><init>()V

    new-instance v4, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;

    invoke-direct {v4}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;-><init>()V

    invoke-virtual {v0, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/slpt/SlptDateWidget;->getDefaultDateMem()[[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setImagePictureArrayForAll([[B)V

    return-object v0
.end method
