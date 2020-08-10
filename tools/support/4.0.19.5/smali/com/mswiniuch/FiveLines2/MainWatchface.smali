.class public Lcom/mswiniuch/FiveLines2/MainWatchface;
.super Lcom/mswiniuch/FiveLines2/AbstractWatchFace;
.source "MainWatchface.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
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

    invoke-direct {p0, v0, v1}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;-><init>(Lcom/mswiniuch/FiveLines2/widget/ClockWidget;[Lcom/mswiniuch/FiveLines2/widget/Widget;)V

    return-void
.end method


# virtual methods
.method protected slptClockClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huami/watch/watchface/AbstractSlptClock;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Lcom/mswiniuch/FiveLines2/MainWatchfaceSlpt;

    return-object v0
.end method
