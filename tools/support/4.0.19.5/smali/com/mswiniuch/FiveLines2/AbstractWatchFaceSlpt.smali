.class public abstract Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;
.super Lcom/huami/watch/watchface/AbstractSlptClock;
.source "AbstractWatchFaceSlpt.java"


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

    .line 21
    invoke-direct {p0}, Lcom/huami/watch/watchface/AbstractSlptClock;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;->widgets:Ljava/util/LinkedList;

    .line 22
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;->clock:Lcom/mswiniuch/FiveLines2/widget/ClockWidget;

    .line 23
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;->widgets:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public isClockPeriodSecond()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/AbstractWatchFaceSlpt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
