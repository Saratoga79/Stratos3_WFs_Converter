.class public Lcom/huami/watch/watchface/widget/FatBurnDataWidget;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mCalories:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 7

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p2, "--"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->mCalories:Ljava/lang/String;

    const/4 p2, 0x1

    if-eq p4, p2, :cond_3

    const/4 p2, 0x2

    if-eq p4, p2, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1

    const/4 p2, 0x4

    if-eq p4, p2, :cond_0

    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_calories.png"

    :goto_0
    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    const-string p2, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_calories.png"

    goto :goto_0

    :cond_1
    const-string p2, "datawidget/model_3/icon/watchface_custom_fun_icon_calories.png"

    goto :goto_0

    :cond_2
    const-string p2, "datawidget/icon_android/watchface_custom_fun_icon_calories_2.png"

    goto :goto_0

    :cond_3
    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_calories_1.png"

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    const v0, 0x3f333333    # 0.7f

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->mCalories:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_1

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->isWithUnit()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KCAL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/huami/watch/watchface/widget/FatBurnDataWidget;->mCalories:Ljava/lang/String;

    :cond_1
    return-void
.end method
