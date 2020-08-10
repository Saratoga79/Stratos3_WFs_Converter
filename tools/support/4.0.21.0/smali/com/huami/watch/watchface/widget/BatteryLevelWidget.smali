.class public Lcom/huami/watch/watchface/widget/BatteryLevelWidget;
.super Lcom/huami/watch/watchface/widget/LevelWidget;


# instance fields
.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(II[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/huami/watch/watchface/widget/LevelWidget;-><init>([Landroid/graphics/Bitmap;)V

    iput p1, p0, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;->mX:I

    iput p2, p0, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;->mY:I

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/BatteryLevelWidget;->mY:I

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x0

    if-lez p2, :cond_0

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    int-to-float p2, p2

    div-float v3, v1, p2

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-super {p0, p1, p2}, Lcom/huami/watch/watchface/widget/LevelWidget;->onDataUpdate(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
