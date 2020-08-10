.class Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;
.super Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;
.source "AbstractWatchFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mswiniuch/FiveLines2/AbstractWatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitalEngine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

.field private final widget:Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;


# direct methods
.method public constructor <init>(Lcom/mswiniuch/FiveLines2/AbstractWatchFace;Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

    invoke-direct {p0, p1}, Lcom/huami/watch/watchface/AbstractWatchFace$DigitalEngine;-><init>(Lcom/huami/watch/watchface/AbstractWatchFace;)V

    .line 31
    iput-object p2, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->widget:Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;

    return-void
.end method


# virtual methods
.method protected onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 47
    iget-object v1, v0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->widget:Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;

    move-object v2, v15

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;->onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V

    .line 48
    iget-object v1, v0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

    iget-object v1, v1, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->widgets:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/mswiniuch/FiveLines2/widget/Widget;

    .line 49
    invoke-interface {v8}, Lcom/mswiniuch/FiveLines2/widget/Widget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v8}, Lcom/mswiniuch/FiveLines2/widget/Widget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 50
    invoke-interface/range {v1 .. v6}, Lcom/mswiniuch/FiveLines2/widget/Widget;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 51
    invoke-interface {v8}, Lcom/mswiniuch/FiveLines2/widget/Widget;->getX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {v8}, Lcom/mswiniuch/FiveLines2/widget/Widget;->getY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrepareResources(Landroid/content/res/Resources;)V
    .locals 4

    .line 36
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->widget:Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;

    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

    invoke-virtual {p1, v0}, Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;->init(Landroid/app/Service;)V

    .line 37
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

    iget-object p1, p1, Lcom/mswiniuch/FiveLines2/AbstractWatchFace;->widgets:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mswiniuch/FiveLines2/widget/Widget;

    .line 38
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->this$0:Lcom/mswiniuch/FiveLines2/AbstractWatchFace;

    invoke-interface {v0, v1}, Lcom/mswiniuch/FiveLines2/widget/Widget;->init(Landroid/app/Service;)V

    .line 39
    invoke-interface {v0}, Lcom/mswiniuch/FiveLines2/widget/Widget;->getDataTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mswiniuch/FiveLines2/data/DataType;

    .line 40
    new-instance v3, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;

    invoke-direct {v3, v0, v2}, Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListenerAdapter;-><init>(Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;Lcom/mswiniuch/FiveLines2/data/DataType;)V

    invoke-virtual {p0, v3}, Lcom/mswiniuch/FiveLines2/AbstractWatchFace$DigitalEngine;->registerWatchDataListener(Lcom/huami/watch/watchface/WatchDataListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
