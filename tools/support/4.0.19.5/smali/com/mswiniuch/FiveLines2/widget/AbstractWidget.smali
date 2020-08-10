.class public abstract Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;
.super Ljava/lang/Object;
.source "AbstractWidget.java"

# interfaces
.implements Lcom/mswiniuch/FiveLines2/widget/Widget;
.implements Lcom/mswiniuch/FiveLines2/data/MultipleWatchDataListener;


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->x:I

    .line 16
    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->y:I

    return-void
.end method


# virtual methods
.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mswiniuch/FiveLines2/data/DataType;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->y:I

    return v0
.end method

.method public init(Landroid/app/Service;)V
    .locals 0

    return-void
.end method

.method public onDataUpdate(Lcom/mswiniuch/FiveLines2/data/DataType;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    float-to-int p2, p2

    float-to-int p3, p3

    .line 53
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/mswiniuch/FiveLines2/widget/AbstractWidget;->y:I

    return-void
.end method
