.class public Lcom/huami/watch/watchface/widget/WalkDateWidget;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mProgress:F

.field private mWalk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/WalkDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p2, "0"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mWalk:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mProgress:F

    const/4 p2, 0x1

    if-eq p4, p2, :cond_3

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p4, p2, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1

    const/4 p2, 0x4

    if-eq p4, p2, :cond_0

    const p2, 0x7f0200f7

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/WalkDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_walk.png"

    :goto_0
    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    const-string p2, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_walk.png"

    goto :goto_0

    :cond_1
    const-string p2, "datawidget/model_3/icon/watchface_custom_fun_icon_circle_r.png"

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/WalkDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/model_3/icon/watchface_custom_fun_icon_walk.png"

    goto :goto_0

    :cond_2
    const p2, 0x7f0200f8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/WalkDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/icon_android/watchface_custom_fun_icon_walk_2.png"

    goto :goto_0

    :cond_3
    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_walk_1.png"

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mProgress:F

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mWalk:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mWalk:Ljava/lang/String;

    if-lez p2, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/huami/watch/watchface/widget/WalkDateWidget;->mProgress:F

    :cond_0
    return-void
.end method
