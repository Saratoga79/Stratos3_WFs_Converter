.class public Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;
.super Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;
.source "MainWatchfaceSlpt.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;

    invoke-direct {v0}, Lcom/mswiniuch/FiveLines2/widget/MainClock;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mswiniuch/FiveLines2/widget/Widget;

    new-instance v2, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;

    invoke-direct {v2}, Lcom/mswiniuch/FiveLines2/widget/BatteryWidget;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;

    invoke-direct {v2}, Lcom/mswiniuch/FiveLines2/widget/StepsWidget;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;

    invoke-direct {v2}, Lcom/mswiniuch/FiveLines2/widget/WeatherWidget;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;-><init>(Lcom/mswiniuch/FiveLines2/widget/ClockWidget;[Lcom/mswiniuch/FiveLines2/widget/Widget;)V

    return-void
.end method


# virtual methods
.method protected createClockLayout26WC()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 4

    .line 39
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    invoke-interface {v1, p0}, Lcom/mswiniuch/FiveLines2/widget/ClockWidget;->buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 41
    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;->widgets:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mswiniuch/FiveLines2/widget/Widget;

    .line 44
    invoke-interface {v2, p0}, Lcom/mswiniuch/FiveLines2/widget/Widget;->buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 45
    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected createClockLayout8C()Lcom/ingenic/iwds/slpt/view/core/SlptLayout;
    .locals 4

    .line 56
    new-instance v0, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;

    invoke-direct {v0}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    invoke-interface {v1, p0}, Lcom/mswiniuch/FiveLines2/widget/ClockWidget;->buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 58
    invoke-virtual {v0, v2}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;->widgets:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mswiniuch/FiveLines2/widget/Widget;

    .line 61
    invoke-interface {v2, p0}, Lcom/mswiniuch/FiveLines2/widget/Widget;->buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    .line 62
    invoke-virtual {v0, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptAbsoluteLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    goto :goto_1

    :cond_2
    return-object v0
.end method
