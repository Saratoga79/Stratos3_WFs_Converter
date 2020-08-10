.class public Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;
.super Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mProgress:F

.field private mTodayDistance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;-><init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIILcom/huami/watch/watchface/widget/ImageFont;)V
    .locals 7

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/huami/watch/watchface/widget/DefaultWatchFaceDataWidget;-><init>(Landroid/content/res/Resources;IIIILcom/huami/watch/watchface/widget/ImageFont;)V

    const-string p2, "0"

    iput-object p2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mTodayDistance:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mProgress:F

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

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_run.png"

    :goto_0
    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeBitmapDrawableFromAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    const-string p2, "datawidget/model_4/icon/watchface_custom_fun_icon_slpt_run.png"

    goto :goto_0

    :cond_1
    const-string p2, "datawidget/model_3/icon/watchface_custom_fun_icon_circle_r.png"

    invoke-static {p1, p2}, Lcom/huami/watch/watchface/util/Util;->decodeImage(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/model_3/icon/watchface_custom_fun_icon_run.png"

    goto :goto_0

    :cond_2
    const p2, 0x7f0200f8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->setProgressBitmap(Landroid/graphics/Bitmap;)V

    const-string p2, "datawidget/icon_android/watchface_custom_fun_icon_run_2.png"

    goto :goto_0

    :cond_3
    const-string p2, "datawidget/slpt/watchface_custom_fun_icon_slpt_run_1.png"

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected getIconDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method protected getProgress()F
    .locals 1

    iget v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mProgress:F

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mTodayDistance:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupportProgress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs onDataUpdate(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    aget-object v0, p2, p1

    if-eqz v0, :cond_3

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->isWithUnit()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    aget-object p2, p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "KM"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MI"

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/huami/watch/watchface/util/Util;->getFormatDistance(D)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mTodayDistance:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_2

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/huami/watch/watchface/widget/TodayDistanceDateWidget;->mProgress:F

    :cond_3
    return-void
.end method
