.class public abstract Lcom/mswiniuch/FiveLines2/AbstractWatchFace;
.super Lcom/huami/watch/watchface/AbstractWatchFace;
.source "AbstractWatchFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mswiniuch/FiveLines2/AbstractWatchFace$AnalogEngine;,
        Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;
    }
.end annotation


# instance fields
.field final clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

.field final widgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mswiniuch/FiveLines2/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Lcom/mswiniuch/FiveLines2/widget/ClockWidget;[Lcom/mswiniuch/FiveLines2/widget/Widget;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractWatchFace;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->widgets:Ljava/util/LinkedList;

    .line 88
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    .line 89
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->widgets:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->notifyStatusBarPosition(FF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 101
    invoke-virtual {p0, v0, v0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->notifyStatusBarPosition(FF)V

    .line 104
    :goto_0
    const-class v0, Lcom/mswiniuch/FiveLines2/widget/AnalogClockWidget;

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$AnalogEngine;

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    check-cast v1, Lcom/mswiniuch/FiveLines2/widget/AnalogClockWidget;

    invoke-direct {v0, p0, v1}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$AnalogEngine;-><init>(Lcom/mswiniuch/FiveLines2/AbstractWatchFace;Lcom/mswiniuch/FiveLines2/widget/AnalogClockWidget;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    check-cast v1, Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;

    invoke-direct {v0, p0, v1}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;-><init>(Lcom/mswiniuch/FiveLines2/AbstractWatchFace;Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic onCreateEngine()Landroid/support/wearable/watchface/WatchFaceService$Engine;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->onCreateEngine()Landroid/support/wearable/watchface/CanvasWatchFaceService$Engine;

    move-result-object v0

    return-object v0
.end method
