.class public Lcom/huami/watch/common/widget/HmLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mEnableHalo:Z

.field private mHaloCenterX:F

.field private mHaloCenterY:F

.field private mHaloRadius:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mEnableHalo:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mEnableHalo:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mEnableHalo:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mEnableHalo:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mEnableHalo:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mHaloCenterX:F

    iget v1, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mHaloCenterY:F

    iget v2, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->mHaloRadius:F

    iget-object v3, p0, Lcom/huami/watch/common/widget/HmLinearLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
